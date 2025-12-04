package org.example;

import java.io.*;
import java.nio.file.*;
import java.sql.*;
import java.util.List;

public class QueryExecutor {

    // Database connection details (change as per your setup)
    private static final String DB_URL = "jdbc:postgresql://dev.mosip.net:5433/mosip_regprc";
    private static final String DB_USER = "postgres";
    private static final String DB_PASS = "hV%8X*DiR$502*oj";

    public static void main(String[] args) {
        String inputFile = "output.txt";          // contains extracted reg_id/api
        String outputFile = "query_results.txt";  // results will be stored here

        try {
            // Load PostgreSQL JDBC driver
            Class.forName("org.postgresql.Driver");

            // Connect to DB
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
                 BufferedWriter writer = Files.newBufferedWriter(Paths.get(outputFile),
                         StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {

                List<String> lines = Files.readAllLines(Paths.get(inputFile));

                String sql = "SELECT trn_type_code, status_code, status_comment " +
                        "FROM regprc.registration_transaction " +
                        "WHERE reg_id = ? ORDER BY cr_dtimes DESC LIMIT 2";

                try (PreparedStatement stmt = conn.prepareStatement(sql)) {

                    for (String line : lines) {
                        if (line.trim().isEmpty()) continue;

                        // Extract reg_id (before /api)
                        String regId = line.split("/api")[0].trim();
                        stmt.setString(1, regId);

                        try (ResultSet rs = stmt.executeQuery()) {
                            writer.write("Results for reg_id = " + regId);
                            writer.newLine();

                            boolean hasResults = false;
                            while (rs.next()) {
                                hasResults = true;
                                String trnType = rs.getString("trn_type_code");
                                String statusCode = rs.getString("status_code");
                                String statusComment = rs.getString("status_comment");

                                writer.write("  trn_type_code: " + trnType +
                                        ", status_code: " + statusCode +
                                        ", status_comment: " + statusComment);
                                writer.newLine();
                            }

                            if (!hasResults) {
                                writer.write("  No results found.");
                                writer.newLine();
                            }

                            writer.newLine();
                        }
                    }
                }
            }

            System.out.println("Query results written to: " +
                    Paths.get(outputFile).toAbsolutePath());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
