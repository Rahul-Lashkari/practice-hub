-- MySQL - Day 14
-- Explored triggers, advanced joins, performance optimization, and complex queries.

-- --------------------------------------------------------------------------------------------------------------

-- Creating and Testing a Trigger :-
-- Q. Create a trigger to log changes in the students table to a new student_logs table.
-- Q. Insert data into the students table to test the trigger.\
-- Step 1: Create a student_logs table to track updates
CREATE TABLE student_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    old_grade VARCHAR(5),
    new_grade VARCHAR(5),
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 2: Create the trigger
DELIMITER $$
CREATE TRIGGER after_students_update
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_logs (student_id, old_grade, new_grade)
    VALUES (OLD.id, OLD.grade, NEW.grade);
END$$
DELIMITER ;

-- Step 2: Test the trigger
UPDATE students
SET grade = 'B'
WHERE id = 1;

-- --------------------------------------------------------------------------------------------------------------

-- Advanced Joins and Nested Queries :- 
-- Q. Write a query to find customers who have placed the highest orders.
-- Q. Use a join to display customer details and their respective total order amounts.
-- Step 3: Find customers with the highest orders
SELECT c.CustomerName, o.OrderAmount
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderAmount = (SELECT MAX(OrderAmount) FROM orders);
+---------------+-------------+
| CustomerName  | OrderAmount |
+---------------+-------------+
| Alice Johnson |      500.00 |
+---------------+-------------+

-- Step 4: Display total order amounts for each customer
SELECT c.CustomerName, SUM(o.OrderAmount) AS TotalAmount
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;
+---------------+-------------+
| CustomerName  | TotalAmount |
+---------------+-------------+
| Alice Johnson |      950.75 |
| Bob Smith     |      200.50 |
| Catherine Lee |      400.00 |
+---------------+-------------+

-- --------------------------------------------------------------------------------------------------------------

-- Performance Optimization with Indexes :-
-- Q. Add indexes to frequently queried columns to improve query performance.
-- Q. Compare execution plans with and without indexes.
-- Step 5: Add indexes to the orders table
CREATE INDEX idx_customer_id ON orders (CustomerID);
CREATE INDEX idx_order_date ON orders (OrderDate);

-- Step 6: Analyze execution plans
EXPLAIN SELECT * FROM orders WHERE CustomerID = 1;
+----+-------------+--------+------------+------+------------------------------------+-----------------+---------+-------+------+----------+-------+
| id | select_type | table  | partitions | type | possible_keys                      | key             | key_len | ref   | rows | filtered | Extra |
+----+-------------+--------+------------+------+------------------------------------+-----------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | orders | NULL       | ref  | idx_customer_id,idx_order_customer | idx_customer_id | 5       | const |    3 |   100.00 | NULL  |
+----+-------------+--------+------------+------+------------------------------------+-----------------+---------+-------+------+----------+-------+

-- --------------------------------------------------------------------------------------------------------------

-- Complex Queries with Window Functions
-- Q. Use a window function to rank customers based on their total order amounts.
-- Q. Display customers with ranks in the top 3.
-- Step 7: Rank customers by total order amounts
SELECT c.CustomerName, SUM(o.OrderAmount) AS TotalAmount,
       RANK() OVER (ORDER BY SUM(o.OrderAmount) DESC) AS rank
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- Step 8: Filter to show only the top 3 customers
WITH ranked_customers AS (
    SELECT c.CustomerName, SUM(o.OrderAmount) AS TotalAmount,
           RANK() OVER (ORDER BY SUM(o.OrderAmount) DESC) AS rank
    FROM customers c
    JOIN orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerName
)
SELECT * FROM ranked_customers WHERE rank <= 3;

-- --------------------------------------------------------------------------------------------------------------

-- Error Handling and Transactions
-- Q.  Create a transaction to ensure consistency when updating multiple tables.
-- Q. Add error handling to rollback the transaction in case of failure.
-- Step 9: Start a transaction to update student and course data
START TRANSACTION;

BEGIN
    -- Update student course
    UPDATE students
    SET course_id = 2
    WHERE id = 1;

    -- Update course instructor
    UPDATE courses
    SET instructor_name = 'New Instructor'
    WHERE course_id = 2;

    -- Simulate an error for testing
    -- ROLLBACK manually if this fails
    INSERT INTO non_existing_table VALUES ('error');
END;

-- Step 10: Commit or rollback based on success
COMMIT;

-- --------------------------------------------------------------------------------------------------------------
