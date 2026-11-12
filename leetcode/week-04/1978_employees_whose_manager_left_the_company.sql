-- Problem:    1978. Employees Whose Manager Left the Company
-- Link:       https://leetcode.com/problems/employees-whose-manager-left-the-company/
-- Difficulty: Easy
-- Concepts:   NOT IN subquery, NULL behaviour
-- Date:       2026-11-12
-- Notes:      Solved first try. NULL NOT IN (...) is UNKNOWN -> employees without a
--             manager are dropped automatically. Careful: if the subquery list contains
--             a NULL, NOT IN returns nothing (safe here: employee_id is the PK).

SELECT employee_id
FROM Employees
WHERE salary < 30000
  AND manager_id NOT IN (
      SELECT employee_id
      FROM Employees
  )
ORDER BY employee_id;
