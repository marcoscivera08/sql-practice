-- Problem:    620. Not Boring Movies
-- Link:       https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy
-- Concepts:   Modulo (%), AND, ORDER BY ... DESC
-- Date:       2026-10-28
-- Notes:      Logical AND is the word AND; & is a bitwise operator in MySQL.
--             Direction goes after the column: ORDER BY rating DESC.
--             Odd = id % 2 = 1 (odd-numbered), even = id % 2 = 0.

SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;
