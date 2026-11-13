-- Problem:    1321. Restaurant Growth
-- Link:       https://leetcode.com/problems/restaurant-growth/
-- Difficulty: Medium
-- Concepts:   Moving window (ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), nested subqueries, DATE_ADD
-- Date:       2026-11-13
-- Notes:      Aggregate per day FIRST (several customers per day), then the window.
--             WHERE runs BEFORE window functions: filtering first days in the same query
--             breaks the 7-day sums -> compute the window inside, filter outside.
--             Keep days >= first day + 6 (>=, not IN).

SELECT visited_on, amount, average_amount
FROM (
    SELECT visited_on,
           SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
           ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
    FROM (
        SELECT visited_on, SUM(amount) AS amount
        FROM Customer
        GROUP BY visited_on
    ) AS daily
) AS w
WHERE visited_on >= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM Customer)
ORDER BY visited_on;
