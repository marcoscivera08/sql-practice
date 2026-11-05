-- Problem:    1070. Product Sales Analysis III
-- Link:       https://leetcode.com/problems/product-sales-analysis-iii/
-- Difficulty: Medium
-- Concepts:   Multi-column IN subquery, MIN, "first row per group" pattern
-- Date:       2026-11-05
-- Notes:      Same pattern as 1174. Inside IN goes a full query (SELECT ... FROM ... GROUP BY).
--             Left side needs parentheses: (product_id, year) IN (...).
--             GROUP BY belongs in the subquery; grouping outside would drop sales.

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
);
