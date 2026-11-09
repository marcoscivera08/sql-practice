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

### Week 1

| # | Problem | Difficulty | Concepts | Date |
|---|---------|-----------|----------|------|
| 1 | [1757. Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/) | Easy | WHERE, AND | 2026-10-13 |
| 2 | [584. Find Customer Referee](https://leetcode.com/problems/find-customer-referee/) | Easy | NULL handling | 2026-10-13 |
| 3 | [595. Big Countries](https://leetcode.com/problems/big-countries/) | Easy | OR | 2026-10-13 |
| 4 | [1148. Article Views I](https://leetcode.com/problems/article-views-i/) | Easy | DISTINCT, alias, ORDER BY | 2026-10-21 |
| 5 | [1683. Invalid Tweets](https://leetcode.com/problems/invalid-tweets/) | Easy | CHAR_LENGTH | 2026-10-21 |
| 6 | [1378. Replace Employee ID With The Unique Identifier](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/) | Easy | LEFT JOIN | 2026-10-21 |
| 7 | [1068. Product Sales Analysis I](https://leetcode.com/problems/product-sales-analysis-i/) | Easy | INNER JOIN | 2026-10-22 |
| 8 | [1581. Customer Who Visited but Did Not Make Any Transactions](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/) | Easy | LEFT JOIN + IS NULL, GROUP BY | 2026-10-22 |
| 9 | [197. Rising Temperature](https://leetcode.com/problems/rising-temperature/) | Easy | Self-join, DATEDIFF | 2026-10-23 |
| 10 | [1661. Average Time of Process per Machine](https://leetcode.com/problems/average-time-of-process-per-machine/) | Easy | Self-join, AVG, ROUND | 2026-10-23 |

### Week 2

| # | Problem | Difficulty | Concepts | Date |
|---|---------|-----------|----------|------|
| 11 | [577. Employee Bonus](https://leetcode.com/problems/employee-bonus/) | Easy | LEFT JOIN, NULL | 2026-10-26 |
| 12 | [1280. Students and Examinations](https://leetcode.com/problems/students-and-examinations/) | Easy | CROSS JOIN, GROUP BY | 2026-10-26 |
| 13 | [570. Managers with at Least 5 Direct Reports](https://leetcode.com/problems/managers-with-at-least-5-direct-reports/) | Medium | Self-join, HAVING | 2026-10-27 |
| 14 | [1934. Confirmation Rate](https://leetcode.com/problems/confirmation-rate/) | Medium | LEFT JOIN, AVG, IFNULL | 2026-10-27 |
| 15 | [620. Not Boring Movies](https://leetcode.com/problems/not-boring-movies/) | Easy | Modulo, ORDER BY DESC | 2026-10-28 |
| 16 | [1251. Average Selling Price](https://leetcode.com/problems/average-selling-price/) | Easy | JOIN on date range, weighted average | 2026-10-28 |
| 17 | [1075. Project Employees I](https://leetcode.com/problems/project-employees-i/) | Easy | JOIN, AVG | 2026-10-29 |
| 18 | [1633. Percentage of Users Attended a Contest](https://leetcode.com/problems/percentage-of-users-attended-a-contest/) | Easy | Scalar subquery, percentages | 2026-10-29 |
| 19 | [1211. Queries Quality and Percentage](https://leetcode.com/problems/queries-quality-and-percentage/) | Easy | CASE WHEN, AVG | 2026-10-30 |
| 20 | [1193. Monthly Transactions I](https://leetcode.com/problems/monthly-transactions-i/) | Medium | DATE_FORMAT, CASE WHEN, GROUP BY | 2026-10-30 |

### Week 3

| # | Problem | Difficulty | Concepts | Date |
|---|---------|-----------|----------|------|
| 21 | [1174. Immediate Food Delivery II](https://leetcode.com/problems/immediate-food-delivery-ii/) | Medium | Subquery with IN, MIN, percentages | |
| 22 | [550. Game Play Analysis IV](https://leetcode.com/problems/game-play-analysis-iv/) | Medium | Subquery, DATE_ADD / DATEDIFF | |
| 23 | [2356. Number of Unique Subjects Taught by Each Teacher](https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/) | Easy | COUNT(DISTINCT) | |
| 24 | [1141. User Activity for the Past 30 Days I](https://leetcode.com/problems/user-activity-for-the-past-30-days-i/) | Easy | Date range, COUNT(DISTINCT) | |
| 25 | [1070. Product Sales Analysis III](https://leetcode.com/problems/product-sales-analysis-iii/) | Medium | Subquery with IN, MIN | |
| 26 | [596. Classes With at Least 5 Students](https://leetcode.com/problems/classes-with-at-least-5-students/) | Easy | GROUP BY, HAVING | 2026-11-05 |
| 27 | [1729. Find Followers Count](https://leetcode.com/problems/find-followers-count/) | Easy | GROUP BY, ORDER BY | |
| 28 | [619. Biggest Single Number](https://leetcode.com/problems/biggest-single-number/) | Easy | Subquery in FROM, HAVING | |
| 29 | [1045. Customers Who Bought All Products](https://leetcode.com/problems/customers-who-bought-all-products/) | Medium | HAVING with subquery | |
| 30 | [1731. The Number of Employees Which Report to Each Employee](https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/) | Easy | Self-join, AVG, COUNT | |


### Week 4

| # | Problem | Difficulty | Concepts | Date |
|---|---------|-----------|----------|------|
| 31 | [1789. Primary Department for Each Employee](https://leetcode.com/problems/primary-department-for-each-employee/) | Easy | OR with subquery, HAVING | |
| 32 | [610. Triangle Judgement](https://leetcode.com/problems/triangle-judgement/) | Easy | CASE WHEN | |
| 33 | [180. Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/) | Medium | Self-join / LEAD, DISTINCT | |
| 34 | [1164. Product Price at a Given Date](https://leetcode.com/problems/product-price-at-a-given-date/) | Medium | Subquery with IN, UNION | |
| 35 | [1204. Last Person to Fit in the Bus](https://leetcode.com/problems/last-person-to-fit-in-the-bus/) | Medium | Window function (running sum) | |
| 36 | [1907. Count Salary Categories](https://leetcode.com/problems/count-salary-categories/) | Medium | UNION ALL, SUM(CASE) | |
| 37 | [1978. Employees Whose Manager Left the Company](https://leetcode.com/problems/employees-whose-manager-left-the-company/) | Easy | NOT IN subquery | |
| 38 | [626. Exchange Seats](https://leetcode.com/problems/exchange-seats/) | Medium | CASE WHEN, modulo | |
| 39 | [1341. Movie Rating](https://leetcode.com/problems/movie-rating/) | Medium | UNION ALL, ORDER BY + LIMIT | |
| 40 | [1321. Restaurant Growth](https://leetcode.com/problems/restaurant-growth/) | Medium | Window function (moving average) | |
