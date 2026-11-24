-- Problem:    Page With No Likes (Facebook)
-- Link:       https://datalemur.com/questions/sql-page-with-no-likes
-- Difficulty: Easy
-- Concepts:   Anti-join: LEFT JOIN + IS NULL, or NOT IN
-- Date:       2026-11-24
-- Notes:      Mixed both approaches: INNER JOIN keeps only pages WITH likes, then
--             NOT IN removes them -> empty result. Pick ONE.
--             LEFT JOIN + IS NULL is safer (NOT IN breaks if the list contains NULL).

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes l ON p.page_id = l.page_id
WHERE l.page_id IS NULL
ORDER BY p.page_id;
