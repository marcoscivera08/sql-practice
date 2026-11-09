-- Problem:    1789. Primary Department for Each Employee
-- Link:       https://leetcode.com/problems/primary-department-for-each-employee/
-- Difficulty: Easy
-- Concepts:   OR with IN subquery, GROUP BY, HAVING
-- Date:       2026-11-09
-- Notes:      Two cases: flagged 'Y', or employees with a single department.
--             Clause order: GROUP BY before HAVING.
--             The IN subquery must return the column being compared (employee_id).

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
       SELECT employee_id
       FROM Employee
       GROUP BY employee_id
       HAVING COUNT(*) = 1
   );
