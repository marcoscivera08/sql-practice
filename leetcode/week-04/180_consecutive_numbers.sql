-- Problem:    180. Consecutive Numbers
-- Link:       https://leetcode.com/problems/consecutive-numbers/
-- Difficulty: Medium
-- Concepts:   Triple self-join, DISTINCT
-- Date:       2026-11-11
-- Notes:      Alias goes before the column: s1.num (not num.s1).
--             Join each copy to the NEXT row: s2.id = s1.id + 1.
--             a = b = c doesn't work in SQL -> a = b AND b = c.
--             DISTINCT because 4+ in a row produces duplicate matches.

SELECT DISTINCT s1.num AS ConsecutiveNums
FROM Logs s1
JOIN Logs s2 ON s2.id = s1.id + 1
JOIN Logs s3 ON s3.id = s2.id + 1
WHERE s1.num = s2.num
  AND s2.num = s3.num;
