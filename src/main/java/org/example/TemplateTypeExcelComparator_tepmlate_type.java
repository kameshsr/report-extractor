package org.example;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.*;

public class TemplateTypeExcelComparator_tepmlate_type {

    // Change column indexes if needed
    private static final int CODE_COL = 8;
    private static final int LANG_CODE_COL = 9;

    public static void main(String[] args) throws Exception {

        String oldFile = "template1201.xlsx";
        String newFile = "template13x.xlsx";

        String insertOut = "template_insert.xlsx";
        String updateOut = "template_update.xlsx";

        Map<String, RowData> oldData = readExcel(oldFile);
        Map<String, RowData> newData = readExcel(newFile);

        List<RowData> inserts = new ArrayList<>();
        List<RowData> updates = new ArrayList<>();

        for (Map.Entry<String, RowData> entry : newData.entrySet()) {
            String key = entry.getKey();
            RowData newRow = entry.getValue();

            if (!oldData.containsKey(key)) {
                // NEW ROW
                inserts.add(newRow);
            } else {
                RowData oldRow = oldData.get(key);
                if (!oldRow.equals(newRow)) {
                    updates.add(newRow);
                }
            }
        }

        writeExcel(insertOut, inserts);
        writeExcel(updateOut, updates);

        System.out.println("✔ Insert rows: " + inserts.size());
        System.out.println("✔ Updated rows: " + updates.size());
    }

    // ------------------ Helpers ------------------

    private static Map<String, RowData> readExcel(String filePath) throws Exception {
        Map<String, RowData> map = new LinkedHashMap<>();

        try (Workbook wb = new XSSFWorkbook(new FileInputStream(filePath))) {
            Sheet sheet = wb.getSheetAt(0);
            Iterator<Row> rows = sheet.iterator();

            Row header = rows.next(); // skip header

            while (rows.hasNext()) {
                Row row = rows.next();
                RowData data = RowData.fromRow(row);

                String key = data.code + "|" + data.langCode;
                map.put(key, data);
            }
        }
        return map;
    }

    private static void writeExcel(String filePath, List<RowData> rows) throws Exception {
        try (Workbook wb = new XSSFWorkbook()) {
            Sheet sheet = wb.createSheet("data");

            int r = 0;
            if (!rows.isEmpty()) {
                // write header
                Row header = sheet.createRow(r++);
                rows.get(0).writeHeader(header);
            }

            for (RowData rd : rows) {
                Row row = sheet.createRow(r++);
                rd.write(row);
            }

            try (FileOutputStream fos = new FileOutputStream(filePath)) {
                wb.write(fos);
            }
        }
    }

    // ------------------ RowData ------------------

    static class RowData {
        String code;
        String langCode;
        List<String> values;

        static RowData fromRow(Row row) {
            RowData rd = new RowData();
            rd.values = new ArrayList<>();

            for (Cell cell : row) {
                cell.setCellType(CellType.STRING);
                rd.values.add(cell.getStringCellValue());
            }

            rd.code = rd.values.get(CODE_COL);
            rd.langCode = rd.values.get(LANG_CODE_COL);
            return rd;
        }

        void write(Row row) {
            for (int i = 0; i < values.size(); i++) {
                row.createCell(i).setCellValue(values.get(i));
            }
        }

        void writeHeader(Row row) {
            for (int i = 0; i < values.size(); i++) {
                row.createCell(i).setCellValue("COL_" + i);
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

