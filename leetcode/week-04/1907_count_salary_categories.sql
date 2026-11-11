-- Problem:    1907. Count Salary Categories
-- Link:       https://leetcode.com/problems/count-salary-categories/
-- Difficulty: Medium
-- Concepts:   UNION ALL, COUNT without GROUP BY, fixed text column
-- Date:       2026-11-11
-- Notes:      Solved first try. All categories must appear even with 0 accounts:
--             GROUP BY would drop empty groups, but COUNT(*) without GROUP BY always
--             returns one row (0 if nothing matches). Column names come from the first SELECT.

SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income < 20000
UNION ALL
SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income BETWEEN 20000 AND 50000
UNION ALL
SELECT 'High Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income > 50000;
