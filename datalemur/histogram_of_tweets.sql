-- Problem:    Histogram of Tweets (Twitter)
-- Link:       https://datalemur.com/questions/sql-histogram-tweets
-- Difficulty: Easy
-- Concepts:   Two-level aggregation (subquery in FROM), EXTRACT(YEAR), PostgreSQL
-- Date:       2026-11-23
-- Notes:      Aggregates can't be nested: level 1 (tweets per user) in a subquery,
--             level 2 (users per tweet count) outside with its own GROUP BY.
--             Filter the year INSIDE, before counting. Outer query only sees the
--             columns the subquery returns.

SELECT tweet_bucket, COUNT(user_id) AS users_num
FROM (
    SELECT user_id, COUNT(tweet_id) AS tweet_bucket
    FROM tweets
    WHERE EXTRACT(YEAR FROM tweet_date) = 2022
    GROUP BY user_id
) AS t
GROUP BY tweet_bucket;
