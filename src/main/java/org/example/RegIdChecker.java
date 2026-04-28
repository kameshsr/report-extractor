package org.example;

import java.io.*;
import java.nio.file.*;
import java.sql.*;
import java.util.regex.*;

/**
 * Reads an input file where each line has the format:
 *   /some/path/<reg_id>-<rest>.zip,STATUS,context
 *
 * Extracts the reg_id (digits between the last '/' and the first '-'),
 * queries regprc.registration_transaction, and writes:
 *   processed_reg_id.txt     – lines whose reg_id HAS records in the DB
 *   non_processed_regid.txt  – lines whose reg_id has NO records in the DB
 *
 * Usage:  java RegIdChecker <input-file>
 */
public class RegIdChecker {

    private static final String DB_URL  = "jdbc:postgresql://172.31.13.251:5432/mosip_regprc";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "797mKZO1Bo";

    private static final String QUERY =
            "SELECT 1 FROM regprc.registration_transaction WHERE reg_id = ? LIMIT 1";

    // Captures the segment of digits between the last '/' and the first '-'
    private static final Pattern REG_ID_PATTERN =
            Pattern.compile(".*/([^/]+?)(?=-[^/]*\\.zip)");

    public static void main(String[] args) throws Exception {
        Path inputPath      = Paths.get("input.txt");
        Path processedPath  = Paths.get("processed_reg_id.txt");
        Path nonProcessedPath = Paths.get("non_processed_regid.txt");

        if (!Files.exists(inputPath)) {
            System.err.println("Input file not found: " + inputPath);
            System.exit(1);
        }

        int total = 0, processed = 0, notProcessed = 0, skipped = 0;

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
             PreparedStatement ps = conn.prepareStatement(QUERY);
             BufferedReader reader = Files.newBufferedReader(inputPath);
             BufferedWriter procWriter    = Files.newBufferedWriter(processedPath);
             BufferedWriter nonProcWriter = Files.newBufferedWriter(nonProcessedPath)) {

            System.out.println("Connected to DB. Processing input file: " + inputPath);

            String line;
            while ((line = reader.readLine()) != null) {
                String trimmed = line.trim();
                if (trimmed.isEmpty()) continue;

                total++;
                String regId = extractRegId(trimmed);
                if (regId == null) {
                    System.err.println("  [SKIP] Could not extract reg_id from: " + trimmed);
                    skipped++;
                    continue;
                }

                ps.setString(1, regId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        // Record exists → processed
                        procWriter.write(trimmed);
                        procWriter.newLine();
                        processed++;
                        System.out.println("  [PROCESSED]     " + regId);
                    } else {
                        // No record → not processed
                        nonProcWriter.write(trimmed);
                        nonProcWriter.newLine();
                        notProcessed++;
                        System.out.println("  [NOT PROCESSED] " + regId);
                    }
                }
            }
        }

        System.out.println("\n--- Summary ---");
        System.out.println("Total lines     : " + total);
        System.out.println("Processed       : " + processed  + "  → " + processedPath);
        System.out.println("Not processed   : " + notProcessed + "  → " + nonProcessedPath);
        System.out.println("Skipped (parse) : " + skipped);
    }

    /**
     * Extracts the reg_id — digits between the last '/' and the first '-'
     * in the zip filename portion of the line.
     *
     * Example line:
     *   /home/.../2MB_50K_14/10219102001000920260115054824-10219_10200-20260115054824.zip,NEW,...
     * Returns: 10219102001000920260115054824
     */
    static String extractRegId(String line) {
        // Work only on the path portion (before the first comma)
        String pathPart = line.contains(",") ? line.substring(0, line.indexOf(',')) : line;

        Matcher m = REG_ID_PATTERN.matcher(pathPart);
        if (m.find()) {
            return m.group(1);
        }
        return null;
    }
}