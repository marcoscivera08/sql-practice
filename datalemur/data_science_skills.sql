-- Problem:    Data Science Skills (LinkedIn)
-- Link:       https://datalemur.com/questions/matching-skills
-- Difficulty: Easy
-- Concepts:   WHERE IN, GROUP BY, HAVING COUNT, ORDER BY
-- Date:       2026-11-23
-- Notes:      Same pattern as LeetCode 1045 ("has ALL of X").
--             WHERE keeps rows with the 3 skills -> GROUP BY candidate ->
--             HAVING COUNT(*) = 3 keeps only candidates with all three.
--             WHERE filters rows, HAVING filters groups.

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(*) = 3
ORDER BY candidate_id;
