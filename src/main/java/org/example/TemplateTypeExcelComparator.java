package org.example;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.*;

public class TemplateTypeExcelComparator {

    public static void main(String[] args) throws Exception {

        String oldFile = "template_type1201.xlsx";   // OLD
        String newFile = "template_type13x.xlsx";    // NEW

        String insertOut = "template_type_insert.xlsx";
        String updateOut = "template_type_update.xlsx";

        ExcelData oldData = readExcel(oldFile);
        ExcelData newData = readExcel(newFile);

        List<RowData> inserts = new ArrayList<>();
        List<RowData> updates = new ArrayList<>();

        for (Map.Entry<String, RowData> e : newData.rows.entrySet()) {
            String key = e.getKey();
            RowData newRow = e.getValue();

            if (!oldData.rows.containsKey(key)) {
                inserts.add(newRow);
            } else {
                RowData oldRow = oldData.rows.get(key);
                if (!oldRow.equals(newRow)) {
                    updates.add(newRow);
                }
            }
        }

        writeExcel(insertOut, newData.headers, inserts);
        writeExcel(updateOut, newData.headers, updates);

        System.out.println("✔ INSERT rows : " + inserts.size());
        System.out.println("✔ UPDATE rows : " + updates.size());
    }

    // ===================== READ EXCEL =====================

    private static ExcelData readExcel(String filePath) throws Exception {
        Map<String, RowData> map = new LinkedHashMap<>();

        try (Workbook wb = new XSSFWorkbook(new FileInputStream(filePath))) {
            Sheet sheet = wb.getSheetAt(0);
            Iterator<Row> rowIterator = sheet.iterator();

            if (!rowIterator.hasNext()) {
                throw new RuntimeException("Empty Excel file: " + filePath);
            }

            // Read header
            Row headerRow = rowIterator.next();
            List<String> headers = new ArrayList<>();
            Map<String, Integer> headerIndex = new HashMap<>();

            for (Cell cell : headerRow) {
                cell.setCellType(CellType.STRING);
                String name = cell.getStringCellValue().trim();
                headers.add(name);
                headerIndex.put(name.toLowerCase(), cell.getColumnIndex());
            }

            // Find key columns safely
            Integer codeCol = headerIndex.get("template_type_code");
            if (codeCol == null) {
                codeCol = headerIndex.get("code");
            }

            Integer langCol = headerIndex.get("lang_code");

            if (codeCol == null || langCol == null) {
                throw new RuntimeException("Required columns not found (code/template_type_code, lang_code)");
            }

            // Read rows
            while (rowIterator.hasNext()) {
                Row row = rowIterator.next();
                RowData data = RowData.fromRow(row, headers.size(), codeCol, langCol);
                String key = data.code + "|" + data.langCode;
                map.put(key, data);
            }

            return new ExcelData(headers, map);
        }
    }

    // ===================== WRITE EXCEL =====================

    private static void writeExcel(String filePath, List<String> headers, List<RowData> rows) throws Exception {
        try (Workbook wb = new XSSFWorkbook()) {
            Sheet sheet = wb.createSheet("data");

            int r = 0;

            // Header
            Row headerRow = sheet.createRow(r++);
            for (int i = 0; i < headers.size(); i++) {
                headerRow.createCell(i).setCellValue(headers.get(i));
            }

            // Data
            for (RowData rd : rows) {
                Row row = sheet.createRow(r++);
                rd.write(row);
            }

            try (FileOutputStream fos = new FileOutputStream(filePath)) {
                wb.write(fos);
            }
        }
    }

    // ===================== DATA HOLDERS =====================

    static class ExcelData {
        List<String> headers;
        Map<String, RowData> rows;

        ExcelData(List<String> headers, Map<String, RowData> rows) {
            this.headers = headers;
            this.rows = rows;
        }
    }

    static class RowData {
        String code;
        String langCode;
        List<String> values;

        static RowData fromRow(Row row, int totalCols, int codeCol, int langCol) {
            RowData rd = new RowData();
            rd.values = new ArrayList<>();

            for (int i = 0; i < totalCols; i++) {
                Cell cell = row.getCell(i, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
                cell.setCellType(CellType.STRING);
                rd.values.add(cell.getStringCellValue());
            }

            rd.code = rd.values.get(codeCol);
            rd.langCode = rd.values.get(langCol);
            return rd;
        }

        void write(Row row) {
            for (int i = 0; i < values.size(); i++) {
                row.createCell(i).setCellValue(values.get(i));
            }
        }

        @Override
        public boolean equals(Object o) {
            if (!(o instanceof RowData)) return false;
            RowData other = (RowData) o;
            return Objects.equals(this.values, other.values);
        }

        @Override
        public int hashCode() {
            return Objects.hash(values);
        }
    }
}

