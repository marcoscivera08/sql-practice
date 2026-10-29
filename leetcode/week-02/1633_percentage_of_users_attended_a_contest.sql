-- Problem:    1633. Percentage of Users Attended a Contest
-- Link:       https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- Difficulty: Easy
-- Concepts:   Scalar subquery, COUNT, percentages, multi-column ORDER BY
-- Date:       2026-10-29
-- Notes:      Count users with COUNT(col); a raw id is not a count.
--             A subquery used as a value must return ONE number: (SELECT COUNT(*) FROM Users).
--             No JOIN needed when the other table only provides a fixed total.
--             Each ORDER BY column has its own direction: percentage DESC, contest_id ASC.

SELECT r.contest_id,
       ROUND(COUNT(r.user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
