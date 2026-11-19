-- Problem:    1517. Find Users With Valid E-Mails
-- Link:       https://leetcode.com/problems/find-users-with-valid-e-mails/
-- Difficulty: Easy
-- Concepts:   Regular expressions (REGEXP / REGEXP_LIKE)
-- Date:       2026-11-19
-- Notes:      ^ start, $ end, [..] one char from a set, * zero or more.
--             Literal dot as [.] ("." alone = any char). Put "-" last inside [] (else it's a range).
--             MySQL REGEXP is case-insensitive by default -> REGEXP_LIKE(..., 'c') to make it strict.

SELECT user_id, name, mail
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$', 'c');
