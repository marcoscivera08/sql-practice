-- Problem:    185. Department Top Three Salaries
-- Link:       https://leetcode.com/problems/department-top-three-salaries/
-- Difficulty: Hard
-- Concepts:   DENSE_RANK() OVER (PARTITION BY ... ORDER BY ...), subquery in FROM, JOIN
-- Date:       2026-11-21
-- Notes:      ROW_NUMBER (1,2,3,4), RANK (1,2,2,4), DENSE_RANK (1,2,2,3):
--             "top 3 distinct values" -> DENSE_RANK <= 3.
--             PARTITION BY restarts the ranking per group without collapsing rows.
--             A window function is a SELECT column (comma + alias), never in WHERE:
--             compute it inside, filter outside.

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM (
    SELECT name, salary, departmentId,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
) AS e
JOIN Department d ON e.departmentId = d.id
WHERE e.rnk <= 3;
