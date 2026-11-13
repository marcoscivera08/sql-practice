-- Problem:    1341. Movie Rating
-- Link:       https://leetcode.com/problems/movie-rating/
-- Difficulty: Medium
-- Concepts:   UNION ALL with ORDER BY + LIMIT per part, tie-breaking, JOIN + GROUP BY
-- Date:       2026-11-13
-- Notes:      One ORDER BY per query; tie-breaker after a comma: COUNT(*) DESC, name.
--             Each UNION part with its own ORDER BY/LIMIT needs parentheses.
--             UNION ALL, not UNION: a user and a movie could share the same name.
--             Group by the left table's columns; INNER JOIN when unmatched rows aren't needed.

(SELECT u.name AS results
 FROM Users u
 JOIN MovieRating rt ON u.user_id = rt.user_id
 GROUP BY u.user_id, u.name
 ORDER BY COUNT(*) DESC, u.name
 LIMIT 1)
UNION ALL
(SELECT m.title AS results
 FROM Movies m
 JOIN MovieRating rt ON m.movie_id = rt.movie_id
 WHERE rt.created_at BETWEEN '2020-02-01' AND '2020-02-29'
 GROUP BY m.movie_id, m.title
 ORDER BY AVG(rt.rating) DESC, m.title
 LIMIT 1);
