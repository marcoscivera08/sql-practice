-- Problem:    Laptop vs Mobile Viewership (New York Times)
-- Link:       https://datalemur.com/questions/laptop-mobile-viewership
-- Difficulty: Easy
-- Concepts:   Conditional counting with SUM(CASE), pivoting categories into columns
-- Date:       2026-11-25
-- Notes:      One SUM(CASE WHEN ... THEN 1 ELSE 0 END) per output column.
--             Repeated mistakes: "ELSE WHEN" doesn't exist (chain WHEN ... WHEN);
--             every CASE closes with END. Alias of a subquery goes OUTSIDE its parentheses.

SELECT
    SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
    SUM(CASE WHEN device_type IN ('phone', 'tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
