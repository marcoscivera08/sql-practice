-- Problem:    1211. Queries Quality and Percentage
-- Link:       https://leetcode.com/problems/queries-quality-and-percentage/
-- Difficulty: Easy
-- Concepts:   CASE WHEN inside an aggregate, AVG, ROUND, percentages
-- Date:       2026-10-30
-- Notes:      CASE goes INSIDE the aggregate: AVG(CASE WHEN cond THEN 1 ELSE 0 END) = share.
--             AS only takes a name; the calculation goes before it.
--             SUM(x)/COUNT(*) = AVG(x). Use 1/0 instead of TRUE/FALSE (portable).

SELECT query_name,
       ROUND(AVG(rating / position), 2) AS quality,
       ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
