package org.example;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.sql.*;
import java.util.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * QueryExecutorCategorize (Order-insensitive grouping) — updated to extract S-number
 *
 * Usage:
 *   java QueryExecutorCategorize [inputFile] [perRegOutput] [categoriesOutput]
 *
 * Defaults:
 *   inputFile = dsl/output.txt
 *   perRegOutput = dsl/query_results.txt
 *   categoriesOutput = dsl/categories.txt
 *
 * Behavior additions:
 * - Extracts an S-number from the original input line (pattern `_S123_` or `_S123`).
 * - Uses regId_Snn in category listings and per-reg outputs when S-number exists.
 */
public class QueryExecutor {

    // ----------------- Edit DB details here if needed -----------------
    private static final String DB_URL = "jdbc:postgresql://qaj21.mosip.net:5433/mosip_regprc";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "A__Sj7u8hPhJ71-.";
    // ------------------------------------------------------------------

    // Normalization patterns
    private static final Pattern MULTI_SPACES = Pattern.compile("\\s+");
    private static final Pattern LONG_NUMERIC = Pattern.compile("\\b\\d{4,}\\b");
    private static final Pattern DATE_TIME_PATTERNS = Pattern.compile(
            "\\b\\d{4}[-/]?\\d{2}[-/]?\\d{2}(?:[T\\s]\\d{2}:\\d{2}(?::\\d{2}(?:\\.\\d+)?)?)?\\b");
    private static final Pattern JAVA_STACK_PHRASE = Pattern.compile("\\b([a-zA-Z_][\\w\\.]*\\.[A-Za-z_][\\w]*:\\d+)\\b");
    private static final Pattern ARROWS = Pattern.compile("[-]{2,}>|-->");
    private static final Pattern KER_CODE = Pattern.compile("\\bKER-PUT-(\\d+)\\b", Pattern.CASE_INSENSITIVE);
    private static final Pattern NESTED_EXCEPTION = Pattern.compile("(?i)(nested exception is|caused by)\\b.*", Pattern.DOTALL);

    // Pattern to extract S-number from the original input line, e.g. "..._S164_" or "..._S164"
    private static final Pattern S_NUMBER_PATTERN = Pattern.compile("_S(\\d+)(?:_|$)", Pattern.CASE_INSENSITIVE);

    private static final int MAX_COMMENT_LEN = 400;

    private static String computeDurationLabel(Timestamp start, Timestamp end) {
        if (start == null || end == null) return "0min_0sec";

        long ms = end.getTime() - start.getTime();
        if (ms < 0) ms = 0;

        long seconds = ms / 1000;
        long minutes = seconds / 60;
        long remSeconds = seconds % 60;

        return minutes + "min_" + remSeconds + "sec";
    }
    private static String getTimeTakenForRegId(Connection conn, String regId) throws SQLException {
        String sql = "SELECT MIN(cr_dtimes) AS start_time, MAX(upd_dtimes) AS end_time " +
                "FROM regprc.registration_transaction WHERE reg_id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, regId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    Timestamp start = rs.getTimestamp("start_time");
                    Timestamp end = rs.getTimestamp("end_time");
                    return computeDurationLabel(start, end);
                }
            }
        }
        return "0min_0sec";
    }


    public static void main(String[] args) {
        // Clear dsl folder before every run
        try {
            Path dslDir = Paths.get("dsl");
            if (Files.exists(dslDir)) {
                try (java.util.stream.Stream<Path> files = Files.walk(dslDir)) {
                    files.filter(p -> !p.equals(dslDir))
                         .sorted(java.util.Comparator.reverseOrder())
                         .forEach(p -> { try { Files.delete(p); } catch (IOException ex) { /* ignore */ } });
                }
            }
            Files.createDirectories(dslDir);
        } catch (IOException e) {
            System.err.println("Could not clear dsl folder: " + e.getMessage());
        }

        query();
        String inputFile = args.length > 0 ? args[0] : "dsl/output.txt";
        String perRegOutputFile = args.length > 1 ? args[1] : "dsl/query_results.txt";
        String categoriesFile = args.length > 2 ? args[2] : "dsl/categories.txt";

        // Load driver
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("Postgres JDBC driver not found. Make sure it's on the classpath.");
            e.printStackTrace();
            return;
        }

        // Maps signature -> list of regIds (with S-number suffix when available)
        Map<String, List<String>> signatureToRegIds = new LinkedHashMap<>();
        // Maps signature -> canonical readable description (one representative)
        Map<String, String> signatureToCanonical = new HashMap<>();

        Path inputPath = Paths.get(inputFile);
        if (!Files.exists(inputPath)) {
            System.err.println("Input file not found: " + inputFile);
            return;
        }

        List<String> lines;
        try {
            lines = Files.readAllLines(inputPath);
        } catch (IOException e) {
            System.err.println("Failed to read input file: " + e.getMessage());
            return;
        }

        // For each suffix (e.g. /api-internal.qaj21_S102_context), keep only the latest reg_id.
        // reg_ids contain an embedded timestamp so lexicographic max picks the latest.
        Map<String, String> latestRegIdBySuffix = new LinkedHashMap<>();
        for (String rawLine : lines) {
            if (rawLine == null) continue;
            String line = rawLine.trim();
            if (line.isEmpty()) continue;
            String regId = line.split("/api")[0].trim();
            String suffix = line.substring(regId.length()); // e.g. /api-internal.qaj21_S102_context
            latestRegIdBySuffix.merge(suffix, regId, (existing, next) ->
                    next.compareTo(existing) > 0 ? next : existing);
        }

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
             BufferedWriter regWriter = Files.newBufferedWriter(Paths.get(perRegOutputFile),
                     StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {

            // SQL: adjust LIMIT if you want more rows per reg_id
            String sql = "SELECT trn_type_code, status_code, status_comment " +
                    "FROM regprc.registration_transaction " +
                    "WHERE reg_id = ? ORDER BY cr_dtimes DESC LIMIT 200";

            // SQL for categories grouping — top 2 rows only
            String catSql = "SELECT rt.trn_type_code, rt.status_code, rt.status_comment " +
                    "FROM regprc.registration_transaction AS rt " +
                    "WHERE rt.reg_id = ? ORDER BY rt.cr_dtimes DESC LIMIT 2";

            try (PreparedStatement stmt = conn.prepareStatement(sql);
                 PreparedStatement catStmt = conn.prepareStatement(catSql)) {
                for (String rawLine : lines) {
                    if (rawLine == null) continue;
                    String originalLine = rawLine;
                    String line = rawLine.trim();
                    if (line.isEmpty()) continue;

                    // Extract reg_id (before /api)
                    String regId = line.split("/api")[0].trim();
                    String suffix = line.substring(regId.length());

                    // Extract S-number (if any) from the original line and form regWithS
                    String sNum = extractSNumber(originalLine);
                    String timeTakenLabel = getTimeTakenForRegId(conn, regId);  // NEW LINE

                    String regWithS = regId;
                    if (!sNum.isEmpty()) regWithS += "_" + sNum;

                    regWithS += "_" + timeTakenLabel;  // append timing


                    List<RowData> rows = new ArrayList<>();
                    stmt.setString(1, regId); // query uses pure regId (without S-number)
                    try (ResultSet rs = stmt.executeQuery()) {
                        while (rs.next()) {
                            String trnType = nullSafe(rs.getString("trn_type_code"));
                            String statusCode = nullSafe(rs.getString("status_code"));
                            String statusComment = nullSafe(rs.getString("status_comment"));
                            rows.add(new RowData(trnType, statusCode, statusComment));
                        }
                    } catch (SQLException qex) {
                        // Write error entry and continue
                        regWriter.write("Results for reg_id = " + regWithS);
                        regWriter.newLine();
                        regWriter.write("  ERROR: query failed: " + qex.getMessage());
                        regWriter.newLine();
                        regWriter.newLine();
                        continue;
                    }

                    // Write human-readable per-reg_id results (show regWithS)
                    regWriter.write("Results for reg_id = " + regWithS);
                    regWriter.newLine();
                    if (rows.isEmpty()) {
                        regWriter.write("  No results found.");
                        regWriter.newLine();
                        regWriter.newLine();
                        String sig = "NO_RESULTS";
                        signatureToRegIds.computeIfAbsent(sig, k -> new ArrayList<>()).add(regWithS);
                        signatureToCanonical.putIfAbsent(sig, "No rows returned by query");
                        continue;
                    }
                    for (RowData r : rows) {
                        regWriter.write(String.format("  trn_type_code: %s, status_code: %s, status_comment: %s",
                                r.trnType, r.statusCode, r.statusComment));
                        regWriter.newLine();
                    }
                    regWriter.newLine();

                    // Build order-insensitive signature using top-2 rows for categories grouping.
                    // Skip older duplicates — only the latest reg_id per suffix goes into categories.
                    if (!regId.equals(latestRegIdBySuffix.get(suffix))) continue;

                    List<RowData> catRows = new ArrayList<>();
                    catStmt.setString(1, regId);
                    try (ResultSet catRs = catStmt.executeQuery()) {
                        while (catRs.next()) {
                            catRows.add(new RowData(
                                    nullSafe(catRs.getString("trn_type_code")),
                                    nullSafe(catRs.getString("status_code")),
                                    nullSafe(catRs.getString("status_comment"))));
                        }
                    }
                    String signature = buildSignatureOrderInsensitive(catRows);
                    signatureToRegIds.computeIfAbsent(signature, k -> new ArrayList<>()).add(regWithS);
                    signatureToCanonical.putIfAbsent(signature, buildCanonicalDescriptionOrderInsensitive(catRows));
                }
            }

        } catch (Exception e) {
            System.err.println("Fatal error during DB/query or I/O:");
            e.printStackTrace();
            return;
        }

        // Write categories summary
        try (BufferedWriter catWriter = Files.newBufferedWriter(Paths.get(categoriesFile),
                StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {

            catWriter.write("Category summary (order-insensitive grouping)");
            catWriter.newLine();
            catWriter.newLine();

            // sort categories by descending count
            List<Map.Entry<String, List<String>>> entries = new ArrayList<>(signatureToRegIds.entrySet());
            entries.sort((a, b) -> Integer.compare(b.getValue().size(), a.getValue().size()));

            for (Map.Entry<String, List<String>> e : entries) {
                String sig = e.getKey();
                List<String> regIds = e.getValue();
                String canonical = signatureToCanonical.getOrDefault(sig, sig);

                catWriter.write(String.format("Category (count=%d):", regIds.size()));
                catWriter.newLine();
                catWriter.write("Signature: " + sig);
                catWriter.newLine();
                catWriter.write("Canonical: " + canonical);
                catWriter.newLine();

                catWriter.write("reg_ids (" + regIds.size() + "): ");
                for (int i = 0; i < regIds.size(); i++) {
                    if (i > 0) catWriter.write(", ");
                    catWriter.write(regIds.get(i));
                }
                catWriter.newLine();
                catWriter.write("Count: " + regIds.size());
                catWriter.newLine();
                catWriter.write("------------------------------------------------------------");
                catWriter.newLine();
            }

            catWriter.newLine();
            catWriter.write("Total categories: " + signatureToRegIds.size());
            catWriter.newLine();

            System.out.println("Categories written to " + Paths.get(categoriesFile).toAbsolutePath());
            System.out.println("Per-reg results written to " + Paths.get(perRegOutputFile).toAbsolutePath());
        } catch (IOException ex) {
            System.err.println("Failed to write categories file:");
            ex.printStackTrace();
        }

        // Write Scenarios.txt — scenario numbers extracted from all reg_ids in categories
        String scenariosFile = "dsl/Scenarios.txt";
        try (BufferedWriter scWriter = Files.newBufferedWriter(Paths.get(scenariosFile),
                StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {

            // Collect scenario numbers in insertion order, deduped
            Set<String> seen = new LinkedHashSet<>();
            for (List<String> regIds : signatureToRegIds.values()) {
                for (String regWithS : regIds) {
                    String[] parts = regWithS.split("_");
                    if (parts.length >= 2) seen.add(parts[1]);
                }
            }

            scWriter.write(String.join(",", seen));
            scWriter.newLine();

            System.out.println("Scenarios written to " + Paths.get(scenariosFile).toAbsolutePath());
        } catch (IOException ex) {
            System.err.println("Failed to write scenarios file:");
            ex.printStackTrace();
        }
    }

    // ---------------- utility methods ----------------

    private static String nullSafe(String s) {
        return s == null ? "" : s;
    }

    // Order-insensitive signature: produce normalized strings for each row, sort them, join.
    private static String buildSignatureOrderInsensitive(List<RowData> rows) {
        List<String> pieces = new ArrayList<>();
        for (RowData r : rows) {
            String nc = normalizeComment(r.statusComment);
            String piece = safe(r.trnType) + "|" + safe(r.statusCode) + "|" + nc;
            pieces.add(piece);
        }
        Collections.sort(pieces);
        return String.join(";;", pieces);
    }

    // Canonical description: sorted first N pieces (friendly display)
    private static String buildCanonicalDescriptionOrderInsensitive(List<RowData> rows) {
        List<String> pieces = new ArrayList<>();
        for (RowData r : rows) {
            String piece = safe(r.trnType) + "|" + safe(r.statusCode) + "|" + normalizeCommentForDisplay(r.statusComment);
            pieces.add(piece);
        }
        Collections.sort(pieces);
        int limit = Math.min(5, pieces.size());
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < limit; i++) {
            if (i > 0) sb.append(" ; ");
            sb.append(pieces.get(i));
        }
        if (pieces.size() > limit) sb.append(" ... (").append(pieces.size()).append(" rows)");
        return sb.toString();
    }

    // Normalize comment for signature (removes variable parts)
    private static String normalizeComment(String comment) {
        if (comment == null) return "";

        // remove nested exception text (we keep only the brief first part)
        String c = NESTED_EXCEPTION.matcher(comment).replaceAll("");

        // normalize KER codes to KER-PUT-<N>
        c = KER_CODE.matcher(c).replaceAll("KER-PUT-<N>");

        // remove java-like stack references and file:line tokens
        c = JAVA_STACK_PHRASE.matcher(c).replaceAll("");

        // replace date/time patterns
        c = DATE_TIME_PATTERNS.matcher(c).replaceAll("<TS>");

        // replace long numeric sequences (likely reg ids/timestamps) with placeholder
        c = LONG_NUMERIC.matcher(c).replaceAll("<NUM>");

        // collapse arrows
        c = ARROWS.matcher(c).replaceAll("->");

        // collapse whitespace
        c = MULTI_SPACES.matcher(c).replaceAll(" ").trim();

        // truncate to safe length for signature
        if (c.length() > MAX_COMMENT_LEN) {
            c = c.substring(0, MAX_COMMENT_LEN) + "...";
        }

        return c;
    }

    private static String normalizeCommentForDisplay(String comment) {
        if (comment == null) return "";
        String c = normalizeComment(comment);
        if (c.length() > 200) c = c.substring(0, 200) + "...";
        return c;
    }

    private static String safe(String s) {
        return s == null ? "" : s;
    }

    // Extract S-number (e.g. _S164_ or _S164 at end) from the original line
    private static String extractSNumber(String line) {
        if (line == null) return "";
        Matcher m = S_NUMBER_PATTERN.matcher(line);
        if (m.find()) {
            return m.group(1);
        }
        return "";
    }

    // Row holder
    private static class RowData {
        String trnType;
        String statusCode;
        String statusComment;

        RowData(String trnType, String statusCode, String statusComment) {
            this.trnType = trnType;
            this.statusCode = statusCode;
            this.statusComment = statusComment;
        }
    }

    public static void query() {
        // Input file and output file
//        String inputFile = "";
        String inputFile = "C:\\Users\\kames\\Downloads\\mosip\\automation_report\\DSL-api-internal.qaj21-full-error-1780880730781-report_T-230_P-175_S-0_F-27.html"; // Corrected path
        String outputFile = "dsl/output.txt";   // output file

        // Regex: capture value after /status/ ... until ) 
        String urlPattern =
                "End Point URL: http://packetcreator.packetcreator:80/v1/packetcreator/resident/status/([^/]+/api-internal\\.qaj21_S\\d+_context)\\)";
        Pattern pattern = Pattern.compile(urlPattern);

        try {
            java.util.List<String> lines = Files.readAllLines(Paths.get(inputFile));
            boolean found = false;

            for (String line : lines) {
                // We only care about lines that contain "Failed at Packet Processing"
                if (line.contains("Failed at Packet Processing")) {
                    Matcher matcher = pattern.matcher(line);

                    if (matcher.find()) {
                        String extractedValue = matcher.group(1);

                        // Write to dsl/output.txt
                        Path outputPath = Paths.get(outputFile).toAbsolutePath();
                        Files.createDirectories(outputPath.getParent());
                        try (BufferedWriter writer = Files.newBufferedWriter(outputPath,
                                StandardOpenOption.CREATE, StandardOpenOption.APPEND)) {
                            writer.write(extractedValue);
                            writer.newLine();
                        }

                        System.out.println("Extracted: " + extractedValue);
                        System.out.println("Output written to: " + outputPath);
                        found = true;
                    }
                }
            }

            if (!found) {
                System.out.println("No matching pattern found.");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
