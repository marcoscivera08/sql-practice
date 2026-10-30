-- Problem:    1193. Monthly Transactions I
-- Link:       https://leetcode.com/problems/monthly-transactions-i/
-- Difficulty: Medium
-- Concepts:   DATE_FORMAT, CASE WHEN inside SUM, GROUP BY multiple columns
-- Date:       2026-10-30
-- Notes:      DATE_FORMAT needs a pattern: '%Y-%m' -> 2018-12.
--             Every CASE closes with END; the value goes in THEN (no "return").
--             Conditional sum: SUM(CASE WHEN cond THEN amount ELSE 0 END).
--             Column names must match the expected output exactly (trans_count).

SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month,
       country,
       COUNT(*) AS trans_count,
       SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
       SUM(amount) AS trans_total_amount,
       SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;
