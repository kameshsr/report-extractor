package org.example;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Extracts HTML content before the first occurrence of a keyword (case-insensitive)
 * and writes that "first part" as a standalone HTML file.
 */
public class HtmlSplitter {

    /**
     * Extracts everything before the first occurrence of {@code keyword} (case-insensitive)
     * and writes it to {@code outFile} as valid HTML.
     *
     * Behavior:
     *  - Preferred: uses jsoup to parse the HTML and preserve head + only body children
     *    that appear before the element that contains the keyword.
     *  - Fallback: when jsoup is not available, uses a safe substring search and writes
     *    a minimal HTML with the original head (if present) plus the content before the keyword.
     *
     * @param html    input HTML text
     * @param keyword keyword to split on (e.g. "Known Issues")
     * @param outFile path where to save the extracted first-part HTML
     * @throws IOException if writing the output file fails
     */
    public static void extractBeforeKeywordAndSave(String html, String keyword, Path outFile) throws IOException {
        // Defensive checks
        if (html == null) html = "";
        if (keyword == null || keyword.isBlank()) {
            // Nothing to split on: write full content
            Files.writeString(outFile, html);
            return;
        }

        // Try DOM-based approach using jsoup (best)
        try {
            Document doc = Jsoup.parse(html);
            Element body = doc.body();

            // Find the first element in the document whose own text matches the keyword (case-insensitive)
            // We use getElementsMatchingOwnText with a regex to match whole word, case-insensitive.
            String regex = "(?i).*\\b" + Pattern.quote(keyword) + "\\b.*";
            Elements matches = body.getElementsMatchingOwnText(regex);

            Element cutElement = null;
            if (!matches.isEmpty()) {
                cutElement = matches.first();
            } else {
                // If no element matched on ownText, try matching anywhere in element (including descendants)
                Elements matchesAnywhere = body.getElementsMatchingText(regex);
                if (!matchesAnywhere.isEmpty()) cutElement = matchesAnywhere.first();
            }

            if (cutElement == null) {
                // keyword not found — write full document
                Files.writeString(outFile, doc.outerHtml());
                return;
            }

            // Determine which child of <body> contains the cutElement (or which index to cut at).
            List<Node> bodyChildren = body.childNodes();
            int cutIndex = -1;
            for (int i = 0; i < bodyChildren.size(); i++) {
                Node n = bodyChildren.get(i);
                // If the cutElement is the same as or a descendant of this node, set cutIndex = i and break
                if (nodeContains(n, cutElement)) {
                    cutIndex = i;
                    break;
                }
            }

            // If we didn't find a containing direct child, default to searching full HTML text index
            if (cutIndex < 0) {
                // fallback to text-based index
                String lowerHtml = doc.html().toLowerCase(Locale.ROOT);
                int pos = lowerHtml.indexOf(keyword.toLowerCase(Locale.ROOT));
                if (pos < 0) {
                    Files.writeString(outFile, doc.outerHtml());
                    return;
                }
                // simple substring fallback: take everything before pos
                String firstPart = doc.html().substring(0, pos);
                // wrap in minimal html if it doesn't look complete
                Files.writeString(outFile, firstPart);
                return;
            }

            // Build a new document with same head and only body children up to cutIndex (excluding cut child)
            Document outDoc = Document.createShell(doc.baseUri());
            // copy head contents
            outDoc.head().html(doc.head().html());

            // append body children before cutIndex
            for (int i = 0; i < cutIndex; i++) {
                Node copy = bodyChildren.get(i).clone();
                outDoc.body().appendChild(copy);
            }

            // It's possible the cut child contains other nodes before the keyword (e.g., the keyword inside the middle of an element).
            // If so, try to preserve any content of that element that occurs before the keyword text.
            Node cutNode = bodyChildren.get(cutIndex);
            String cutNodeHtml = cutNode.outerHtml();
            String lcCutHtml = cutNodeHtml.toLowerCase(Locale.ROOT);
            int posInCut = lcCutHtml.indexOf(keyword.toLowerCase(Locale.ROOT));
            if (posInCut > 0) {
                // try to keep content of the cutNode before the keyword by truncating its HTML
                String prefixHtml = cutNodeHtml.substring(0, posInCut);
                // append prefixHtml as raw HTML fragment inside body
                outDoc.body().append(prefixHtml);
            }

            // Write pretty output
            Files.writeString(outFile, outDoc.outerHtml());
            return;

        } catch (NoClassDefFoundError | Exception e) {
            // If jsoup missing or parsing fails, fallback to simpler substring approach.
            // (We catch Exception too to be robust; if you want to see the error, log it.)
        }

        // ---------- Fallback: string-based split ----------
        String lower = html.toLowerCase(Locale.ROOT);
        String keyLower = keyword.toLowerCase(Locale.ROOT);
        int idx = lower.indexOf(keyLower);
        if (idx < 0) {
            // no keyword, write full html
            Files.writeString(outFile, html);
            return;
        }

        // Try to preserve <head> if present
        String headFragment = "";
        Matcher headMatcher = Pattern.compile("(?is)(<head\\b[^>]*>)(.*?)(</head>)").matcher(html);
        if (headMatcher.find()) {
            headFragment = headMatcher.group(0); // include full head
        }

        String before = html.substring(0, idx);

        // If the before part already contains <html> and </html> then use it as-is; otherwise wrap.
        if (before.toLowerCase(Locale.ROOT).contains("<html")) {
            Files.writeString(outFile, before);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("<!doctype html>\n<html>\n");
            if (!headFragment.isEmpty()) {
                sb.append(headFragment).append("\n");
            } else {
                sb.append("<head><meta charset=\"utf-8\"></head>\n");
            }
            sb.append("<body>\n");
            sb.append(before);
            sb.append("\n</body>\n</html>");
            Files.writeString(outFile, sb.toString());
        }
    }

    // Helper: returns true if node 'container' is or contains 'target' node
    private static boolean nodeContains(Node container, Node target) {
        if (container == null || target == null) return false;
        if (container.equals(target)) return true;
        for (Node child : container.childNodes()) {
            if (nodeContains(child, target)) return true;
        }
        return false;
    }
}

