package org.example;

import java.io.*;
import java.nio.file.*;
import java.util.regex.*;

public class PacketExtractor {

    public static void main(String[] args) {
        // Input file and output file
//        String inputFile = "";
        String inputFile = "C:\\Users\\kames\\Downloads\\a.html"; // Corrected path
        String outputFile = "output.txt";   // output file

        // Regex: capture value after /status/ ... until ) 
        String urlPattern = "End Point URL: http://packetcreator\\.packetcreator:80/v1/packetcreator/resident/status/([\\w\\-]+/api-internal\\.qajava21_S\\d+_context)\\)";

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

                        // Write to output.txt
                        Path outputPath = Paths.get(outputFile).toAbsolutePath();
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
