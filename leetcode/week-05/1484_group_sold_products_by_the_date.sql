-- Problem:    1484. Group Sold Products By The Date
-- Link:       https://leetcode.com/problems/group-sold-products-by-the-date/
-- Difficulty: Easy
-- Concepts:   GROUP_CONCAT (DISTINCT, ORDER BY, SEPARATOR), COUNT(DISTINCT)
-- Date:       2026-11-18
-- Notes:      Solved first try. GROUP_CONCAT joins a group's texts into one string;
--             DISTINCT removes repeats, ORDER BY sorts them, SEPARATOR sets the delimiter.

SELECT sell_date,
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
