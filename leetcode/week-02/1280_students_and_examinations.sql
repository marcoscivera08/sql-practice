-- Problem:    1280. Students and Examinations
-- Link:       https://leetcode.com/problems/students-and-examinations/
-- Difficulty: Easy
-- Concepts:   CROSS JOIN, LEFT JOIN on multiple columns, GROUP BY, COUNT(column)
-- Date:       2026-10-26
-- Notes:      CROSS JOIN builds every student x subject pair (needed to show 0s).
--             LEFT JOIN must match BOTH student and subject, or counts mix subjects.
--             COUNT(col) skips NULLs -> 0; COUNT(*) would give 1.
--             ORDER BY needs columns, not just ASC (repeated mistake from 1148).

SELECT student.student_id, student.student_name, sub.subject_name,
       COUNT(ex.student_id) AS attended_exams
FROM Students student
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex
  ON student.student_id = ex.student_id
 AND sub.subject_name = ex.subject_name
GROUP BY student.student_id, student.student_name, sub.subject_name
ORDER BY student.student_id, sub.subject_name;
