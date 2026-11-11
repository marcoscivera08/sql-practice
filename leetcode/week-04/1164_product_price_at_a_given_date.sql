-- Problem:    1164. Product Price at a Given Date
-- Link:       https://leetcode.com/problems/product-price-at-a-given-date/
-- Difficulty: Medium
-- Concepts:   UNION ALL, multi-column IN with MAX, GROUP BY + HAVING MIN
-- Date:       2026-11-11
-- Notes:      Two cases computed differently -> UNION ALL (same columns, same order).
--             Part A: latest change on/before the date ("last row per group" with MAX).
--             Part B: products whose FIRST change is after the date -> HAVING MIN(...) > date.
--             Numbers without quotes (10, not '10').

SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)
UNION ALL
SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16';
