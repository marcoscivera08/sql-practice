-- Problem:    1683. Invalid Tweets
-- Link:       https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy
-- Concepts:   String functions, CHAR_LENGTH
-- Date:       2026-10-21
-- Notes:      CHAR_LENGTH counts characters; LENGTH counts bytes
--             (differs with accents/emojis). Invalid = strictly > 15.

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
