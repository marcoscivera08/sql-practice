-- Problem:    176. Second Highest Salary
-- Link:       https://leetcode.com/problems/second-highest-salary/
-- Difficulty: Medium
-- Concepts:   DISTINCT, ORDER BY + LIMIT/OFFSET, scalar subquery returning NULL
-- Date:       2026-11-17
-- Notes:      LIMIT/OFFSET go last, after ORDER BY. Without ORDER BY "2nd row" is arbitrary.
--             DISTINCT so ties at the top don't count as the 2nd salary.
--             An empty subquery in FROM gives zero rows; a scalar subquery in SELECT gives NULL.
--             (In 619 the NULL came from MAX over an empty set.)

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
