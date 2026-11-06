-- Problem:    1731. The Number of Employees Which Report to Each Employee
-- Link:       https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- Difficulty: Easy
-- Concepts:   Self-join, GROUP BY, COUNT, AVG, ROUND to integer, ORDER BY
-- Date:       2026-11-06
-- Notes:      "Self join" is a technique, not a keyword: write JOIN with the same table twice.
--             Non-aggregated SELECT columns go in GROUP BY.
--             ROUND(x) with no second argument rounds to the nearest integer.
--             Meaningful aliases (mgr/emp) make self-joins readable.

SELECT mgr.employee_id, mgr.name,
       COUNT(emp.reports_to) AS reports_count,
       ROUND(AVG(emp.age)) AS average_age
FROM Employees mgr
JOIN Employees emp ON mgr.employee_id = emp.reports_to
GROUP BY mgr.employee_id, mgr.name
ORDER BY mgr.employee_id;
