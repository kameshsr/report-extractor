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
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.xssf.usermodel.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.sql.*;
import java.time.Duration;
import java.time.LocalDate;
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

    private static final Properties CONFIG = loadConfig();

    private static Properties loadConfig() {
        Properties p = new Properties();
        try (FileInputStream fis = new FileInputStream("config.properties")) {
            p.load(fis);
        } catch (IOException e) {
            throw new ExceptionInInitializerError("config.properties not found: " + e.getMessage());
        }
        return p;
    }

    private static final String DB_HOST = "jdbc:postgresql://172.31.1.5:5432";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = CONFIG.getProperty("db.password");

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
    private static final String UPLOAD_START_TIME = "2026-05-11 10:10:00.000"; 
    private static final String START_TIME        = "2026-05-11 10:20:00.000"; // processing start 
    private static final String change = "Testing with 2 mb packet ";
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
        // Build output path: report/10_min_report_<yyyyMMdd>_<HHmmss>.xlsx
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

        // Phase 2: write colored Excel report
        writeCsv(outputFile, endTime, durationStr, statusCounts, failedDetails, reprocessDetails,
                dbColNames, dbData, allIntervals);

        // Write summary to Google Sheet (insert at top each run)
        writeToGoogleSheet(endTime, durationStr, statusCounts, failedDetails, reprocessDetails, dbColNames, dbData, allIntervals);
        uploadToSlack(outputFile);
    }

    private static void writeCsv(String outputFile, String endTime, String durationStr,
                                 List<String[]> statusCounts, List<String[]> failedDetails, List<String[]> reprocessDetails,
                                 List<List<String>> dbColNames, List<Map<String, String[]>> dbData,
                                 Set<String> allIntervals) {

        try (BufferedWriter writer = Files.newBufferedWriter(
                Paths.get(outputFile),
                StandardOpenOption.CREATE,
                StandardOpenOption.TRUNCATE_EXISTING)) {

            // Time section
            writer.write(
                    escapeCsv("Upload Start Time") + "," +
                            escapeCsv("Processing Start Time") + "," +
                            escapeCsv("End Time") + "," +
                            escapeCsv("Duration (End - Processing Start)")
            );
            writer.newLine();

            writer.write(
                    escapeCsv(UPLOAD_START_TIME) + "," +
                            escapeCsv(START_TIME) + "," +
                            escapeCsv(endTime) + "," +
                            escapeCsv(durationStr)
            );
            writer.newLine();
            writer.newLine();

            // Notes
            writer.write(escapeCsv("Notes") + "," + escapeCsv(change));
            writer.newLine();
            writer.newLine();

            // Status counts
            long totalStat = 0;

            for (int i = 0; i < statusCounts.size(); i++) {
                writer.write(escapeCsv(statusCounts.get(i)[0]));
                if (i < statusCounts.size() - 1) writer.write(",");
                try {
                    totalStat += Long.parseLong(statusCounts.get(i)[1]);
                } catch (Exception ignored) {}
            }

            writer.write("," + escapeCsv("TOTAL"));
            writer.newLine();

            for (int i = 0; i < statusCounts.size(); i++) {
                writer.write(escapeCsv(statusCounts.get(i)[1]));
                if (i < statusCounts.size() - 1) writer.write(",");
            }

            writer.write("," + escapeCsv(String.valueOf(totalStat)));
            writer.newLine();
            writer.newLine();

            // Header row
            List<String> headers = new ArrayList<>();
            headers.add("interval_start");

            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;

                headers.add("source_db");
                headers.addAll(dbColNames.get(i));
            }

            writer.write(String.join(",",
                    headers.stream().map(MultiDbCsvExporter::escapeCsv).toList()));
            writer.newLine();

            // Totals
            long[] totals = new long[headers.size()];

            // Data rows
            for (String interval : allIntervals) {

                List<String> row = new ArrayList<>();
                row.add(interval);

                int totalIndex = 1;

                for (int i = 0; i < DB_CONFIGS.length; i++) {

                    if (!ENABLED_QUERIES[i]) continue;

                    row.add(DB_CONFIGS[i][3]);
                    totalIndex++;

                    String[] vals = dbData.get(i).get(interval);

                    int colCount = dbColNames.get(i).size();

                    if (vals != null) {

                        for (String v : vals) {

                            row.add(v == null ? "" : v);

                            try {
                                totals[totalIndex] += Long.parseLong(v);
                            } catch (Exception ignored) {}

                            totalIndex++;
                        }

                    } else {

                        for (int c = 0; c < colCount; c++) {
                            row.add("");
                            totalIndex++;
                        }
                    }
                }

                writer.write(String.join(",",
                        row.stream().map(MultiDbCsvExporter::escapeCsv).toList()));

                writer.newLine();
            }

            // TOTAL row
            List<String> totalRow = new ArrayList<>();
            totalRow.add("TOTAL");

            int idx = 1;

            for (int i = 0; i < DB_CONFIGS.length; i++) {

                if (!ENABLED_QUERIES[i]) continue;

                totalRow.add("");
                idx++;

                for (int j = 0; j < dbColNames.get(i).size(); j++) {
                    totalRow.add(String.valueOf(totals[idx++]));
                }
            }

            writer.write(String.join(",",
                    totalRow.stream().map(MultiDbCsvExporter::escapeCsv).toList()));

            writer.newLine();

            // Error summary
            writeErrorSummary(writer, failedDetails, reprocessDetails);

            System.out.println("CSV export complete: " +
                    Paths.get(outputFile).toAbsolutePath());

        } catch (Exception e) {
            System.err.println("Failed to write CSV: " + e.getMessage());
        }
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

    private static void writeExcel(String outputFile, String endTime, String durationStr,
            List<String[]> statusCounts, List<String[]> failedDetails, List<String[]> reprocessDetails,
            List<List<String>> dbColNames, List<Map<String, String[]>> dbData,
            Set<String> allIntervals) {
        try (XSSFWorkbook wb = new XSSFWorkbook();
             FileOutputStream fos = new FileOutputStream(outputFile)) {

            XSSFSheet sheet = wb.createSheet("Report");

            XSSFCellStyle sTimeHeader  = xlStyle(wb, new int[]{21,  101, 192},  new int[]{255,255,255}, true);
            XSSFCellStyle sTimeValues  = xlStyle(wb, new int[]{227, 241, 253},  null,                   false);
            XSSFCellStyle sNotes       = xlStyle(wb, new int[]{255, 248, 225},  new int[]{230, 81,  0}, true);
            XSSFCellStyle sBlank       = xlStyle(wb, new int[]{238, 238, 238},  null,                   false);
            XSSFCellStyle sStatusHdr   = xlStyle(wb, new int[]{27,  94,  32},   new int[]{255,255,255}, true);
            XSSFCellStyle sStatusVal   = xlStyle(wb, new int[]{232, 245, 233},  null,                   false);
            XSSFCellStyle sIntervalHdr = xlStyle(wb, new int[]{74,  20,  140},  new int[]{255,255,255}, true);
            XSSFCellStyle sTotal       = xlStyle(wb, new int[]{230, 102, 0},    new int[]{255,255,255}, true);
            XSSFCellStyle sErrSection  = xlStyle(wb, new int[]{183, 28,  28},   new int[]{255,255,255}, true);
            XSSFCellStyle sErrColHdr   = xlStyle(wb, new int[]{252, 228, 228},  null,                   false);

            int rowIdx = 0;

            xlRow(sheet, rowIdx++, sTimeHeader, "Upload Start Time", "Processing Start Time", "End Time", "Duration (End - Processing Start)");
            xlRow(sheet, rowIdx++, sTimeValues, UPLOAD_START_TIME, START_TIME, endTime, durationStr);
            xlRow(sheet, rowIdx++, sNotes,      "Notes", change);
            xlBlankRow(sheet, rowIdx++, sBlank, 10);

            List<String> sHdrList = new ArrayList<>(), sValList = new ArrayList<>();
            long totalStat = 0;
            for (String[] sc : statusCounts) {
                sHdrList.add(sc[0]); sValList.add(sc[1]);
                try { totalStat += Long.parseLong(sc[1]); } catch (NumberFormatException ignored) {}
            }
            sHdrList.add("TOTAL"); sValList.add(String.valueOf(totalStat));
            xlRow(sheet, rowIdx++, sStatusHdr, sHdrList.toArray(new String[0]));
            xlRow(sheet, rowIdx++, sStatusVal,  sValList.toArray(new String[0]));
            xlBlankRow(sheet, rowIdx++, sBlank, sHdrList.size());

            // Build column layout (1-based indices)
            int totalCols = 1;
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                totalCols += 1 + dbColNames.get(i).size();
            }
            boolean[] isDataCol = new boolean[totalCols + 1];
            int ci = 2;
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                ci++;
                for (int j = 0; j < dbColNames.get(i).size(); j++) isDataCol[ci++] = true;
            }

            // Interval header row
            List<String> hdrCols = new ArrayList<>();
            hdrCols.add("interval_start");
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                hdrCols.add("source_db");
                hdrCols.addAll(dbColNames.get(i));
            }
            xlRow(sheet, rowIdx++, sIntervalHdr, hdrCols.toArray(new String[0]));

            // Data rows
            int firstDataExcel = rowIdx + 1; // 1-based Excel row number
            for (String interval : allIntervals) {
                XSSFRow dataRow = sheet.createRow(rowIdx++);
                int col = 0;
                dataRow.createCell(col++).setCellValue(interval);
                for (int i = 0; i < DB_CONFIGS.length; i++) {
                    if (!ENABLED_QUERIES[i]) continue;
                    dataRow.createCell(col++).setCellValue(DB_CONFIGS[i][3]);
                    String[] vals = dbData.get(i).get(interval);
                    int colCount = dbColNames.get(i).size();
                    if (vals != null) {
                        for (String v : vals) {
                            XSSFCell cell = dataRow.createCell(col++);
                            try { cell.setCellValue(Long.parseLong(v)); }
                            catch (NumberFormatException ignored) { cell.setCellValue(v == null ? "" : v); }
                        }
                    } else {
                        for (int c = 0; c < colCount; c++) dataRow.createCell(col++).setCellValue("");
                    }
                }
            }
            int lastDataExcel = rowIdx; // 1-based Excel row number of last data row

            // TOTAL row
            XSSFRow xlTotalRow = sheet.createRow(rowIdx++);
            XSSFCell lbl = xlTotalRow.createCell(0);
            lbl.setCellValue("TOTAL"); lbl.setCellStyle(sTotal);
            for (int col = 2; col <= totalCols; col++) {
                XSSFCell cell = xlTotalRow.createCell(col - 1);
                cell.setCellStyle(sTotal);
                if (isDataCol[col]) {
                    cell.setCellFormula("SUM(" + toExcelCol(col) + firstDataExcel + ":" + toExcelCol(col) + lastDataExcel + ")");
                }
            }

            xlBlankRow(sheet, rowIdx++, sBlank, totalCols);
            xlRow(sheet, rowIdx++, sErrSection, "=== Error Category Summary (FAILED + REPROCESS) ===");
            xlRow(sheet, rowIdx++, sErrColHdr,  "trn_type_code", "trn_status_code", "trn_status_comment", "count_reg_ids");

            Map<String, Long> countMap = new LinkedHashMap<>();
            for (List<String[]> group : List.of(failedDetails, reprocessDetails)) {
                for (String[] r : group) countMap.merge(r[3] + "|" + r[4] + "|" + r[5], 1L, Long::sum);
            }
            List<Map.Entry<String, Long>> sorted = new ArrayList<>(countMap.entrySet());
            sorted.sort((a, b) -> Long.compare(b.getValue(), a.getValue()));
            for (Map.Entry<String, Long> entry : sorted) {
                String[] parts = entry.getKey().split("\\|", -1);
                XSSFRow errRow = sheet.createRow(rowIdx++);
                errRow.createCell(0).setCellValue(parts.length > 0 ? parts[0] : "");
                errRow.createCell(1).setCellValue(parts.length > 1 ? parts[1] : "");
                errRow.createCell(2).setCellValue(parts.length > 2 ? parts[2] : "");
                errRow.createCell(3).setCellValue(entry.getValue());
            }

            for (int c = 0; c < totalCols; c++) sheet.setColumnWidth(c, 4000);

            wb.write(fos);
            System.out.println("Excel export complete: " + Paths.get(outputFile).toAbsolutePath());

        } catch (IOException e) {
            System.err.println("Failed to write Excel file: " + e.getMessage());
        }
    }

    private static void xlRow(XSSFSheet sheet, int rowIdx, XSSFCellStyle style, String... values) {
        XSSFRow row = sheet.createRow(rowIdx);
        for (int i = 0; i < values.length; i++) {
            XSSFCell cell = row.createCell(i);
            cell.setCellValue(values[i]);
            cell.setCellStyle(style);
        }
    }

    private static void xlBlankRow(XSSFSheet sheet, int rowIdx, XSSFCellStyle style, int numCols) {
        XSSFRow row = sheet.createRow(rowIdx);
        for (int i = 0; i < numCols; i++) row.createCell(i).setCellStyle(style);
    }

    private static XSSFCellStyle xlStyle(XSSFWorkbook wb, int[] bg, int[] fg, boolean bold) {
        XSSFCellStyle style = wb.createCellStyle();
        if (bg != null) {
            style.setFillForegroundColor(new XSSFColor(new byte[]{(byte)bg[0], (byte)bg[1], (byte)bg[2]}, null));
            style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        }
        XSSFFont font = wb.createFont();
        if (fg != null) font.setColor(new XSSFColor(new byte[]{(byte)fg[0], (byte)fg[1], (byte)fg[2]}, null));
        if (bold) font.setBold(true);
        style.setFont(font);
        return style;
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

    private static final String SPREADSHEET_ID   = CONFIG.getProperty("spreadsheet.id");
    private static final String CREDENTIALS_FILE = "credentials.json";

    private static final String SLACK_TOKEN   = CONFIG.getProperty("slack.token");
    private static final String SLACK_CHANNEL = CONFIG.getProperty("slack.channel");

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
            List<String> rowTypes = new ArrayList<>();

            String runTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            rows.add(row("=== RUN: " + runTime + " ===")); rowTypes.add("run_header");

            // Time info
            rows.add(row("Upload Start Time", "Processing Start Time", "End Time", "Duration (End - Processing Start)")); rowTypes.add("time_header");
            rows.add(row(UPLOAD_START_TIME, START_TIME, endTime, durationStr)); rowTypes.add("time_values");

            // Notes (shown at top so it is visible immediately)
            rows.add(row("Notes", change)); rowTypes.add("notes");
            rows.add(row("")); rowTypes.add("blank");

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
            rows.add(statusHeaders); rowTypes.add("status_header");
            rows.add(statusValues); rowTypes.add("status_values");
            rows.add(row("")); rowTypes.add("blank");

            // Interval data header -- same columns as CSV
            List<Object> intervalHeader = new ArrayList<>();
            intervalHeader.add("interval_start");
            for (int i = 0; i < DB_CONFIGS.length; i++) {
                if (!ENABLED_QUERIES[i]) continue;
                intervalHeader.add("source_db");
                intervalHeader.addAll(dbColNames.get(i));
            }
            rows.add(intervalHeader); rowTypes.add("interval_header");

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
                rows.add(dataRow); rowTypes.add("data");
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
            rows.add(totalRow); rowTypes.add("total");
            rows.add(row("")); rowTypes.add("blank");

            // Error category summary
            rows.add(row("=== Error Category Summary (FAILED + REPROCESS) ===")); rowTypes.add("error_section_header");
            rows.add(row("trn_type_code", "trn_status_code", "trn_status_comment", "count_reg_ids")); rowTypes.add("error_col_header");
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
                )); rowTypes.add("error_data");
            }

            rows.add(row("")); rowTypes.add("blank"); // blank separator between runs

            String sheetTitle = LocalDate.now().format(DateTimeFormatter.ISO_LOCAL_DATE);
            int sheetId  = getOrCreateDailySheet(sheets, sheetTitle);
            int startRow = getNextEmptyRow(sheets, sheetTitle);
            sheetsWriteValues(sheets, rows, sheetTitle, startRow);
            sheetsApplyColors(sheets, rowTypes, sheetId, startRow);
            System.out.println("Google Sheet updated: " + rows.size() + " rows appended to sheet '" + sheetTitle + "'.");

        } catch (Exception e) {
            System.err.println("Google Sheet update failed: " + e.getMessage());
        }
    }

    private static void sheetsApplyColors(Sheets sheets, List<String> rowTypes,
                                          int sheetId, int startRow) throws Exception {
        List<Request> requests = new ArrayList<>();
        Color white = color(1f, 1f, 1f);
        for (int i = 0; i < rowTypes.size(); i++) {
            switch (rowTypes.get(i)) {
                case "run_header":           requests.add(colorRow(startRow + i, color(0.102f, 0.137f, 0.494f), white,  sheetId)); break;
                case "time_header":          requests.add(colorRow(startRow + i, color(0.084f, 0.396f, 0.753f), white,  sheetId)); break;
                case "time_values":          requests.add(colorRow(startRow + i, color(0.890f, 0.945f, 0.992f), null,   sheetId)); break;
                case "notes":               requests.add(colorRow(startRow + i, color(1.0f,   0.972f, 0.882f), color(0.902f, 0.318f, 0.0f), sheetId)); break;
                case "blank":               requests.add(colorRow(startRow + i, color(0.933f, 0.933f, 0.933f), null,   sheetId)); break;
                case "status_header":       requests.add(colorRow(startRow + i, color(0.106f, 0.369f, 0.125f), white,  sheetId)); break;
                case "status_values":       requests.add(colorRow(startRow + i, color(0.910f, 0.961f, 0.914f), null,   sheetId)); break;
                case "interval_header":     requests.add(colorRow(startRow + i, color(0.290f, 0.078f, 0.549f), white,  sheetId)); break;
                case "total":               requests.add(colorRow(startRow + i, color(0.902f, 0.400f, 0.0f),   white,  sheetId)); break;
                case "error_section_header":requests.add(colorRow(startRow + i, color(0.718f, 0.110f, 0.110f), white,  sheetId)); break;
                case "error_col_header":    requests.add(colorRow(startRow + i, color(0.988f, 0.894f, 0.894f), null,   sheetId)); break;
            }
        }
        if (!requests.isEmpty()) {
            sheets.spreadsheets().batchUpdate(SPREADSHEET_ID,
                    new BatchUpdateSpreadsheetRequest().setRequests(requests)).execute();
        }
    }

    private static Request colorRow(int rowIndex, Color bgColor, Color fgColor, int sheetId) {
        CellFormat format = new CellFormat().setBackgroundColor(bgColor);
        if (fgColor != null) {
            format.setTextFormat(new TextFormat().setForegroundColor(fgColor).setBold(true));
        }
        return new Request().setRepeatCell(new RepeatCellRequest()
                .setRange(new GridRange()
                        .setSheetId(sheetId)
                        .setStartRowIndex(rowIndex)
                        .setEndRowIndex(rowIndex + 1)
                        .setStartColumnIndex(0)
                        .setEndColumnIndex(50))
                .setCell(new CellData().setUserEnteredFormat(format))
                .setFields("userEnteredFormat(backgroundColor,textFormat)"));
    }

    private static Color color(float r, float g, float b) {
        return new Color().setRed(r).setGreen(g).setBlue(b);
    }

    private static int getOrCreateDailySheet(Sheets sheets, String title) throws Exception {
        Spreadsheet spreadsheet = sheets.spreadsheets().get(SPREADSHEET_ID).execute();
        for (Sheet sheet : spreadsheet.getSheets()) {
            if (title.equals(sheet.getProperties().getTitle())) {
                return sheet.getProperties().getSheetId();
            }
        }
        BatchUpdateSpreadsheetResponse resp = sheets.spreadsheets().batchUpdate(SPREADSHEET_ID,
                new BatchUpdateSpreadsheetRequest().setRequests(Collections.singletonList(
                        new Request().setAddSheet(
                                new AddSheetRequest().setProperties(new SheetProperties().setTitle(title))))))
                .execute();
        return resp.getReplies().get(0).getAddSheet().getProperties().getSheetId();
    }

    private static int getNextEmptyRow(Sheets sheets, String sheetTitle) throws Exception {
        ValueRange resp = sheets.spreadsheets().values()
                .get(SPREADSHEET_ID, "'" + sheetTitle + "'!A:A")
                .execute();
        List<List<Object>> values = resp.getValues();
        return values == null ? 0 : values.size();
    }

    private static void sheetsWriteValues(Sheets sheets, List<List<Object>> rows,
                                          String sheetTitle, int startRow) throws Exception {
        ValueRange body = new ValueRange().setValues(rows);
        sheets.spreadsheets().values()
                .update(SPREADSHEET_ID, "'" + sheetTitle + "'!A" + (startRow + 1), body)
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
