-- MySQL :- Day 13 - Advanced Topics and Real-World Scenarios🚀
-- Explored transactions, triggers, stored functions, case statements, and backup & restore techniques

-- --------------------------------------------------------------------------------------------------------------

-- Transactions :-
-- Q. Learn how to manage transactions to maintain data consistency.
-- Q. Demonstrate using BEGIN, COMMIT, and ROLLBACK.
-- Start a transaction
START TRANSACTION;

-- Insert multiple records in orders table
INSERT INTO orders (CustomerID, OrderAmount, OrderDate) VALUES 
(2, 500.00, '2024-12-15'),
(3, 250.75, '2024-12-16');

-- Rollback if there's an error
ROLLBACK;

-- Commit if successful
COMMIT;

-- Verify results
SELECT * FROM orders;
+---------+------------+-------------+------------+----------+
| OrderID | CustomerID | OrderAmount | OrderDate  | Discount |
+---------+------------+-------------+------------+----------+
|       1 |          1 |      150.00 | 2024-12-01 |    10.00 |
|       2 |          2 |      200.50 | 2024-12-03 |    10.00 |
|       3 |          1 |      300.75 | 2024-12-04 |    20.00 |
|       4 |          1 |      500.00 | 2024-12-20 |     NULL |
|       5 |          3 |      400.00 | 2024-12-20 |     NULL |
+---------+------------+-------------+------------+----------+

-- --------------------------------------------------------------------------------------------------------------

-- Triggers :-
-- Q. Create triggers for automating actions during INSERT, UPDATE, or DELETE operations.
-- Q. Demonstrate a trigger that updates the teacher_id column in the students table whenever a new student is added.
-- Create a trigger to assign a default teacher when a student is added
DELIMITER $$
CREATE TRIGGER assign_default_teacher
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.teacher_id IS NULL THEN
        UPDATE students SET teacher_id = 1 WHERE id = NEW.id;
    END IF;
END$$
DELIMITER ;

-- Test the trigger
INSERT INTO students (name, age, grade, course_id) VALUES ('Derek', 22, 'B', 1);
SELECT * FROM students;

-- --------------------------------------------------------------------------------------------------------------

-- Stored Functions :-
-- Q. Use stored functions to encapsulate reusable logic.
-- Q. Write a function to calculate the total order amount for a specific customer.
-- Create a stored function to calculate total order amount
DELIMITER $$
CREATE FUNCTION calculate_total_order_amount(customer_id INT) 
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(OrderAmount) INTO total FROM orders WHERE CustomerID = customer_id;
    RETURN IFNULL(total, 0.00);
END$$
DELIMITER ;

-- Test the function
SELECT calculate_total_order_amount(1) AS total_amount;

-- --------------------------------------------------------------------------------------------------------------

-- CASE Statements :- 
-- Q. Use CASE statements for conditional query results.
-- Q. Add a column in students to display pass/fail status based on their grade.
-- Query with CASE statement to determine pass/fail
SELECT id, name, grade, 
CASE 
    WHEN grade IN ('A', 'B', 'C') THEN 'Pass'
    ELSE 'Fail'
END AS status
FROM students;
+----+-------+-------+--------+
| id | name  | grade | status |
+----+-------+-------+--------+
|  3 | Emily | A     | Pass   |
|  4 | Priya | F     | Fail   |
+----+-------+-------+--------+

-- --------------------------------------------------------------------------------------------------------------

-- Backup & Restore :-
-- Q. Learn how to back up and restore a database for disaster recovery.
-- Q. Use mysqldump for backup and restoring a database.
-- # Backup command
mysqldump -u root -p mydb > mydb_backup.sql

-- # Restore command
mysql -u root -p mydb < mydb_backup.sql

-- --------------------------------------------------------------------------------------------------------------
