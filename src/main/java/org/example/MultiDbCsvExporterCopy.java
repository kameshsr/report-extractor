package org.example;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
public class MultiDbCsvExporterCopy {

    // -----------------------------------------------------------------------
    // CONFIGURATION — edit these values to match your databases and queries
    // -----------------------------------------------------------------------

    /** One entry per database: {jdbcUrl, user, password, displayLabel} */
    private static final String[][] DB_CONFIGS = {
        {
            "jdbc:postgresql://172.31.13.251:5432/mosip_regprc",  // DB 1 URL
            "postgres",                                              // DB 1 user
            "797mKZO1Bo",                                    // DB 1 password
            "DB1_regprc"                                            // label shown in CSV
        },
        {
            "jdbc:postgresql://172.31.13.251:5432/mosip_credential",  // DB 2 URL
            "postgres",                                              // DB 2 user
            "797mKZO1Bo",                                    // DB 2 password
            "DB2_credential"                                            // label shown in CSV
        },
        {
            "jdbc:postgresql://172.31.13.251:5432/mosip_ida",     // DB 3 URL
            "postgres",                                              // DB 3 user
            "797mKZO1Bo",                                    // DB 3 password
            "DB3_ida"                                               // label shown in CSV
        }
    };

    // -----------------------------------------------------------------------
    // TIME RANGE — edit once, applies to all 3 queries automatically
    // -----------------------------------------------------------------------
    private static final String START_TIME = "2026-04-23 18:20:00.000";
    private static final String END_TIME   = "2026-04-23 22:50:00.000";
    // -----------------------------------------------------------------------

    /** One SQL query per database (index matches DB_CONFIGS above). */
    private static final String[] QUERIES;

    static {
        QUERIES = new String[]{

            // Query for DB 1 (mosip_regprc)
            "WITH params AS (\n" +
            "    SELECT \n" +
            "        TIMESTAMP '" + START_TIME + "' AS start_time,\n" +
            "        TIMESTAMP '" + END_TIME   + "' AS end_time\n" +
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
            "    date_trunc('hour', cr_dtimes)\n" +
            "    + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM cr_dtimes) / 10) * 10)\n" +
            "    AS interval_start,\n" +
            "\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'ERROR')    AS ERROR,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'FAILED')   AS FAILED,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'ISSUED')   AS ISSUED,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'NEW')      AS NEW,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'PRINTED')  AS PRINTED,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'RECEIVED') AS RECEIVED,\n" +
            "    COUNT(*) FILTER (WHERE status_code = 'STORED')   AS STORED,\n" +
            "    COUNT(*) AS TOTAL\n" +
            "\n" +
            "FROM credential_transaction\n" +
            "\n" +
            "WHERE cr_dtimes BETWEEN '" + START_TIME + "' AND '" + END_TIME + "'\n" +
            "  AND cr_by = 'service-account-mosip-idrepo-client'\n" +
            "\n" +
            "GROUP BY interval_start\n" +
            "ORDER BY interval_start;",

            // Query for DB 3 (mosip_ida)
            "SELECT\n" +
            "    date_trunc('hour', cr_dtimes)\n" +
            "    + INTERVAL '1 minute' * (FLOOR(EXTRACT(minute FROM cr_dtimes) / 10) * 10)\n" +
            "    AS interval_start,\n" +
            "\n" +
            "    COUNT(*) AS TOTAL\n" +
            "\n" +
            "FROM ida.identity_cache\n" +
            "\n" +
            "WHERE cr_dtimes BETWEEN '" + START_TIME + "' AND '" + END_TIME + "'\n" +
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

            // Pre-compute which 1-based columns are data columns (not interval_start or source_db).
            // Layout: col1=interval_start, then per DB: source_db | data cols...
            int totalCols = 1; // interval_start
            for (int i = 0; i < DB_CONFIGS.length; i++) totalCols += 1 + dbColNames.get(i).size();
            boolean[] isDataCol = new boolean[totalCols + 1]; // 1-based, false = skip in SUM row
            int ci = 2; // col 1 is interval_start (not a data col)
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                ci++; // source_db — not a data col
                for (int j = 0; j < dbColNames.get(i).size(); j++) {
                    isDataCol[ci++] = true;
                }
            }

            // Header: interval_start | source_db | DB1 cols | source_db | DB2 cols | source_db | DB3 cols
            writer.write(escapeCsv("interval_start"));
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                writer.write(",");
                writer.write(escapeCsv("source_db"));
                for (String col : dbColNames.get(i)) {
                    writer.write(",");
                    writer.write(escapeCsv(col));
                }
            }
            writer.newLine();

            // Data rows — Excel data starts at row 2
            int rowNum = 2;
            for (String interval : allIntervals) {
                writer.write(escapeCsv(interval));
                for (int i = 0; i < DB_CONFIGS.length; i++) {
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
            int firstDataRow = 2;
            int lastDataRow  = rowNum - 1;
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

            System.out.println("CSV export complete: " + Paths.get(outputFile).toAbsolutePath());

        } catch (IOException e) {
            System.err.println("Failed to write output CSV:");
            e.printStackTrace();
        }
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
        // Escape existing double-quotes by doubling them
        String escaped = value.replace("\"", "\"\"");
        return "\"" + escaped + "\"";
    }
}