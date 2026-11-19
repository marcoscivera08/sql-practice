-- Problem:    602. Friend Requests II: Who Has the Most Friends
-- Link:       https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- Difficulty: Medium
-- Concepts:   UNION ALL to stack two columns, subquery in FROM, GROUP BY, ORDER BY + LIMIT
-- Date:       2026-11-19
-- Notes:      A friendship counts for BOTH people: stack requester_id and accepter_id
--             first, THEN count. Counting each column separately misses totals.
--             UNION ALL (not UNION): each repeat is a different friend.
--             Max = ORDER BY ... DESC LIMIT 1.

SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) AS all_ids
GROUP BY id
ORDER BY num DESC
LIMIT 1;
