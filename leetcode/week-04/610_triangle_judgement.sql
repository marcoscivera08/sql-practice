-- Problem:    610. Triangle Judgement
-- Link:       https://leetcode.com/problems/triangle-judgement/
-- Difficulty: Easy
-- Concepts:   CASE WHEN to build a column, AND
-- Date:       2026-11-09
-- Notes:      Triangle inequality: each side < sum of the other two (3 checks).
--             CASE is one more SELECT item: needs a comma before it.
--             Output strings must match exactly ('Yes', not 'YES').

SELECT x, y, z,
       CASE WHEN x < y + z AND y < x + z AND z < x + y
            THEN 'Yes' ELSE 'No'
       END AS triangle
FROM Triangle;
