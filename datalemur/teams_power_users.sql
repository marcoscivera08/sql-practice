-- Problem:    Teams Power Users (Microsoft)
-- Link:       https://datalemur.com/questions/teams-power-users
-- Difficulty: Easy
-- Concepts:   Date range on a timestamp, GROUP BY, ORDER BY + LIMIT
-- Date:       2026-11-25
-- Notes:      LIMIT goes after ORDER BY.
--             Timestamp trap: BETWEEN '...' AND '2022-08-31' stops at 00:00 on the 31st.
--             Safe month filter: >= first day AND < first day of next month.
--             Write dates as 'YYYY-MM-DD'.

SELECT sender_id, COUNT(*) AS message_count
FROM messages
WHERE sent_date >= '2022-08-01'
  AND sent_date < '2022-09-01'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
