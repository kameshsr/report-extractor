package org.example;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

import java.io.File;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class SortTransactionsByTime {

    public static void main(String[] args) throws Exception {

        ObjectMapper mapper = new ObjectMapper();

        // Read JSON file
        JsonNode root = mapper.readTree(new File("input.json"));

        ArrayNode responseArray = (ArrayNode) root.get("response");

        List<JsonNode> transactions = new ArrayList<>();

        responseArray.forEach(transactions::add);

        // Sort by createdDateTimes DESC (latest first)
        transactions.sort(
                Comparator.comparing((JsonNode node) ->
                        Instant.parse(node.get("createdDateTimes").asText())
                ).reversed()
        );

        ArrayNode sortedArray = mapper.createArrayNode();
        sortedArray.addAll(transactions);

        ((com.fasterxml.jackson.databind.node.ObjectNode) root).set("response", sortedArray);

        // Print sorted JSON
        System.out.println(mapper.writerWithDefaultPrettyPrinter().writeValueAsString(root));
    }
}