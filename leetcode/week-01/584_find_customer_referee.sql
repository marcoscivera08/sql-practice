-- Problem:    584. Find Customer Referee
-- Link:       https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Concepts:   WHERE, OR, NULL handling
-- Date:       2026-10-13
-- Notes:      

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
