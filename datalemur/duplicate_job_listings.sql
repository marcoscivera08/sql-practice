-- Problem:    Duplicate Job Listings (LinkedIn)
-- Link:       https://datalemur.com/questions/duplicate-job-listings
-- Difficulty: Easy
-- Concepts:   Two-level aggregation, GROUP BY multiple columns, HAVING, COUNT(DISTINCT)
-- Date:       2026-11-24
-- Notes:      Logic right first try. Level 1: groups (company, title, description) seen
--             more than once. Level 2: count DISTINCT companies (one company can have
--             several duplicated groups). Subquery in FROM needs an alias (PostgreSQL 14).

SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM (
    SELECT company_id, title, description
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(*) > 1
) AS t;
