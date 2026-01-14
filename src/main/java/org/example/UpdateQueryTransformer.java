package org.example;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UpdateQueryTransformer {

    // Regex to capture template_typ_code value
    private static final Pattern TEMPLATE_TYPE_PATTERN =
            Pattern.compile("template_typ_code\\s*=\\s*'([^']+)'", Pattern.CASE_INSENSITIVE);

    // Regex to replace WHERE id='xxx' AND lang_code='yyy';
    private static final Pattern WHERE_ID_PATTERN =
            Pattern.compile("WHERE\\s+id\\s*=\\s*'[^']+'\\s+AND\\s+lang_code\\s*=\\s*'([^']+)'\\s*;",
                    Pattern.CASE_INSENSITIVE);

    public static void main(String[] args) throws IOException {

        Path inputFile = Path.of("input.sql");
        Path outputFile = Path.of("output.sql");

        List<String> lines = Files.readAllLines(inputFile);

        StringBuilder sqlBlock = new StringBuilder();
        StringBuilder output = new StringBuilder();

        for (String line : lines) {
            sqlBlock.append(line).append("\n");

            // Statement ends with ;
            if (line.trim().endsWith(";")) {
                String updatedSql = transformSql(sqlBlock.toString());
                output.append(updatedSql).append("\n");
                sqlBlock.setLength(0);
            }
        }

        Files.writeString(outputFile, output.toString());
        System.out.println("✅ File processed successfully. Output written to: " + outputFile);
    }

    private static String transformSql(String sql) {

        Matcher templateMatcher = TEMPLATE_TYPE_PATTERN.matcher(sql);

        if (!templateMatcher.find()) {
            // No template_typ_code found → return original SQL
            return sql;
        }

        String templateTypeCode = templateMatcher.group(1);

        Matcher whereMatcher = WHERE_ID_PATTERN.matcher(sql);

        if (whereMatcher.find()) {
            String langCode = whereMatcher.group(1);

            String newWhereClause =
                    "WHERE template_typ_code='" + templateTypeCode + "' AND lang_code='" + langCode + "';";

            sql = whereMatcher.replaceFirst(newWhereClause);
        }

        return sql;
    }
}
