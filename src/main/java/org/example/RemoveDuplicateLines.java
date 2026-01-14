package org.example;

import java.io.*;
import java.nio.file.*;
import java.util.LinkedHashSet;
import java.util.Set;

public class RemoveDuplicateLines {

    public static void main(String[] args) throws IOException {

        // Input and output file paths
        String inputFile = "input.txt";
        String outputFile = "output.txt";

        removeDuplicates(inputFile, outputFile);

        System.out.println("✔ Duplicates removed. Output written to: " + outputFile);
    }

    /**
     * Removes duplicate lines from input file and writes unique lines to output file.
     * Order of first appearance is preserved.
     */
    public static void removeDuplicates(String inputFile, String outputFile) throws IOException {

        Set<String> uniqueLines = new LinkedHashSet<>();

        try (BufferedReader reader = Files.newBufferedReader(Path.of(inputFile))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (!line.isEmpty()) {
                    uniqueLines.add(line);
                }
            }
        }

        try (BufferedWriter writer = Files.newBufferedWriter(Path.of(outputFile))) {
            for (String line : uniqueLines) {
                writer.write(line);
                writer.newLine();
            }
        }
    }
}

