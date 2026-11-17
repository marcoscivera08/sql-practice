-- Problem:    196. Delete Duplicate Emails
-- Link:       https://leetcode.com/problems/delete-duplicate-emails/
-- Difficulty: Easy
-- Concepts:   DELETE with self-join
-- Date:       2026-11-17
-- Notes:      Each p1 row asks: "is there a row with my email and a smaller id?"
--             If yes, p1 is a duplicate -> delete it. The smallest id never matches, so it stays.
--             DELETE p1 removes rows only from that copy. Test with SELECT p1.* first.
--             DELETE without WHERE/condition empties the whole table.

DELETE p1
FROM Person p1
JOIN Person p2 ON p1.email = p2.email
              AND p2.id < p1.id;
