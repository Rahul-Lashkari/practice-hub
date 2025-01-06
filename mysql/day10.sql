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

-- Query Optimization :-
-- Q. Rewrite an existing query using optimization techniques such as selecting specific columns and avoiding unnecessary joins.
-- Q. Test the execution plan for the optimized query.
-- Optimized query: Fetch specific columns
SELECT CustomerName, ContactNumber
FROM customers
WHERE CustomerID IN (SELECT CustomerID FROM orders WHERE OrderAmount > 200);
+---------------+---------------+
| CustomerName  | ContactNumber |
+---------------+---------------+
| Alice Johnson | 950.75        |
| Bob Smith     | 8765432109    |
+---------------+---------------+

-- Compare execution plans
EXPLAIN SELECT * FROM customers WHERE CustomerID IN (SELECT CustomerID FROM orders);
+----+-------------+-----------+------------+--------+---------------+------------+---------+------------------------+------+----------+-------------------------------------+
| id | select_type | table     | partitions | type   | possible_keys | key        | key_len | ref                    | rows | filtered | Extra                               |
+----+-------------+-----------+------------+--------+---------------+------------+---------+------------------------+------+----------+-------------------------------------+
|  1 | SIMPLE      | orders    | NULL       | index  | CustomerID    | CustomerID | 5       | NULL                   |    3 |    66.67 | Using where; Using index; LooseScan |
|  1 | SIMPLE      | customers | NULL       | eq_ref | PRIMARY       | PRIMARY    | 4       | mydb.orders.CustomerID |    1 |   100.00 | NULL                                |
+----+-------------+-----------+------------+--------+---------------+------------+---------+------------------------+------+----------+-------------------------------------+

EXPLAIN SELECT CustomerName, ContactNumber FROM customers WHERE CustomerID IN (SELECT CustomerID FROM orders WHERE OrderAmount > 200);
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------------------------------------------------------------------+
| id | select_type | table     | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra                                                             |
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------------------------------------------------------------------+
|  1 | SIMPLE      | customers | NULL       | ALL  | PRIMARY       | NULL | NULL    | NULL |    3 |   100.00 | NULL                                                              |
|  1 | SIMPLE      | orders    | NULL       | ALL  | CustomerID    | NULL | NULL    | NULL |    3 |    33.33 | Using where; FirstMatch(customers); Using join buffer (hash join) |
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------------------------------------------------------------------+

-- --------------------------------------------------------------------------------------------------------------

-- Views :-
-- Q. Create a view that simplifies complex queries, such as combining orders and customers data.
-- Q. Use the view to fetch data.
-- Create a view for combined customer and order details
CREATE VIEW customer_orders AS
SELECT c.CustomerName, c.ContactNumber, o.OrderAmount, o.OrderDate
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID;

-- Use the view
SELECT * FROM customer_orders;
+---------------+---------------+-------------+------------+
| CustomerName  | ContactNumber | OrderAmount | OrderDate  |
+---------------+---------------+-------------+------------+
| Alice Johnson | 950.75        |      150.00 | 2024-12-01 |
| Bob Smith     | 8765432109    |      200.50 | 2024-12-03 |
| Alice Johnson | 950.75        |      300.75 | 2024-12-04 |
| Alice Johnson | 950.75        |      500.00 | 2024-12-20 |
+---------------+---------------+-------------+------------+

-- --------------------------------------------------------------------------------------------------------------
