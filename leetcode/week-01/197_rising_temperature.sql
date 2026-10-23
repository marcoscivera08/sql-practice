-- Problem:    197. Rising Temperature
-- Link:       https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy
-- Concepts:   Self-join, DATEDIFF
-- Date:       2026-10-23
-- Notes:      Don't subtract from dates with "- 1" in MySQL (breaks at month/year
--             boundaries); use DATEDIFF(later, earlier) = 1.
--             Use meaningful aliases (today/yesterday) so the join direction is obvious.

SELECT today.id
FROM Weather today
JOIN Weather yesterday
  ON DATEDIFF(today.recordDate, yesterday.recordDate) = 1
WHERE today.temperature > yesterday.temperature;
