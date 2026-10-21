-- Problem:    1148. Article Views I
-- Link:       https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Concepts:   DISTINCT, AS (alias), ORDER BY, comparing two columns
-- Date:       2026-10-21
-- Notes:      Forgot FROM again. Equality is = (not ==).
--             ORDER BY needs a column; ASC is the default.
--             Alias can be used in ORDER BY but not in WHERE.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
