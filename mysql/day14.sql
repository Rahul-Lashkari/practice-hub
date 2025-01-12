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
