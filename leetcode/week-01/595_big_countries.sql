-- Problem:    595. Big Countries
-- Link:       https://leetcode.com/problems/big-countries/
-- Difficulty: Easy
-- Concepts:   SELECT multiple columns, WHERE, OR
-- Date:       2026-10-13
-- Notes:      Columns in SELECT are separated by commas, not AND.
--             AND/OR only combine conditions in WHERE.

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;
