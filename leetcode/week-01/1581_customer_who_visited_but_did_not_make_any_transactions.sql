-- Problem:    1581. Customer Who Visited but Did Not Make Any Transactions
-- Link:       https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Difficulty: Easy
-- Concepts:   LEFT JOIN + IS NULL (anti-join), GROUP BY, COUNT
-- Date:       2026-10-22
-- Notes:      Aggregates (COUNT) can't go in WHERE: WHERE runs before GROUP BY.
--             Clause order: SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY.
--             Check "no match" on the right table's primary key (transaction_id).
--             Non-aggregated SELECT columns must be in GROUP BY.

SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
