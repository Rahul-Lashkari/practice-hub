-- MySQL - Day 10 🚀
-- Explored indexing, query optimization techniques, views, joins with subqueries, and role-based user management.

-- --------------------------------------------------------------------------------------------------------------

-- Indexing for Performance :-
-- Q. Add indexes to tables where appropriate to enhance query performance.
-- Q. Test queries before and after adding indexes to observe improvements.
-- Add indexes
CREATE INDEX idx_customer_name ON customers(CustomerName);
CREATE INDEX idx_order_date ON orders(OrderDate);

-- Test a query before and after adding indexes
EXPLAIN SELECT * FROM orders WHERE OrderDate = '2024-12-01';
+----+-------------+--------+------------+------+----------------+----------------+---------+-------+------+----------+-------+
| id | select_type | table  | partitions | type | possible_keys  | key            | key_len | ref   | rows | filtered | Extra |
+----+-------------+--------+------------+------+----------------+----------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | orders | NULL       | ref  | idx_order_date | idx_order_date | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+--------+------------+------+----------------+----------------+---------+-------+------+----------+-------+

-- --------------------------------------------------------------------------------------------------------------
