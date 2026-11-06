-- Problem:    619. Biggest Single Number
-- Link:       https://leetcode.com/problems/biggest-single-number/
-- Difficulty: Easy
-- Concepts:   Subquery in FROM (derived table), GROUP BY, HAVING, MAX
-- Date:       2026-11-06
-- Notes:      Put COUNT in WHERE for the 3rd time: aggregates in conditions -> HAVING.
--             Equality is = (not ==). A derived table in FROM needs an alias.
--             MAX over an empty set returns NULL, which covers the "no single number" case.

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS unic_num;
