package org.example;

import java.io.*;
import java.nio.file.*;
import java.sql.*;
import java.util.*;
import java.util.regex.*;

public class RegIdCheckerCopy {

    private static final String DB_URL  = "jdbc:postgresql://172.31.13.251:5432/mosip_regprc";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "797mKZO1Bo";

    private static final int BATCH_SIZE = 1000;

    private static final Pattern REG_ID_PATTERN =
            Pattern.compile(".*/([^/]+?)(?=-[^/]*\\.zip)");

    public static void main(String[] args) throws Exception {
        Path inputPath        = Paths.get("input.txt");
        Path processedPath    = Paths.get("processed_reg_id.txt");
        Path nonProcessedPath = Paths.get("non_processed_regid.txt");

        if (!Files.exists(inputPath)) {
            System.err.println("Input file not found: " + inputPath);
            System.exit(1);
        }

        // Step 1: read all lines, build reg_id → original line map
        Map<String, String> regIdToLine = new LinkedHashMap<>();
        int total = 0, skipped = 0;

        try (BufferedReader reader = Files.newBufferedReader(inputPath)) {
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
                regIdToLine.put(regId, trimmed);
            }
        }

        System.out.printf("Read %d lines, %d unique reg_ids, %d skipped%n",
                total, regIdToLine.size(), skipped);

        // Step 2: batch IN queries — collect reg_ids that exist in registration_transaction
        Set<String> processedIds = new HashSet<>();
        List<String> allRegIds = new ArrayList<>(regIdToLine.keySet());
        int totalBatches = (int) Math.ceil((double) allRegIds.size() / BATCH_SIZE);

        System.out.printf("Querying DB in %d batch(es) of up to %d...%n", totalBatches, BATCH_SIZE);

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
            for (int b = 0; b < totalBatches; b++) {
                int from  = b * BATCH_SIZE;
                int to    = Math.min(from + BATCH_SIZE, allRegIds.size());
                List<String> batch = allRegIds.subList(from, to);

                String placeholders = String.join(",", Collections.nCopies(batch.size(), "?"));
                String sql = "SELECT DISTINCT reg_id FROM regprc.registration_transaction " +
                             "WHERE reg_id IN (" + placeholders + ")";

                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    for (int i = 0; i < batch.size(); i++) {
                        ps.setString(i + 1, batch.get(i));
                    }
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            processedIds.add(rs.getString(1));
                        }
                    }
                }
                System.out.printf("  Batch %d/%d done (rows %d-%d)%n", b + 1, totalBatches, from + 1, to);
            }
        }

        // Step 3: write output files
        int processed = 0, notProcessed = 0;

        try (BufferedWriter procWriter    = Files.newBufferedWriter(processedPath);
             BufferedWriter nonProcWriter = Files.newBufferedWriter(nonProcessedPath)) {

            for (Map.Entry<String, String> entry : regIdToLine.entrySet()) {
                if (processedIds.contains(entry.getKey())) {
                    procWriter.write(entry.getValue());
                    procWriter.newLine();
                    processed++;
                } else {
                    nonProcWriter.write(entry.getValue());
                    nonProcWriter.newLine();
                    notProcessed++;
                }
            }
        }

        System.out.println("\n--- Summary ---");
        System.out.println("Total lines     : " + total);
        System.out.println("Unique reg_ids  : " + regIdToLine.size());
        System.out.println("Processed       : " + processed    + "  → " + processedPath);
        System.out.println("Not processed   : " + notProcessed + "  → " + nonProcessedPath);
        System.out.println("Skipped (parse) : " + skipped);
        System.out.println("DB queries made : " + totalBatches + " (batch size " + BATCH_SIZE + ")");
    }

    static String extractRegId(String line) {
        String pathPart = line.contains(",") ? line.substring(0, line.indexOf(',')) : line;
        Matcher m = REG_ID_PATTERN.matcher(pathPart);
        if (m.find()) return m.group(1);
        return null;
    }
}
