-- Problem:    626. Exchange Seats
-- Link:       https://leetcode.com/problems/exchange-seats/
-- Difficulty: Medium
-- Concepts:   CASE WHEN with several cases, modulo, scalar subquery
-- Date:       2026-11-12
-- Notes:      Change the id, not the student. Cases in order: last AND odd stays,
--             odd -> +1, else (even) -> -1.
--             Chain cases with WHEN ... WHEN ...; ELSE appears once (no "ELSE WHEN").
--             MAX(id) alone in SELECT collapses the table -> use (SELECT MAX(id) FROM Seat).

SELECT CASE WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN id
            WHEN id % 2 = 1 THEN id + 1
            ELSE id - 1
       END AS id,
       student
FROM Seat
ORDER BY id;
