-- Problem:    1527. Patients With a Condition
-- Link:       https://leetcode.com/problems/patients-with-a-condition/
-- Difficulty: Easy
-- Concepts:   LIKE with % wildcard, OR
-- Date:       2026-11-16
-- Notes:      Codes are space-separated. A code starting with DIAB1 is either at the
--             start ('DIAB1%') or after a space ('% DIAB1%').
--             '%DIAB1%' is wrong: it also matches codes like SADIAB100.
--             Without a leading %, LIKE anchors the pattern to the first character.

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';
