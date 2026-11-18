-- Problem:    1327. List the Products Ordered in a Period
-- Link:       https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- Difficulty: Easy
-- Concepts:   JOIN, date range, GROUP BY, HAVING SUM
-- Date:       2026-11-18
-- Notes:      WHERE filters rows (February 2020) before grouping;
--             HAVING filters groups (>= 100 units) after. Order: WHERE -> GROUP BY -> HAVING.

SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
