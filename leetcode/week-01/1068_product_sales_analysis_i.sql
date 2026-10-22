-- Problem:    1068. Product Sales Analysis I
-- Link:       https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Concepts:   INNER JOIN, table aliases
-- Date:       2026-10-22
-- Notes:      Joined on sale_id, which doesn't exist in Product.
--             Join key = the column present in BOTH tables (product_id).
--             Check both schemas before writing ON.

SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p ON s.product_id = p.product_id;
