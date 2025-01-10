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

-- Normalization
-- Q. Demonstrate normalization by creating a new table for addresses and linking it to customers.
-- Q. Refactor the customers table to remove redundancy.
-- Create an addresses table
CREATE TABLE addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(CustomerID)
);

-- Insert sample data
INSERT INTO addresses (customer_id, street, city, state, postal_code) 
VALUES 
(1, '123 Main St', 'Springfield', 'IL', '62701'),
(2, '456 Elm St', 'Madison', 'WI', '53703');

-- Refactor customers table
ALTER TABLE customers DROP COLUMN ContactNumber;

-- Join customers and addresses
SELECT c.CustomerName, a.street, a.city FROM customers c 
JOIN addresses a ON c.CustomerID = a.customer_id;
+---------------+-------------+-------------+
| CustomerName  | street      | city        |
+---------------+-------------+-------------+
| Alice Johnson | 123 Main St | Springfield |
| Bob Smith     | 456 Elm St  | Madison     |
+---------------+-------------+-------------+

-- --------------------------------------------------------------------------------------------------------------

--  Prepared Statements :-
-- Q. Use prepared statements to prevent SQL injection.
-- Q. Showcase parameterized queries for safer database operations.
-- Example of prepared statement
PREPARE stmt FROM 'SELECT * FROM orders WHERE OrderAmount > ?';
SET @amount = 200;
EXECUTE stmt USING @amount;

-- Deallocate the prepared statement
DEALLOCATE PREPARE stmt;
+---------+------------+-------------+------------+----------+
| OrderID | CustomerID | OrderAmount | OrderDate  | Discount |
+---------+------------+-------------+------------+----------+
|       2 |          2 |      200.50 | 2024-12-03 |    10.00 |
|       3 |          1 |      300.75 | 2024-12-04 |    20.00 |
|       4 |          1 |      500.00 | 2024-12-20 |     NULL |
|       5 |          3 |      400.00 | 2024-12-20 |     NULL |
+---------+------------+-------------+------------+----------+

-- --------------------------------------------------------------------------------------------------------------
