# SQL Practice

Daily SQL practice (2 problems per weekday) to keep query-writing sharp for Data Analyst / Data Science roles.

- **Main track:** [LeetCode SQL 50](https://leetcode.com/studyplan/top-sql-50/) (MySQL / PostgreSQL)
- **Second track (later):** [DataLemur](https://datalemur.com/questions) — real interview questions from tech companies (PostgreSQL)

## Structure

```
sql-practice/
├── README.md
└── leetcode/
    ├── week-01/
    │   ├── 1757_recyclable_and_low_fat_products.sql
    │   └── ...
    └── week-02/
```

Each file follows the same template:

```sql
-- Problem:    1757. Recyclable and Low Fat Products
-- Link:       https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Difficulty: Easy
-- Concepts:   WHERE, AND
-- Date:       2026-10-13
-- Notes:      What I learned / what tripped me up

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
```

## Progress

| # | Problem | Difficulty | Concepts | Date |
|---|---------|-----------|----------|------|
| 1 | [1757. Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/) | Easy | WHERE | |
| 2 | [584. Find Customer Referee](https://leetcode.com/problems/find-customer-referee/) | Easy | NULL handling | |
| 3 | [595. Big Countries](https://leetcode.com/problems/big-countries/) | Easy | OR / UNION | |
| 4 | [1148. Article Views I](https://leetcode.com/problems/article-views-i/) | Easy | DISTINCT, ORDER BY | |
| 5 | [1683. Invalid Tweets](https://leetcode.com/problems/invalid-tweets/) | Easy | String functions | |
| 6 | [1378. Replace Employee ID With The Unique Identifier](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/) | Easy | LEFT JOIN | |
| 7 | [1068. Product Sales Analysis I](https://leetcode.com/problems/product-sales-analysis-i/) | Easy | INNER JOIN | |
| 8 | [1581. Customer Who Visited but Did Not Make Any Transactions](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/) | Easy | LEFT JOIN + IS NULL, GROUP BY | |
| 9 | [197. Rising Temperature](https://leetcode.com/problems/rising-temperature/) | Easy | Self-join, dates | |
| 10 | [1661. Average Time of Process per Machine](https://leetcode.com/problems/average-time-of-process-per-machine/) | Easy | Self-join, AVG, ROUND | |
