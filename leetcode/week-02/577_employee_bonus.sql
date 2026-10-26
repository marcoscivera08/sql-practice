-- Problem:    577. Employee Bonus
-- Link:       https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy
-- Concepts:   LEFT JOIN, NULL handling
-- Date:       2026-10-26
-- Notes:      Employees without a bonus get NULL after the LEFT JOIN, and
--             NULL < 1000 is UNKNOWN -> must add OR bonus IS NULL.

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
