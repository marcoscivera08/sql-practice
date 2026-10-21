-- Problem:    1378. Replace Employee ID With The Unique Identifier
-- Link:       https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy
-- Concepts:   LEFT JOIN, table aliases
-- Date:       2026-10-21
-- Notes:      LEFT JOIN keeps every row from the left table (FROM);
--             missing matches come back as NULL. Left table = the one
--             whose rows must all appear (Employees).

SELECT u.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI u ON e.id = u.id;
