-- Problem:    585. Investments in 2016
-- Link:       https://leetcode.com/problems/investments-in-2016/
-- Difficulty: Medium
-- Concepts:   Two IN subqueries (single and multi-column), GROUP BY + HAVING COUNT, ROUND(SUM)
-- Date:       2026-11-20
-- Notes:      Each condition is a list built with GROUP BY + HAVING and used with IN.
--             Shared value -> HAVING COUNT(*) > 1; unique location -> HAVING COUNT(*) = 1.
--             Multi-column IN needs parentheses: (lat, lon) IN (SELECT lat, lon ...).

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
          SELECT tiv_2015
          FROM Insurance
          GROUP BY tiv_2015
          HAVING COUNT(*) > 1
      )
  AND (lat, lon) IN (
          SELECT lat, lon
          FROM Insurance
          GROUP BY lat, lon
          HAVING COUNT(*) = 1
      );
