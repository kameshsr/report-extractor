package org.example;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.*;

public class TemplateTypeGAComparator {

    public static void main(String[] args) throws Exception {

        String oldFile = "template1201.xlsx";
        String newFile = "template13x.xlsx";
        String outputFile = "ga.xlsx";

        Map<String, String> oldMap = readTemplateFile(oldFile);
        Map<String, String> newMap = readTemplateFile(newFile);

        List<ResultRow> results = new ArrayList<>();

        for (Map.Entry<String, String> entry : newMap.entrySet()) {
            String code = entry.getKey();
            String newFileTxt = entry.getValue();

            if (!oldMap.containsKey(code)) {
                // Present only in 13x
                results.add(new ResultRow(code, "inserted"));
            } else {
                String oldFileTxt = oldMap.get(code);
                if (!Objects.equals(oldFileTxt, newFileTxt)) {
                    // Present in both but file_txt updated
                    results.add(new ResultRow(code, "updated"));
                } else {
                    // Present in both, no change
                    results.add(new ResultRow(code, ""));
                }
            }
        }

        writeOutput(outputFile, results);

        System.out.println("✔ ga.xlsx generated successfully");
    }

    // ===================== READ INPUT =====================

    /**
     * Reads Excel and returns:
     * key   -> template_typ_code
     * value -> file_txt
     */
    private static Map<String, String> readTemplateFile(String filePath) throws Exception {
        Map<String, String> map = new LinkedHashMap<>();

        try (Workbook wb = new XSSFWorkbook(new FileInputStream(filePath))) {
            Sheet sheet = wb.getSheetAt(0);
            Iterator<Row> rows = sheet.iterator();

            if (!rows.hasNext()) {
                throw new RuntimeException("Empty file: " + filePath);
            }

            Row header = rows.next();
            Map<String, Integer> headerIndex = new HashMap<>();

            for (Cell cell : header) {
                cell.setCellType(CellType.STRING);
                headerIndex.put(cell.getStringCellValue().toLowerCase(), cell.getColumnIndex());
            }

            Integer codeCol = headerIndex.get("template_typ_code");
            Integer fileTxtCol = headerIndex.get("file_txt");

            if (codeCol == null || fileTxtCol == null) {
                throw new RuntimeException("Required columns not found in " + filePath);
            }

            while (rows.hasNext()) {
                Row row = rows.next();

                Cell codeCell = row.getCell(codeCol, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
                Cell txtCell = row.getCell(fileTxtCol, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);

                codeCell.setCellType(CellType.STRING);
                txtCell.setCellType(CellType.STRING);

                String code = codeCell.getStringCellValue().trim();
                String fileTxt = txtCell.getStringCellValue();

                if (!code.isEmpty()) {
                    map.put(code, fileTxt);
                }
            }
        }
        return map;
    }

    // ===================== WRITE OUTPUT =====================

    private static void writeOutput(String filePath, List<ResultRow> rows) throws Exception {

        try (Workbook wb = new XSSFWorkbook()) {
            Sheet sheet = wb.createSheet("ga");

            int r = 0;
            Row header = sheet.createRow(r++);
            header.createCell(0).setCellValue("template_typ_code");
            header.createCell(1).setCellValue("status");

            for (ResultRow rr : rows) {
                Row row = sheet.createRow(r++);
                row.createCell(0).setCellValue(rr.code);
                row.createCell(1).setCellValue(rr.status);
            }

            try (FileOutputStream fos = new FileOutputStream(filePath)) {
                wb.write(fos);
            }
        }
    }

    // ===================== MODEL =====================

    static class ResultRow {
        String code;
        String status;

        ResultRow(String code, String status) {
            this.code = code;
            this.status = status;
        }
    }
}

