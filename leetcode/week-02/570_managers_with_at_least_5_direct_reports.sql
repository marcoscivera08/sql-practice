-- Problem:    570. Managers with at Least 5 Direct Reports
-- Link:       https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Concepts:   Self-join, GROUP BY, HAVING
-- Date:       2026-10-27
-- Notes:      HAVING filters groups, so it needs a GROUP BY first; without it the
--             whole table is a single group. Group by manager id (names can repeat).

SELECT mng.name
FROM Employee mng
JOIN Employee emp
  ON mng.id = emp.managerId
GROUP BY mng.id, mng.name
HAVING COUNT(*) >= 5;
