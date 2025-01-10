-- MySQL - Day 12 🚀
-- Explored views, indexing, normalization, prepared statements, and optimization techniques.

-- --------------------------------------------------------------------------------------------------------------

-- Views :-
-- Q. Create views to simplify complex queries and ensure data abstraction.
-- Q. Showcase a view to join students and courses for better visualization.
-- Create a view to combine students and their courses
CREATE VIEW student_course_view AS
SELECT s.id AS student_id, s.name AS student_name, c.course_name, c.instructor_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.course_id;

-- Query the view
SELECT * FROM student_course_view;

-- --------------------------------------------------------------------------------------------------------------

-- Indexing :-
-- Q. Add indexes to improve query performance.
-- Q. Demonstrate the difference in execution time before and after indexing.
-- Add an index to the orders table for CustomerID
CREATE INDEX idx_customer_id ON orders(CustomerID);

-- Query to test performance
EXPLAIN SELECT * FROM orders WHERE CustomerID = 1;
+----+-------------+--------+------------+------+-----------------+-----------------+---------+-------+------+----------+-------+
| id | select_type | table  | partitions | type | possible_keys   | key             | key_len | ref   | rows | filtered | Extra |
+----+-------------+--------+------------+------+-----------------+-----------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | orders | NULL       | ref  | idx_customer_id | idx_customer_id | 5       | const |    3 |   100.00 | NULL  |
+----+-------------+--------+------------+------+-----------------+-----------------+---------+-------+------+----------+-------+

-- --------------------------------------------------------------------------------------------------------------
