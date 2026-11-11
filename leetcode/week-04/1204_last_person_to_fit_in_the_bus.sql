-- Problem:    1204. Last Person to Fit in the Bus
-- Link:       https://leetcode.com/problems/last-person-to-fit-in-the-bus/
-- Difficulty: Medium
-- Concepts:   Window function (running sum: SUM() OVER (ORDER BY ...)), subquery in FROM, LIMIT
-- Date:       2026-11-11
-- Notes:      Window functions keep every row (GROUP BY collapses them).
--             Can't filter a window result in the same query's WHERE -> wrap it in FROM.
--             Inner SELECT must include every column used outside (turn).
--             "Last one that fits" = filter, ORDER BY ... DESC, LIMIT 1.

SELECT person_name
FROM (
    SELECT person_name, weight, turn,
           SUM(weight) OVER (ORDER BY turn) AS Total_Weight
    FROM Queue
) AS t
WHERE Total_Weight <= 1000
ORDER BY turn DESC
LIMIT 1;
