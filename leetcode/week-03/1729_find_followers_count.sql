-- Problem:    1729. Find Followers Count
-- Link:       https://leetcode.com/problems/find-followers-count/
-- Difficulty: Easy
-- Concepts:   GROUP BY, COUNT, ORDER BY
-- Date:       2026-11-06
-- Notes:      Solved first try. Each row = follower_id follows user_id,
--             so count followers per user_id.

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
