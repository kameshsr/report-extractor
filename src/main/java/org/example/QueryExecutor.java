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
 *   inputFile = output.txt
 *   perRegOutput = query_results.txt
 *   categoriesOutput = categories.txt
 *
 * Behavior additions:
 * - Extracts an S-number from the original input line (pattern `_S123_` or `_S123`).
 * - Uses regId_Snn in category listings and per-reg outputs when S-number exists.
 */
public class QueryExecutor {

    // ----------------- Edit DB details here if needed -----------------
    private static final String DB_URL = "jdbc:postgresql://devupgrade.mosip.net:5433/mosip_regprc";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "&r5U7Fn0%a!T$m6M";
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

    public static void main(String[] args) {
        String inputFile = args.length > 0 ? args[0] : "output.txt";
        String perRegOutputFile = args.length > 1 ? args[1] : "query_results.txt";
        String categoriesFile = args.length > 2 ? args[2] : "categories.txt";

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

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
             BufferedWriter regWriter = Files.newBufferedWriter(Paths.get(perRegOutputFile),
                     StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {

            List<String> lines = Files.readAllLines(inputPath);

            // SQL: adjust LIMIT if you want more rows per reg_id
            String sql = "SELECT trn_type_code, status_code, status_comment " +
                    "FROM regprc.registration_transaction " +
                    "WHERE reg_id = ? ORDER BY cr_dtimes DESC LIMIT 200";

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                for (String rawLine : lines) {
                    if (rawLine == null) continue;
                    String originalLine = rawLine;
                    String line = rawLine.trim();
                    if (line.isEmpty()) continue;

                    // Extract reg_id (before /api)
                    String regId = line.split("/api")[0].trim();

                    // Extract S-number (if any) from the original line and form regWithS
                    String sNum = extractSNumber(originalLine);
                    String regWithS = sNum.isEmpty() ? regId : regId + "_" + sNum;

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

                    // Build order-insensitive signature (based on the DB rows)
                    String signature = buildSignatureOrderInsensitive(rows);
                    signatureToRegIds.computeIfAbsent(signature, k -> new ArrayList<>()).add(regWithS);
                    signatureToCanonical.putIfAbsent(signature, buildCanonicalDescriptionOrderInsensitive(rows));
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

                catWriter.write("Sample reg_ids: ");
                for (int i = 0; i < Math.min(10, regIds.size()); i++) {
                    if (i > 0) catWriter.write(", ");
                    catWriter.write(regIds.get(i));
                }
                catWriter.newLine();
                catWriter.write("All reg_ids count: " + regIds.size());
                catWriter.newLine();
                catWriter.write("------------------------------------------------------------");
                catWriter.newLine();
            }

            catWriter.newLine();
            catWriter.write("Total categories: " + signatureToRegIds.size());
            catWriter.newLine();

            System.out.println("Categories written to " + Paths.get(categoriesFile).toAbsolutePath());
            System.out.println("Per-reg results written to " + Paths.get("query_results.txt").toAbsolutePath());
        } catch (IOException ex) {
            System.err.println("Failed to write categories file:");
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
}
