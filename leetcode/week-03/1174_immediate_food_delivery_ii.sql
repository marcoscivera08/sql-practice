-- Problem:    1174. Immediate Food Delivery II
-- Link:       https://leetcode.com/problems/immediate-food-delivery-ii/
-- Difficulty: Medium
-- Concepts:   Subquery with multi-column IN, MIN, CASE WHEN inside AVG
-- Date:       2026-11-02
-- Notes:      Build in steps: (1) subquery with first order per customer,
--             (2) filter with (customer_id, order_date) IN (...), (3) replace * with the calc.
--             Multi-column IN needs parentheses on both sides and matching columns.

SELECT ROUND(AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100, 2)
       AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
