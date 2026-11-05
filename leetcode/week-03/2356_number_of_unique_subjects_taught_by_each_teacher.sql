-- Problem:    2356. Number of Unique Subjects Taught by Each Teacher
-- Link:       https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- Difficulty: Easy
-- Concepts:   COUNT(DISTINCT), GROUP BY
-- Date:       2026-11-05
-- Notes:      Solved first try. COUNT(col) counts rows; COUNT(DISTINCT col) counts
--             unique values (same subject in several departments counts once).

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
