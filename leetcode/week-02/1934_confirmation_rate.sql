-- Problem:    1934. Confirmation Rate
-- Link:       https://leetcode.com/problems/confirmation-rate/
-- Difficulty: Medium
-- Concepts:   LEFT JOIN, GROUP BY, AVG of a boolean, IFNULL, ROUND
-- Date:       2026-10-27
-- Notes:      AVG(condition) = rate, since TRUE=1 and FALSE=0 in MySQL.
--             After a LEFT JOIN, group by the LEFT table's column (right one is NULL
--             for unmatched rows). AVG of only NULLs is NULL -> IFNULL(..., 0).

SELECT sig.user_id,
       ROUND(IFNULL(AVG(con.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups sig
LEFT JOIN Confirmations con
  ON sig.user_id = con.user_id
GROUP BY sig.user_id;
