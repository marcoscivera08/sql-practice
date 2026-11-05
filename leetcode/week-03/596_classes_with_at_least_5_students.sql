-- Problem:    596. Classes With at Least 5 Students
-- Link:       https://leetcode.com/problems/classes-with-at-least-5-students/
-- Difficulty: Easy
-- Concepts:   GROUP BY, HAVING
-- Date:       2026-11-05
-- Notes:      Put COUNT in WHERE again (same as 1581). WHERE runs before GROUP BY,
--             so conditions on aggregates go in HAVING, after GROUP BY.

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
