-- MySQL - Day 11 🚀
-- Explored triggers, stored procedures, functions, transactions, and backup/restore.

-- --------------------------------------------------------------------------------------------------------------

-- Triggers :-
-- Q. Create triggers to automate actions when data is inserted, updated, or deleted.
-- Q. Demonstrate a use case, such as updating teacher_id when a student record is inserted.

-- Create a trigger to log student insertions
DELIMITER $$
CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO course_assignments (course_id)
    VALUES (NEW.course_id);
END$$
DELIMITER ;

-- Insert a new student to test the trigger
INSERT INTO students (name, age, grade, course_id, teacher_id) VALUES ('Liam', 22, 'B', 1, 2);

-- --------------------------------------------------------------------------------------------------------------

-- Stored Procedures :-
-- Q. Create a stored procedure to simplify repetitive tasks, like adding a new course and assigning a default instructor.
-- Q. Test the procedure with multiple calls.

-- Create a procedure to add a new course
DELIMITER $$
CREATE PROCEDURE add_course(course_name VARCHAR(255), duration_weeks INT, instructor_name VARCHAR(255))
BEGIN
    INSERT INTO courses (course_name, duration_weeks, instructor_name) VALUES (course_name, duration_weeks, instructor_name);
END$$
DELIMITER ;

-- Call the procedure
CALL add_course('Python Programming', 8, 'Sophia White');

-- --------------------------------------------------------------------------------------------------------------

-- Functions :-
-- Q. Create a user-defined function to calculate something like the total orders for a customer.
-- Q. Test the function within a query.

-- Create a function to calculate total orders for a customer
DELIMITER $$
CREATE FUNCTION get_total_orders(customer_id INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(OrderAmount) INTO total FROM orders WHERE CustomerID = customer_id;
    RETURN total;
END$$
DELIMITER ;

-- Use the function
SELECT CustomerName, get_total_orders(CustomerID) AS TotalOrders FROM customers;
+---------------+-------------+
| CustomerName  | TotalOrders |
+---------------+-------------+
| Alice Johnson |      950.75 |
| Bob Smith     |      200.50 |
| Catherine Lee |        NULL |
+---------------+-------------+

-- --------------------------------------------------------------------------------------------------------------

-- Transactions :-
-- Q. Implement a transaction to ensure atomicity while updating multiple tables.
-- Q. Use COMMIT and ROLLBACK for demonstration.

-- Start a transaction to update courses and orders
START TRANSACTION;

-- Update courses
UPDATE courses SET instructor_name = 'Robert Green' WHERE course_id = 2;

-- Insert a new order
INSERT INTO orders (CustomerID, OrderAmount, OrderDate) VALUES (3, 400.00, '2024-12-20');

-- Commit the transaction
COMMIT;

-- Rollback demonstration
START TRANSACTION;
UPDATE students SET grade = 'C' WHERE id = 1;
ROLLBACK; -- Reverts the update

-- --------------------------------------------------------------------------------------------------------------
