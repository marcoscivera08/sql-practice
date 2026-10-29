-- Problem:    1075. Project Employees I
-- Link:       https://leetcode.com/problems/project-employees-i/
-- Difficulty: Easy
-- Concepts:   JOIN, GROUP BY, AVG, ROUND
-- Date:       2026-10-29
-- Notes:      Solved first try. LEFT JOIN and INNER JOIN give the same result here
--             because every employee_id in Project exists in Employee (foreign key).
--             INNER JOIN states the intent better; LEFT only when unmatched rows must stay.

SELECT p.project_id, ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
INNER JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY p.project_id;
