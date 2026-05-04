package org.example;

import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.services.sheets.v4.Sheets;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.api.services.sheets.v4.model.*;
import com.google.auth.http.HttpCredentialsAdapter;
import com.google.auth.oauth2.GoogleCredentials;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.sql.*;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.net.ProxySelector;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.*;

/**
 * MultiDbCsvExporter
 *
 * Runs one SQL query against each of 3 configured databases and writes all
 * results combined into a single CSV file.
 *
 * Edit the DB_CONFIGS and QUERIES arrays below to configure your databases
 * and queries. Every query must return the same column names/types so that
 * a single CSV header makes sense; an extra "source_db" column is prepended
 * to each row so you can tell which database each row came from.
 *
 * Output file: multi_db_export.csv (configurable via OUTPUT_CSV constant)
 */
public class MultiDbCsvExporter {

    // -----------------------------------------------------------------------
    // CONFIGURATION — edit these values to match your databases and queries
    // -----------------------------------------------------------------------

    private static final String DB_HOST = "jdbc:postgresql://172.31.13.251:5432";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "DB_PASS_REDACTED";

    /**
     * Set to false to skip a query/DB in this run.
     * Index matches DB_CONFIGS / QUERIES (0 = regprc, 1 = credential, 2 = ida).
     * Example — run only query 2: { false, true, false }
     */
    private static final boolean[] ENABLED_QUERIES = { true, true, true };

    /** One entry per database: {jdbcUrl, user, password, displayLabel} */
    private static final String[][] DB_CONFIGS = {
        {
            DB_HOST + "/mosip_regprc",    // DB 1 URL
            DB_USER, DB_PASS,
            "DB1_regprc"                  // label shown in CSV
        },
        {
            DB_HOST + "/mosip_credential", // DB 2 URL
            DB_USER, DB_PASS,
            "DB2_credential"              // label shown in CSV
        },
        {
            DB_HOST + "/mosip_ida",       // DB 3 URL
            DB_USER, DB_PASS,
            "DB3_ida"                     // label shown in CSV
        }
    };

    // -----------------------------------------------------------------------
    // TIME RANGE — UPLOAD_START_TIME and START_TIME are fixed; endTime is fetched at runtime from DB1
    // -----------------------------------------------------------------------
    private static final String UPLOAD_START_TIME = "2026-05-04 13:11:00.000"; 
    private static final String START_TIME        = "2026-05-04 13:20:00.000"; // processing start 
    private static final String change = "Restarted redis server";
    // -----------------------------------------------------------------------

    /** One SQL query per database (index matches DB_CONFIGS above). */
    private static String[] QUERIES;

    private static String[] buildQueries(String endTime) {
        return new String[]{

            // Query for DB 1 (mosip_regprc)
            "WITH params AS (\n" +
            "    SELECT \n" +
            "        TIMESTAMP '" + START_TIME + "' AS start_time,\n" +
            "        TIMESTAMP '" + endTime   + "' AS end_time\n" +
            "),\n" +
            "\n" +
            "base AS (\n" +
            "    SELECT\n" +
            "        date_trunc('hour', rt.cr_dtimes)\n" +
            "        + (EXTRACT(minute FROM rt.cr_dtimes)::int / 10) * INTERVAL '10 minutes' AS interval_start,\n" +
            "        rt.trn_type_code,\n" +
            "        rt.status_code\n" +
            "    FROM regprc.registration_transaction rt\n" +
            "    JOIN params p \n" +
            "      ON rt.cr_dtimes >= p.start_time \n" +
            "     AND rt.cr_dtimes <  p.end_time\n" +
            "),\n" +
            "\n" +
            "abis_req AS (\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ar.cr_dtimes)\n" +
            "        + (EXTRACT(minute FROM ar.cr_dtimes)::int / 10) * INTERVAL '10 minutes' AS interval_start,\n" +
            "        COUNT(*) AS abis_request_count\n" +
            "    FROM abis_request ar\n" +
            "    JOIN params p \n" +
            "      ON ar.cr_dtimes >= p.start_time \n" +
            "     AND ar.cr_dtimes <  p.end_time\n" +
            "    GROUP BY interval_start\n" +
            "),\n" +
            "\n" +
            "abis_res AS (\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ar.cr_dtimes)\n" +
            "        + (EXTRACT(minute FROM ar.cr_dtimes)::int / 10) * INTERVAL '10 minutes' AS interval_start,\n" +
            "        COUNT(*) AS abis_response_count\n" +
            "    FROM abis_response ar\n" +
            "    JOIN params p \n" +
            "      ON ar.cr_dtimes >= p.start_time \n" +
            "     AND ar.cr_dtimes <  p.end_time\n" +
            "    GROUP BY interval_start\n" +
            ")\n" +
            "\n" +
            "SELECT\n" +
            "    b.interval_start,\n" +
            "\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'SECUREZONE_NOTIFICATION')  AS \"SECUREZONE_NOTIFICATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'UPLOAD_PACKET')            AS \"UPLOAD_PACKET\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'VALIDATE_PACKET')          AS \"VALIDATE_PACKET\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'PACKET_CLASSIFICATION')    AS \"PACKET_CLASSIFICATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'CMD_VALIDATION')           AS \"CMD_VALIDATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'OPERATOR_VALIDATION')      AS \"OPERATOR_VALIDATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'SUPERVISOR_VALIDATION')    AS \"SUPERVISOR_VALIDATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'QUALITY_CLASSIFIER')       AS \"QUALITY_CLASSIFIER\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'DEMOGRAPHIC_VERIFICATION') AS \"DEMOGRAPHIC_VERIFICATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'BIOGRAPHIC_VERIFICATION')  AS \"BIOGRAPHIC_VERIFICATION\",\n" +
            "\n" +
            "    COUNT(*) FILTER (\n" +
            "        WHERE b.trn_type_code = 'BIOGRAPHIC_VERIFICATION'\n" +
            "          AND b.status_code = 'IN_PROGRESS'\n" +
            "    ) AS \"BIOGRAPHIC_IN_PROGRESS\",\n" +
            "\n" +
            "    COALESCE(MAX(r.abis_request_count), 0)  AS \"ABIS_REQUEST\",\n" +
            "    COALESCE(MAX(s.abis_response_count), 0) AS \"ABIS_RESPONSE\",\n" +
            "\n" +
            "    COUNT(*) FILTER (\n" +
            "        WHERE b.trn_type_code = 'BIOGRAPHIC_VERIFICATION'\n" +
            "          AND b.status_code = 'SUCCESS'\n" +
            "    ) AS \"BIOGRAPHIC_SUCCESS\",\n" +
            "\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'UIN_GENERATOR')            AS \"UIN_GENERATOR\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'BIOMETRIC_EXTRACTION')     AS \"BIOMETRIC_EXTRACTION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'FINALIZATION')             AS \"FINALIZATION\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'PRINT_SERVICE')            AS \"PRINT_SERVICE\",\n" +
            "    COUNT(*) FILTER (WHERE b.trn_type_code = 'INTERNAL_WORKFLOW_ACTION') AS \"INTERNAL_WORKFLOW_ACTION\"\n" +
            "\n" +
            "FROM base b\n" +
            "LEFT JOIN abis_req r ON b.interval_start = r.interval_start\n" +
            "LEFT JOIN abis_res s ON b.interval_start = s.interval_start\n" +
            "\n" +
            "GROUP BY b.interval_start\n" +
            "ORDER BY b.interval_start;\n",

            // Query for DB 2 (mosip_credential)
            "SELECT\n" +
            "    interval_start,\n" +
            "\n" +
            "    COUNT(*) FILTER (WHERE stage = 'NEW')     / 2 AS new_count,\n" +
            "    COUNT(*) FILTER (WHERE stage = 'ISSUED')  / 2 AS issued_count,\n" +
            "    COUNT(*) FILTER (WHERE stage = 'STORED')  / 2 AS stored_count,\n" +
            "    COUNT(*) FILTER (WHERE stage = 'FAILED')  / 2 AS failed_count\n" +
            "\n" +
            "FROM (\n" +
            "    -- NEW\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ct.cr_dtimes)\n" +
            "        + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM ct.cr_dtimes)/10)*10),\n" +
            "        'NEW' AS stage\n" +
            "    FROM credential.credential_transaction ct\n" +
            "    WHERE ct.cr_dtimes BETWEEN '" + START_TIME + "' AND '" + endTime + "'\n" +
            "      AND ct.cr_by NOT IN (\n" +
            "          'service-account-mosip-regproc-client',\n" +
            "          'service-account-mosip-resident-client'\n" +
            "      )\n" +
            "\n" +
            "    UNION ALL\n" +
            "\n" +
            "    -- ISSUED\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ct.issuancedate)\n" +
            "        + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM ct.issuancedate)/10)*10),\n" +
            "        'ISSUED'\n" +
            "    FROM credential.credential_transaction ct\n" +
            "    WHERE ct.issuancedate BETWEEN '" + START_TIME + "' AND '" + endTime + "'\n" +
            "      AND ct.cr_by NOT IN (\n" +
            "          'service-account-mosip-regproc-client',\n" +
            "          'service-account-mosip-resident-client'\n" +
            "      )\n" +
            "\n" +
            "    UNION ALL\n" +
            "\n" +
            "    -- STORED\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ct.upd_dtimes)\n" +
            "        + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM ct.upd_dtimes)/10)*10),\n" +
            "        'STORED'\n" +
            "    FROM credential.credential_transaction ct\n" +
            "    WHERE ct.upd_dtimes BETWEEN '" + START_TIME + "' AND '" + endTime + "'\n" +
            "      AND ct.cr_by NOT IN (\n" +
            "          'service-account-mosip-regproc-client',\n" +
            "          'service-account-mosip-resident-client'\n" +
            "      )\n" +
            "\n" +
            "    UNION ALL\n" +
            "\n" +
            "    -- FAILED\n" +
            "    SELECT\n" +
            "        date_trunc('hour', ct.upd_dtimes)\n" +
            "        + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM ct.upd_dtimes)/10)*10),\n" +
            "        'FAILED'\n" +
            "    FROM credential.credential_transaction ct\n" +
            "    WHERE ct.upd_dtimes BETWEEN '" + START_TIME + "' AND '" + endTime + "'\n" +
            "      AND ct.status_code IN ('ERROR', 'FAILED')\n" +
            "      AND ct.cr_by NOT IN (\n" +
            "          'service-account-mosip-regproc-client',\n" +
            "          'service-account-mosip-resident-client'\n" +
            "      )\n" +
            "\n" +
            ") t(interval_start, stage)\n" +
            "\n" +
            "GROUP BY interval_start\n" +
            "ORDER BY interval_start;",

            // Query for DB 3 (mosip_ida)
            "SELECT\n" +
            "    date_trunc('hour', cr_dtimes)\n" +
            "    + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM cr_dtimes) / 10) * 10)\n" +
            "    AS interval_start,\n" +
            "\n" +
            "    COUNT(*) / 2 AS total_in_identity_cache_table\n" +
            "\n" +
            "FROM ida.identity_cache\n" +
            "\n" +
            "WHERE cr_dtimes BETWEEN '" + START_TIME + "' AND '" + endTime + "'\n" +
            "\n" +
            "GROUP BY interval_start\n" +
            "ORDER BY interval_start;"
        };
    }

    /** Folder where all CSV reports are written. */
    private static final String REPORT_DIR = "report";

    // -----------------------------------------------------------------------

    public static void main(String[] args) {
        // Build output path: report/10_min_report_<yyyyMMdd>_<HHmmss>.csv
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
        Path reportDir = Paths.get(REPORT_DIR);
        String outputFile = args.length > 0
                ? args[0]
                : reportDir.resolve("10_min_report_" + timestamp + ".csv").toString();

        // Ensure report directory exists
        try {
            Files.createDirectories(reportDir);
        } catch (IOException e) {
            System.err.println("Could not create report directory: " + e.getMessage());
            return;
        }

        // Delete existing file at that path (safeguard if name is overridden via arg)
        try {
            Files.deleteIfExists(Paths.get(outputFile));
        } catch (IOException e) {
            System.err.println("Could not delete existing output file: " + e.getMessage());
            return;
        }

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("PostgreSQL JDBC driver not found on classpath.");
            e.printStackTrace();
            return;
        }

//        String endTime = "2026-04-28 11:10:00.000";
        String endTime = fetchEndTime();
        if (endTime == null) {
            System.err.println("Could not determine END_TIME from DB1 — aborting.");
            return;
        }
        System.out.println("END_TIME (from DB1): " + endTime);
        QUERIES = buildQueries(endTime);

        // Fetch FAILED / REPROCESS reg details for end-of-report sections
        List<String[]> failedDetails    = fetchRegDetailsByStatus("FAILED");
        List<String[]> reprocessDetails = fetchRegDetailsByStatus("REPROCESS");

        // Fetch registration status counts (summary header block)
        List<String[]> statusCounts = fetchRegistrationStatusCounts(UPLOAD_START_TIME);

        // Duration = endTime − START_TIME (processing start)
        String durationStr;
        try {
            LocalDateTime endDT   = Timestamp.valueOf(endTime).toLocalDateTime();
            LocalDateTime startDT = Timestamp.valueOf(START_TIME).toLocalDateTime();
            Duration dur = Duration.between(startDT, endDT);
            durationStr = dur.toHours() + "h " + dur.toMinutesPart() + "m " + dur.toSecondsPart() + "s";
        } catch (Exception e) {
            durationStr = "N/A";
        }

        if (DB_CONFIGS.length != QUERIES.length) {
            System.err.println("DB_CONFIGS and QUERIES arrays must have the same length.");
            return;
        }

        // Phase 1: query each DB and load results into memory keyed by interval_start.
        // Column 1 of every query is assumed to be interval_start; remaining cols are data.
        List<List<String>> dbColNames = new ArrayList<>();        // column names per DB (excluding interval_start)
        List<Map<String, String[]>> dbData = new ArrayList<>();   // interval_start -> data columns per DB
        Set<String> allIntervals = new TreeSet<>();                // sorted union of all interval_start values

        for (int i = 0; i < DB_CONFIGS.length; i++) {
            if (!ENABLED_QUERIES[i]) {
                dbColNames.add(new ArrayList<>());
                dbData.add(new LinkedHashMap<>());
                continue;
            }
            String url      = DB_CONFIGS[i][0];
            String user     = DB_CONFIGS[i][1];
            String password = DB_CONFIGS[i][2];
            String label    = DB_CONFIGS[i][3];
            String query    = QUERIES[i];

            System.out.printf("Connecting to %s (%s)...%n", label, url);

            List<String> colNames = new ArrayList<>();
            Map<String, String[]> rows = new LinkedHashMap<>();

            try (Connection conn = DriverManager.getConnection(url, user, password);
                 PreparedStatement stmt = conn.prepareStatement(query);
                 ResultSet rs = stmt.executeQuery()) {

                ResultSetMetaData meta = rs.getMetaData();
                int colCount = meta.getColumnCount();

                // Collect column names (skip col 1 = interval_start)
                for (int c = 2; c <= colCount; c++) {
                    colNames.add(meta.getColumnLabel(c));
                }

                while (rs.next()) {
                    String intervalKey = rs.getString(1);
                    String[] vals = new String[colCount - 1];
                    for (int c = 2; c <= colCount; c++) {
                        String v = rs.getString(c);
                        vals[c - 2] = (v == null) ? "" : v;
                    }
                    rows.put(intervalKey, vals);
                    allIntervals.add(intervalKey);
                }

                System.out.printf("  -> %d row(s) loaded from %s%n", rows.size(), label);

            } catch (SQLException e) {
                System.err.printf("ERROR querying %s: %s%n", label, e.getMessage());
            }

            dbColNames.add(colNames);
            dbData.add(rows);
        }

        // Phase 2: write combined CSV — one row per interval_start, DB columns side by side.
        try (BufferedWriter writer = Files.newBufferedWriter(
                Paths.get(outputFile),
                StandardOpenOption.CREATE,
                StandardOpenOption.TRUNCATE_EXISTING)) {

            // --- Summary block at the top ---
            // Row 1: labels in one row
            writer.write(escapeCsv("Upload Start Time") + "," +
                         escapeCsv("Processing Start Time") + "," +
                         escapeCsv("End Time") + "," +
                         escapeCsv("Duration (End - Processing Start)"));
            writer.newLine();
            // Row 2: values in one row
            writer.write(escapeCsv(UPLOAD_START_TIME) + "," +
                         escapeCsv(START_TIME) + "," +
                         escapeCsv(endTime) + "," +
                         escapeCsv(durationStr));
            writer.newLine();
            // Notes
            writer.write(escapeCsv("Notes") + "," + escapeCsv(change));
            writer.newLine();
            // blank
            writer.newLine();

            // Row 4: registration status_codes as column headers + TOTAL
            long totalStatusCount = 0;
            for (String[] sc : statusCounts) {
                try { totalStatusCount += Long.parseLong(sc[1]); } catch (NumberFormatException ignored) {}
            }
            StringBuilder statusHeaders = new StringBuilder();
            for (int s = 0; s < statusCounts.size(); s++) {
                if (s > 0) statusHeaders.append(",");
                statusHeaders.append(escapeCsv(statusCounts.get(s)[0]));
            }
            statusHeaders.append(",").append(escapeCsv("TOTAL"));
            writer.write(statusHeaders.toString()); writer.newLine();
            // Row 5: counts + total
            StringBuilder statusValues = new StringBuilder();
            for (int s = 0; s < statusCounts.size(); s++) {
                if (s > 0) statusValues.append(",");
                statusValues.append(escapeCsv(statusCounts.get(s)[1]));
            }
            statusValues.append(",").append(escapeCsv(String.valueOf(totalStatusCount)));
            writer.write(statusValues.toString()); writer.newLine();
            // Row 6: blank separator before main table
            writer.newLine();

            // Pre-compute which 1-based columns are data columns (not interval_start or source_db).
            // Layout: col1=interval_start, then per DB: source_db | data cols...
            int totalCols = 1; // interval_start
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                totalCols += 1 + dbColNames.get(i).size();
            }
            boolean[] isDataCol = new boolean[totalCols + 1]; // 1-based, false = skip in SUM row
            int ci = 2; // col 1 is interval_start (not a data col)
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                ci++; // source_db — not a data col
                for (int j = 0; j < dbColNames.get(i).size(); j++) {
                    isDataCol[ci++] = true;
                }
            }

            // Row 7: main data header
            writer.write(escapeCsv("interval_start"));
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                writer.write(",");
                writer.write(escapeCsv("source_db"));
                for (String col : dbColNames.get(i)) {
                    writer.write(",");
                    writer.write(escapeCsv(col));
                }
            }
            writer.newLine();

            // Data rows start at row 8 (6 fixed summary rows + 1 blank + 1 main header)
            int firstDataRow = 8;
            int rowNum = firstDataRow;
            for (String interval : allIntervals) {
                writer.write(escapeCsv(interval));
                for (int i = 0; i < DB_CONFIGS.length; i++) {
                    if (!ENABLED_QUERIES[i]) continue;
                    String label   = DB_CONFIGS[i][3];
                    String[] row   = dbData.get(i).get(interval);
                    int colCount   = dbColNames.get(i).size();
                    writer.write(",");
                    writer.write(escapeCsv(label));
                    if (row != null) {
                        for (String v : row) {
                            writer.write(",");
                            writer.write(escapeCsv(v));
                        }
                    } else {
                        for (int c = 0; c < colCount; c++) {
                            writer.write(",");
                            writer.write(escapeCsv(""));
                        }
                    }
                }
                writer.newLine();
                rowNum++;
            }

            // SUM row — one row below the last data row, summing each data column
            int lastDataRow = rowNum - 1;
            writer.write(escapeCsv("TOTAL"));
            for (int col = 2; col <= totalCols; col++) {
                writer.write(",");
                if (isDataCol[col]) {
                    String colLetter = toExcelCol(col);
                    writer.write("=SUM(" + colLetter + firstDataRow + ":" + colLetter + lastDataRow + ")");
                } else {
                    writer.write(escapeCsv(""));
                }
            }
            writer.newLine();

            // --- Error category summary (FAILED + REPROCESS combined) ---
            writeErrorSummary(writer, failedDetails, reprocessDetails);


            System.out.println("CSV export complete: " + Paths.get(outputFile).toAbsolutePath());

        } catch (IOException e) {
            System.err.println("Failed to write output CSV:");
            e.printStackTrace();
        }

        // Write summary to Google Sheet (insert at top each run)
        writeToGoogleSheet(endTime, durationStr, statusCounts, failedDetails, reprocessDetails, dbColNames, dbData, allIntervals);
        uploadToSlack(outputFile);
    }

    /** Queries DB1 for status_code counts in regprc.registration since uploadStartTime. */
    private static List<String[]> fetchRegistrationStatusCounts(String uploadStartTime) {
        String url = DB_CONFIGS[0][0], user = DB_CONFIGS[0][1], password = DB_CONFIGS[0][2];
        String sql = "SELECT status_code, COUNT(*) AS status_count " +
                     "FROM regprc.registration " +
                     "WHERE cr_dtimes > '" + uploadStartTime + "' " +
                     "GROUP BY status_code ORDER BY status_code";
        List<String[]> result = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                result.add(new String[]{ rs.getString(1), rs.getString(2) });
            }
        } catch (SQLException e) {
            System.err.println("Failed to fetch registration status counts: " + e.getMessage());
        }
        return result;
    }

    /** Queries DB1 for the latest upd_dtimes in regprc.registration to use as END_TIME. */
    private static String fetchEndTime() {
        String url      = DB_CONFIGS[0][0];
        String user     = DB_CONFIGS[0][1];
        String password = DB_CONFIGS[0][2];
        String sql = "SELECT upd_dtimes FROM regprc.registration ORDER BY upd_dtimes DESC LIMIT 1";
        System.out.println("Fetching END_TIME from " + DB_CONFIGS[0][3] + "...");
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return rs.getString(1);
            }
            System.err.println("END_TIME query returned no rows.");
        } catch (SQLException e) {
            System.err.println("Failed to fetch END_TIME: " + e.getMessage());
        }
        return null;
    }

    /** Converts a 1-based column index to an Excel column letter (1→A, 26→Z, 27→AA, …). */
    private static String toExcelCol(int col) {
        StringBuilder sb = new StringBuilder();
        while (col > 0) {
            col--;
            sb.insert(0, (char) ('A' + col % 26));
            col /= 26;
        }
        return sb.toString();
    }

    /**
     * Wraps a value in double-quotes and escapes any internal double-quotes,
     * making the output safe for RFC-4180 CSV.
     */
    private static String escapeCsv(String value) {
        if (value == null) return "\"\"";
        String escaped = value.replace("\"", "\"\"");
        return "\"" + escaped + "\"";
    }

    /**
     * For a given status_code (FAILED or REPROCESS), returns one row per reg_id with
     * the 2nd-latest transaction (rn=2 via ROW_NUMBER) — single round-trip to the DB.
     *
     * Returns list of String[6]:
     *   {reg_id, reg_status_code, reg_status_comment,
     *    trn_type_code, trn_status_code, trn_status_comment}
     */
    private static List<String[]> fetchRegDetailsByStatus(String statusCode) {
        String url      = DB_CONFIGS[0][0];
        String user     = DB_CONFIGS[0][1];
        String password = DB_CONFIGS[0][2];

        // Single query: CTE gets all matching reg_ids, ranked_trn ranks their transactions,
        // LEFT JOIN picks rn=2 (the 2nd-latest = OFFSET 1). No per-row round-trips.
        String sql =
            "WITH reg_ids AS (\n" +
            "    SELECT reg_id, status_code, status_comment\n" +
            "    FROM regprc.registration\n" +
            "    WHERE status_code = ?\n" +
            "      AND cr_dtimes > '" + UPLOAD_START_TIME + "'\n" +
            "),\n" +
            "ranked_trn AS (\n" +
            "    SELECT\n" +
            "        rt.reg_id,\n" +
            "        rt.trn_type_code,\n" +
            "        rt.status_code       AS trn_status_code,\n" +
            "        rt.status_comment    AS trn_status_comment,\n" +
            "        ROW_NUMBER() OVER (PARTITION BY rt.reg_id ORDER BY rt.cr_dtimes DESC) AS rn\n" +
            "    FROM regprc.registration_transaction rt\n" +
            "    WHERE rt.reg_id IN (SELECT reg_id FROM reg_ids)\n" +
            ")\n" +
            "SELECT\n" +
            "    r.reg_id,\n" +
            "    r.status_code,\n" +
            "    r.status_comment,\n" +
            "    COALESCE(t.trn_type_code,       'N/A') AS trn_type_code,\n" +
            "    COALESCE(t.trn_status_code,     'N/A') AS trn_status_code,\n" +
            "    COALESCE(t.trn_status_comment,  'N/A') AS trn_status_comment\n" +
            "FROM reg_ids r\n" +
            "LEFT JOIN ranked_trn t ON r.reg_id = t.reg_id AND t.rn = 2\n" +
            "ORDER BY r.reg_id";

        List<String[]> result = new ArrayList<>();
        System.out.printf("Fetching %s reg_ids from DB1 (single query)...%n", statusCode);

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, statusCode);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    result.add(new String[]{
                        nvl(rs.getString(1)), nvl(rs.getString(2)), nvl(rs.getString(3)),
                        nvl(rs.getString(4)), nvl(rs.getString(5)), nvl(rs.getString(6))
                    });
                }
            }
        } catch (SQLException e) {
            System.err.printf("Failed to fetch %s details: %s%n", statusCode, e.getMessage());
        }
        System.out.printf("  -> %d %s reg_id(s) fetched%n", result.size(), statusCode);
        return result;
    }

    /**
     * Writes a summary section showing, for FAILED + REPROCESS combined,
     * how many reg_ids share the same (trn_type_code, trn_status_code, trn_status_comment).
     */
    private static void writeErrorSummary(BufferedWriter writer,
                                          List<String[]> failedRows,
                                          List<String[]> reprocessRows) throws IOException {
        // key = "trn_type_code|trn_status_code|trn_status_comment"
        Map<String, Long> countMap = new LinkedHashMap<>();

        for (List<String[]> group : List.of(failedRows, reprocessRows)) {
            for (String[] row : group) {
                String key = row[3] + "|" + row[4] + "|" + row[5];
                countMap.merge(key, 1L, Long::sum);
            }
        }

        // Sort by count descending
        List<Map.Entry<String, Long>> sorted = new ArrayList<>(countMap.entrySet());
        sorted.sort((a, b) -> Long.compare(b.getValue(), a.getValue()));

        writer.newLine();
        writer.write(escapeCsv("=== Error Category Summary (FAILED + REPROCESS) ==="));
        writer.newLine();
        writer.write(escapeCsv("trn_type_code") + "," +
                     escapeCsv("trn_status_code") + "," +
                     escapeCsv("trn_status_comment") + "," +
                     escapeCsv("count_reg_ids"));
        writer.newLine();

        for (Map.Entry<String, Long> entry : sorted) {
            String[] parts = entry.getKey().split("\\|", -1);
            writer.write(escapeCsv(parts.length > 0 ? parts[0] : "") + "," +
                         escapeCsv(parts.length > 1 ? parts[1] : "") + "," +
                         escapeCsv(parts.length > 2 ? parts[2] : "") + "," +
                         escapeCsv(String.valueOf(entry.getValue())));
            writer.newLine();
        }
    }

    private static String nvl(String s) { return s == null ? "" : s; }

    private static final String SPREADSHEET_ID = "SPREADSHEET_ID_REDACTED";
    private static final String CREDENTIALS_FILE = "credentials.json"; // service-account key in working dir

    private static final String SLACK_TOKEN   = "SLACK_TOKEN_REDACTED"; // Slack bot token
    private static final String SLACK_CHANNEL = "C0ARYKTH1FX";     // channel ID (e.g. C0123456789)

    /**
     * Inserts a summary block at the top of the Google Sheet on every run.
     * Requires a Google service-account credentials.json in the working directory,
     * with the Sheet shared to the service-account email (Editor permission).
     */
    private static void writeToGoogleSheet(String endTime, String durationStr,
                                           List<String[]> statusCounts,
                                           List<String[]> failedDetails,
                                           List<String[]> reprocessDetails,
                                           List<List<String>> dbColNames,
                                           List<Map<String, String[]>> dbData,
                                           Set<String> allIntervals) {
        try {
            GoogleCredentials credentials;
            try (FileInputStream fis = new FileInputStream(CREDENTIALS_FILE)) {
                credentials = GoogleCredentials.fromStream(fis)
                        .createScoped(Collections.singletonList(SheetsScopes.SPREADSHEETS));
            }

            Sheets sheets = new Sheets.Builder(
                    GoogleNetHttpTransport.newTrustedTransport(),
                    GsonFactory.getDefaultInstance(),
                    new HttpCredentialsAdapter(credentials))
                    .setApplicationName("MOSIP-Report-Exporter")
                    .build();

            List<List<Object>> rows = new ArrayList<>();

            String runTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            rows.add(row("=== RUN: " + runTime + " ==="));

            // Time info
            rows.add(row("Upload Start Time", "Processing Start Time", "End Time", "Duration (End - Processing Start)"));
            rows.add(row(UPLOAD_START_TIME, START_TIME, endTime, durationStr));

            // Notes (shown at top so it is visible immediately)
            rows.add(row("Notes", change));
            rows.add(row(""));

            // Status counts
            List<Object> statusHeaders = new ArrayList<>();
            List<Object> statusValues  = new ArrayList<>();
            long total = 0;
            for (String[] sc : statusCounts) {
                statusHeaders.add(sc[0]);
                statusValues.add(sc[1]);
                try { total += Long.parseLong(sc[1]); } catch (NumberFormatException ignored) {}
            }
            statusHeaders.add("TOTAL");
            statusValues.add(String.valueOf(total));
            rows.add(statusHeaders);
            rows.add(statusValues);
            rows.add(row(""));

            // Interval data header -- same columns as CSV
            List<Object> intervalHeader = new ArrayList<>();
            intervalHeader.add("interval_start");
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                intervalHeader.add("source_db");
                intervalHeader.addAll(dbColNames.get(i));
            }
            rows.add(intervalHeader);

            // Interval data rows + accumulate per-column totals for TOTAL row
            int numCols = intervalHeader.size();
            long[] colTotals = new long[numCols];
            for (String interval : allIntervals) {
                List<Object> dataRow = new ArrayList<>();
                dataRow.add(interval);
                int ci = 1;
                for (int i = 0; i < DB_CONFIGS.length; i++) {
                    if (!ENABLED_QUERIES[i]) continue;
                    dataRow.add(DB_CONFIGS[i][3]);
                    ci++;
                    String[] vals = dbData.get(i).get(interval);
                    int colCount = dbColNames.get(i).size();
                    if (vals != null) {
                        for (String v : vals) {
                            dataRow.add(v);
                            try { colTotals[ci] += Long.parseLong(v); } catch (NumberFormatException ignored) {}
                            ci++;
                        }
                    } else {
                        for (int c = 0; c < colCount; c++) { dataRow.add(""); ci++; }
                    }
                }
                rows.add(dataRow);
            }

            // TOTAL row -- computed sums; source_db columns blank
            List<Object> totalRow = new ArrayList<>();
            totalRow.add("TOTAL");
            int ci = 1;
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                totalRow.add("");
                ci++;
                for (int j = 0; j < dbColNames.get(i).size(); j++) {
                    totalRow.add(String.valueOf(colTotals[ci++]));
                }
            }
            rows.add(totalRow);
            rows.add(row(""));

            // Error category summary
            rows.add(row("=== Error Category Summary (FAILED + REPROCESS) ==="));
            rows.add(row("trn_type_code", "trn_status_code", "trn_status_comment", "count_reg_ids"));
            Map<String, Long> countMap = new LinkedHashMap<>();
            for (List<String[]> group : List.of(failedDetails, reprocessDetails)) {
                for (String[] r : group) {
                    String key = r[3] + "|" + r[4] + "|" + r[5];
                    countMap.merge(key, 1L, Long::sum);
                }
            }
            List<Map.Entry<String, Long>> sorted = new ArrayList<>(countMap.entrySet());
            sorted.sort((a, b) -> Long.compare(b.getValue(), a.getValue()));
            for (Map.Entry<String, Long> entry : sorted) {
                String[] parts = entry.getKey().split("\\|", -1);
                rows.add(row(
                    parts.length > 0 ? parts[0] : "",
                    parts.length > 1 ? parts[1] : "",
                    parts.length > 2 ? parts[2] : "",
                    String.valueOf(entry.getValue())
                ));
            }


            int numRows = rows.size();
            sheetsInsertRows(sheets, numRows);
            sheetsWriteValues(sheets, rows);
            System.out.println("Google Sheet updated: " + numRows + " rows inserted at top.");

        } catch (Exception e) {
            System.err.println("Google Sheet update failed: " + e.getMessage());
        }
    }

    private static void sheetsInsertRows(Sheets sheets, int count) throws Exception {
        InsertDimensionRequest insert = new InsertDimensionRequest()
                .setRange(new DimensionRange()
                        .setSheetId(0)
                        .setDimension("ROWS")
                        .setStartIndex(0)
                        .setEndIndex(count))
                .setInheritFromBefore(false);
        sheets.spreadsheets().batchUpdate(SPREADSHEET_ID,
                new BatchUpdateSpreadsheetRequest()
                        .setRequests(Collections.singletonList(new Request().setInsertDimension(insert))))
                .execute();
    }

    private static void sheetsWriteValues(Sheets sheets, List<List<Object>> rows) throws Exception {
        ValueRange body = new ValueRange().setValues(rows);
        sheets.spreadsheets().values()
                .update(SPREADSHEET_ID, "Sheet1!A1", body)
                .setValueInputOption("RAW")
                .execute();
    }

    private static List<Object> row(Object... items) { return Arrays.asList(items); }

    private static void uploadToSlack(String filePath) {
        try {
            Path path = Paths.get(filePath);
            byte[] fileBytes = Files.readAllBytes(path);
            String fileName = path.getFileName().toString();

            HttpClient client = HttpClient.newBuilder()
                    .proxy(ProxySelector.getDefault())
                    .build();

            // Step 1: get upload URL + file ID
            HttpRequest req1 = HttpRequest.newBuilder()
                    .uri(URI.create("https://slack.com/api/files.getUploadURLExternal"
                            + "?filename=" + fileName + "&length=" + fileBytes.length))
                    .header("Authorization", "Bearer " + SLACK_TOKEN)
                    .GET()
                    .build();
            String resp1 = client.send(req1, HttpResponse.BodyHandlers.ofString()).body();
            if (!resp1.contains("\"ok\":true")) {
                System.err.println("Slack getUploadURL failed: " + resp1);
                return;
            }
            String uploadUrl = slackExtractField(resp1, "upload_url").replace("\\/", "/");
            String fileId    = slackExtractField(resp1, "file_id");

            // Step 2: upload file bytes to the pre-signed URL
            HttpRequest req2 = HttpRequest.newBuilder()
                    .uri(URI.create(uploadUrl))
                    .header("Content-Type", "application/octet-stream")
                    .POST(HttpRequest.BodyPublishers.ofByteArray(fileBytes))
                    .build();
            HttpResponse<String> httpResp2 = client.send(req2, HttpResponse.BodyHandlers.ofString());
            if (httpResp2.statusCode() != 200) {
                System.err.println("Slack file upload failed: " + httpResp2.body());
                return;
            }

            // Step 3: complete upload and share to channel
            String body = "{\"files\":[{\"id\":\"" + fileId + "\"}],\"channel_id\":\"" + SLACK_CHANNEL + "\"}";
            HttpRequest req3 = HttpRequest.newBuilder()
                    .uri(URI.create("https://slack.com/api/files.completeUploadExternal"))
                    .header("Authorization", "Bearer " + SLACK_TOKEN)
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(body))
                    .build();
            String resp3 = client.send(req3, HttpResponse.BodyHandlers.ofString()).body();
            if (resp3.contains("\"ok\":true")) {
                System.out.println("Slack upload success: " + fileName);
            } else {
                System.err.println("Slack complete failed: " + resp3);
            }

        } catch (Exception e) {
            System.err.println("Slack upload error: " + e.getMessage());
        }
    }

    private static String slackExtractField(String json, String key) {
        String search = "\"" + key + "\":\"";
        int start = json.indexOf(search) + search.length();
        int end   = json.indexOf("\"", start);
        return json.substring(start, end);
    }

}
