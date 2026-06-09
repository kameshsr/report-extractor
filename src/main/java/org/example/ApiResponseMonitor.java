package org.example;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/**
 * Continuously polls the mock-ABIS expectation endpoint every 1 second.
 * Detects when the response changes between EMPTY and NON_EMPTY, logs the
 * transition with a timestamp to both the console and api_response_changes.log.
 *
 * Uses a ScheduledExecutorService so the 1-second tick fires on a wall-clock
 * schedule, independent of how long each HTTP request takes.
 */
public class ApiResponseMonitor {

    private static final String API_URL =
            "https://api-internal.qa21.mosip.net/v1/mock-abis-service/config/expectation";

    private static final int    POLL_INTERVAL_MS = 1000;
    private static final String CHANGE_LOG_FILE  = "dsl/api_response_changes.log";
    private static final DateTimeFormatter TS_FMT =
            DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

    private static final Logger logger = Logger.getLogger(ApiResponseMonitor.class.getName());

    // Shared state — updated atomically after each successful poll
    private static final AtomicReference<String> previousState = new AtomicReference<>(null);
    private static final AtomicReference<String> previousBody  = new AtomicReference<>(null);

    private static HttpClient   httpClient;
    private static ObjectMapper mapper;

    public static void main(String[] args) throws Exception {
        setupLogger();

        httpClient = HttpClient.newBuilder()
                .connectTimeout(Duration.ofSeconds(5))
                .build();

        mapper = new ObjectMapper();

        logger.info("Starting API monitor — polling every " + POLL_INTERVAL_MS + " ms");
        logger.info("Target: " + API_URL);
        logger.info("Change log: " + CHANGE_LOG_FILE);

        // Use 2 threads so a slow request does not block the next scheduled tick.
        // Intentionally not closed — runs for the lifetime of the process.
        @SuppressWarnings("resource")
        ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(2);
        scheduler.scheduleAtFixedRate(
                ApiResponseMonitor::poll,
                0,
                POLL_INTERVAL_MS,
                TimeUnit.MILLISECONDS
        );

        // Keep main thread alive
        Thread.currentThread().join();
    }

    // -------------------------------------------------------------------------
    // Poll task — runs every 1 second on the scheduler thread
    // -------------------------------------------------------------------------

    private static void poll() {
        String currentBody;
        String currentState;

        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(API_URL))
                    .timeout(Duration.ofSeconds(8))   // must be < poll interval * some factor
                    .GET()
                    .build();

            HttpResponse<String> response =
                    httpClient.send(request, HttpResponse.BodyHandlers.ofString());

            currentBody  = response.body() == null ? "" : response.body().trim();
            currentState = isEmpty(currentBody) ? "EMPTY" : "NON_EMPTY";

            logger.fine("Poll OK — state=" + currentState + " body=" + truncate(currentBody));

        } catch (Exception e) {
            currentState = "ERROR";
            currentBody  = null;
            logger.warning("[" + now() + "] Poll failed: " + e.getMessage());
        }

        String prev = previousState.get();

        if (prev == null) {
            // Very first poll — just record baseline
            previousState.set(currentState);
            previousBody.set(currentBody);
            logger.info("[" + now() + "] Initial state: " + currentState
                    + " | body: " + truncate(currentBody));
            return;
        }

        if (!currentState.equals(prev)) {
            String ts = now();
            String changeMsg = String.format(
                    "[%s] CHANGE DETECTED: %s -> %s%n  Previous body: %s%n  Current  body: %s",
                    ts,
                    prev,
                    currentState,
                    truncate(previousBody.get()),
                    truncate(currentBody));

            logger.info(changeMsg);
            writeToFile(changeMsg);

            previousState.set(currentState);
            previousBody.set(currentBody);
        }
    }

    // -------------------------------------------------------------------------
    // Helpers
    // -------------------------------------------------------------------------

    /** Returns true if the body is logically "empty": blank, null, [], {}, or JSON null. */
    private static boolean isEmpty(String body) {
        if (body == null || body.isBlank()) return true;
        if (body.equals("null"))            return true;
        try {
            JsonNode node = mapper.readTree(body);
            if (node.isArray())  return node.isEmpty();
            if (node.isObject()) return node.isEmpty();
            if (node.isNull())   return true;
        } catch (Exception ignored) {
            // Not valid JSON — non-blank text is treated as non-empty
        }
        return false;
    }

    private static String now() {
        return LocalDateTime.now().format(TS_FMT);
    }

    private static String truncate(String s) {
        if (s == null) return "<null>";
        return s.length() <= 300 ? s : s.substring(0, 300) + "... [truncated]";
    }

    private static void writeToFile(String message) {
        try (PrintWriter pw = new PrintWriter(new FileWriter(CHANGE_LOG_FILE, true))) {
            pw.println(message);
            pw.println("--------------------------------------------------");
        } catch (IOException e) {
            logger.severe("Failed to write to change log file: " + e.getMessage());
        }
    }

    private static void setupLogger() throws IOException {
        Files.createDirectories(Paths.get("dsl"));
        logger.setUseParentHandlers(false);

        Formatter fmt = new Formatter() {
            @Override
            public String format(LogRecord r) {
                return String.format("[%s] [%s] %s%n",
                        LocalDateTime.now().format(TS_FMT),
                        r.getLevel(),
                        r.getMessage());
            }
        };

        ConsoleHandler ch = new ConsoleHandler();
        ch.setFormatter(fmt);
        ch.setLevel(Level.ALL);
        logger.addHandler(ch);

        // Rolling file — up to 10 MB, 5 files
        FileHandler fh = new FileHandler("dsl/api_monitor_%g.log", 10 * 1024 * 1024, 5, true);
        fh.setFormatter(fmt);
        fh.setLevel(Level.ALL);
        logger.addHandler(fh);

        logger.setLevel(Level.ALL);
    }
}
