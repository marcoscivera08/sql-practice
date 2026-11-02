-- Problem:    550. Game Play Analysis IV
-- Link:       https://leetcode.com/problems/game-play-analysis-iv/
-- Difficulty: Medium
-- Concepts:   Multi-column IN subquery, DATE_ADD + INTERVAL, scalar subquery, COUNT(DISTINCT)
-- Date:       2026-11-02
-- Notes:      DATE_ADD(date, INTERVAL 1 DAY) -> next day (DATE_SUB to go back).
--             Aggregates in SELECT run AFTER WHERE: a total over the whole table
--             needs its own subquery, otherwise numerator = denominator.

SELECT ROUND(COUNT(*) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity
WHERE (player_id, event_date) IN (
    SELECT player_id, DATE_ADD(MIN(event_date), INTERVAL 1 DAY)
    FROM Activity
    GROUP BY player_id
);
