-- Problem:    1667. Fix Names in a Table
-- Link:       https://leetcode.com/problems/fix-names-in-a-table/
-- Difficulty: Easy
-- Concepts:   String functions: UPPER, LOWER, LEFT, SUBSTRING, CONCAT
-- Date:       2026-11-16
-- Notes:      Transform in SELECT, don't filter in WHERE.
--             Functions take a value and return a new one: UPPER(x), not "IN UPPER".
--             Build inside-out: cut (LEFT/SUBSTRING) -> case (UPPER/LOWER) -> join (CONCAT).
--             SQL string positions start at 1.

SELECT user_id,
       CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;
