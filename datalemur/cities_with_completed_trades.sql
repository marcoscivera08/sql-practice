-- Problem:    Cities With Completed Trades (Robinhood)
-- Link:       https://datalemur.com/questions/completed-trades
-- Difficulty: Easy
-- Concepts:   JOIN, WHERE, GROUP BY, ORDER BY + LIMIT
-- Date:       2026-11-26
-- Notes:      Read the filter value in the statement ('Completed', exact case).
--             PostgreSQL: 'text' = string, "text" = column name -> always single quotes.

SELECT u.city, COUNT(*) AS total_orders
FROM trades t
JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
