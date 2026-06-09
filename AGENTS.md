# AGENTS: How to work on report-extractor1

This file gives an immediate orientation for AI coding agents operating on this repository.
Be concise and pragmatic — follow the concrete patterns found in the codebase.

## Big picture / main components

- Multi-purpose Java utilities (single-class mains) under `src/main/java/org/example/`.
  - `MultiDbCsvExporter` — primary report generator. Queries three Postgres DBs, writes a CSV (and XLSX in code), updates a Google Sheet and uploads to Slack. See `MultiDbCsvExporter.java` for configuration and data flow.
  - `QueryExecutor` — per-registration grouping utility that queries `regprc.registration_transaction` for rows per `reg_id`, builds order-insensitive signatures and writes `query_results.txt` + `categories.txt`.
  - Smaller helpers: `PacketExtractor`, `HtmlSplitter`, `RegIdChecker`, etc. These are single-purpose scripts (parse HTML report output, extract reg IDs, de-duplicate, sort) and are intended to be run manually as needed.

- Configuration / secrets:
  - `config.properties` (read by `MultiDbCsvExporter`) — contains `db.password`, `spreadsheet.id`, `slack.token`, `slack.channel`.
  - `credentials.json` — Google service-account credentials used by Sheets API.
  - Note: `QueryExecutor` currently hardcodes DB connection constants inside the source (`DB_URL`, `DB_USER`, `DB_PASS`).

## Important project-specific conventions & patterns

- Each utility is a standalone Java `public static void main` class; run/test by invoking the class directly.
- DB configuration mapping in `MultiDbCsvExporter`: three parallel arrays/structures must stay in sync:
  - `DB_CONFIGS` (jdbcUrl,user,password,label)
  - `QUERIES` (built with `buildQueries(endTime)`)
  - `ENABLED_QUERIES` boolean array controls which DBs/queries run — index positions matter.
  - If you change the number/order of DBs you MUST keep these three aligned.

- Time handling: `UPLOAD_START_TIME` and `START_TIME` are fixed string constants in `MultiDbCsvExporter`; `END_TIME` is fetched from DB1 at runtime via `fetchEndTime()` and used to build SQLs.
- SQL strings are constructed by concatenation into large multiline Java strings. Be careful when modifying to preserve escaping and consistency with Postgres syntax.
- CSV/Excel output: report files are written into `report/` and `multi_db_export.csv` / `10_min_report_*.csv`. Google Sheet updates use `credentials.json` + `spreadsheet.id` from `config.properties`.
- Error / category grouping logic in `QueryExecutor`:
  - Normalizes status_comment with regex transformations (timestamps → `<TS>`, long numbers → `<NUM>`, KER codes → `KER-PUT-<N>`) then produces an order-insensitive signature by sorting row pieces and joining with `;;`.
  - S-numbers are extracted from original input and appended to reg IDs for reporting (pattern `_S(\d+)(?:_|$)`).

## Build / run / debug workflows (PowerShell examples)

- Build (produce compiled classes and dependency copy):
  - mvn -DskipTests package
  - mvn dependency:copy-dependencies -DoutputDirectory=target/dependency

- Run a main class with dependencies on the classpath (PowerShell):
  - Example: run MultiDbCsvExporter
    $cp = "target/classes;target/dependency/*"; java -cp $cp org.example.MultiDbCsvExporter

  - Example: run QueryExecutor (reads `output.txt` by default):
    $cp = "target/classes;target/dependency/*"; java -cp $cp org.example.QueryExecutor

- In practice many developers run from IntelliJ (the code contains IDE run/debug tips) — convenient for setting breakpoints in long SQL paths.

## Integration points & external dependencies

- Postgres (3 DBs): `mosip_regprc`, `mosip_credential`, `mosip_ida`. JDBC driver configured in `pom.xml` (org.postgresql:postgresql).
- Google Sheets API: `google-api-services-sheets`, `google-auth-library-oauth2-http`. Requires `credentials.json` service account and `spreadsheet.id` in `config.properties`.
- Slack: direct HTTP calls using a token from `config.properties` (string `slack.token`), uploaded via Slack external upload flow.
- Apache POI: used for color/styled Excel output (see `writeExcel` in `MultiDbCsvExporter`).

## Project-specific gotchas / quick wins for code changes

- Secrets are present in repository files (`config.properties`, `credentials.json`, and a hardcoded password in `QueryExecutor`). Any change that touches these files should avoid committing secrets; prefer environment variables or the existing `config.properties` pattern.
- Large inline SQLs assume Postgres and schema-qualified table names (e.g. `regprc.registration_transaction`). Keep schema references when refactoring queries.
- `ENABLED_QUERIES`, `DB_CONFIGS`, and `QUERIES` are position-dependent arrays — refactor carefully (or convert to a single typed list of DB-config/query objects first).
- Use the existing normalization regexes in `QueryExecutor` when modifying signature logic; they capture many edge cases (stack traces, timestamps, long numbers).

## Files and places to inspect when editing

- `src/main/java/org/example/MultiDbCsvExporter.java` — main reporting logic, DB config, Google Sheets + Slack flows.
- `src/main/java/org/example/QueryExecutor.java` — grouping logic, normalization, and category output.
- `config.properties`, `credentials.json` — runtime configuration & secrets.
- `pom.xml` — Java 21 target, dependencies. No shading of dependencies; runtime classpath must include `target/dependency/*` or run from IDE.
- `report/` — output folder; example CSV files live here and show expected CSV layout.

## Safety & commit guidance (discoverable patterns)

- Do not check in rotated credentials or paste real service-account JSON into commits. The repo currently contains secrets; rotate them and move to `.gitignore`/vault before further sharing.
- When adding new external credentials, follow `config.properties` style (read from file) rather than hardcoding into Java sources.

## Useful example references inside the codebase

- Signature normalization and S-number extraction: `QueryExecutor.extractSNumber`, `QueryExecutor.normalizeComment`.
- DB-config + SQL construction: `MultiDbCsvExporter.DB_CONFIGS`, `MultiDbCsvExporter.buildQueries(String)`.
- Google Sheets write + color mapping: `MultiDbCsvExporter.writeToGoogleSheet` + `sheetsApplyColors`.


If you want, I can now (A) add run scripts (PowerShell .ps1) to automate build+run with copied dependencies, (B) refactor `DB_CONFIGS`/`QUERIES` into a typed config object, or (C) create a small checklist/PR template for removing secrets. Which would you like next?
