-- Problem:    1141. User Activity for the Past 30 Days I
-- Link:       https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- Difficulty: Easy
-- Concepts:   Date range with BETWEEN, COUNT(DISTINCT), GROUP BY
-- Date:       2026-11-05
-- Notes:      30 days ending 07-27 inclusive starts 06-28 (BETWEEN includes both ends).
--             Output column must be named exactly "day"; avoid reserved words like date.

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
