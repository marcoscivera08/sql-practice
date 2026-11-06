-- Problem:    1045. Customers Who Bought All Products
-- Link:       https://leetcode.com/problems/customers-who-bought-all-products/
-- Difficulty: Medium
-- Concepts:   GROUP BY, HAVING with scalar subquery, COUNT(DISTINCT)
-- Date:       2026-11-06
-- Notes:      Outer query = per-customer count (COUNT DISTINCT, customers repeat products).
--             Subquery = fixed total, must return ONE number: (SELECT COUNT(*) FROM Product).
--             Parentheses wrap the whole subquery. No JOIN needed for a fixed total.

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);
