-- Problem:    1251. Average Selling Price
-- Link:       https://leetcode.com/problems/average-selling-price/
-- Difficulty: Easy
-- Concepts:   LEFT JOIN on a date range (BETWEEN), weighted average, IFNULL, ROUND
-- Date:       2026-10-28
-- Notes:      Weighted average = SUM(price * units) / SUM(units), not AVG(price).
--             Aggregates can't be nested (AVG(SUM(...)) is an error).
--             Date-range condition goes in ON, not WHERE, to keep products with no sales.
--             Products with no sales -> NULL -> IFNULL(..., 0).

SELECT p.product_id,
       ROUND(IFNULL(SUM(p.price * u.units) / SUM(u.units), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
  ON p.product_id = u.product_id
 AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
