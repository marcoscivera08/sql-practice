-- Problem:    App Click-through Rate (CTR) (Facebook)
-- Link:       https://datalemur.com/questions/sql-app-ctr
-- Difficulty: Easy
-- Concepts:   SUM(CASE) counts, integer division in PostgreSQL, EXTRACT(YEAR)
-- Date:       2026-11-26
-- Notes:      PostgreSQL integer division: 1 / 2 = 0. 100.0 * (a / b) still gives 0
--             because the parentheses divide integers first. Use 100.0 * a / b.
--             Filter the year INSIDE the subquery: EXTRACT(YEAR FROM col) = 2022.
--             The subquery must return every column used outside (app_id).

SELECT app_id,
       ROUND(100.0 * number_clicks / number_impressions, 2) AS ctr
FROM (
    SELECT app_id,
           SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS number_clicks,
           SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS number_impressions
    FROM events
    WHERE EXTRACT(YEAR FROM timestamp) = 2022
    GROUP BY app_id
) AS t;
