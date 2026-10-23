-- Problem:    1661. Average Time of Process per Machine
-- Link:       https://leetcode.com/problems/average-time-of-process-per-machine/
-- Difficulty: Easy
-- Concepts:   Self-join on multiple columns, GROUP BY, AVG, ROUND
-- Date:       2026-10-23
-- Notes:      Self-join pairs every row with every match (start-start, end-end...):
--             filter activity_type so only start->end pairs remain.
--             Round the final result: ROUND(AVG(x), 3), not AVG(ROUND(x, 3)).
--             Qualify columns that exist in both aliases (GROUP BY inicio.machine_id).

SELECT inicio.machine_id,
       ROUND(AVG(final.timestamp - inicio.timestamp), 3) AS processing_time
FROM Activity inicio
JOIN Activity final
  ON inicio.machine_id = final.machine_id
 AND inicio.process_id = final.process_id
 AND inicio.activity_type = 'start'
 AND final.activity_type = 'end'
GROUP BY inicio.machine_id;
