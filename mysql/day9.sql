-- MySQL - Day 7 🚀
-- Explored triggers, user-defined functions, database backup and restore, and data export/import.

-- --------------------------------------------------------------------------------------------------------------

-- Creating Triggers :-
-- Q. Create a trigger to automatically update a student’s grade to "F" if their age is above 25 upon insert or update.
-- Q. Test the trigger with sample data.
-- Create a trigger to update the grade if the age is above 25
DELIMITER //
CREATE TRIGGER UpdateGradeIfAgeAbove25
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.age > 25 THEN
        SET NEW.grade = 'F';
    END IF;
END;
//
DELIMITER ;

-- Test the trigger
INSERT INTO students (name, age, grade, course_id, teacher_id) 
VALUES ('Emily', 26, 'A', NULL, NULL);

SELECT * FROM students;

-- --------------------------------------------------------------------------------------------------------------

-- User-Defined Functions :-
-- Q. Create a user-defined function to calculate the total number of orders for a given customer.
-- Q. Test the function by passing a CustomerID.

-- Create a user-defined function to count orders for a customer
DELIMITER //
CREATE FUNCTION CountCustomerOrders(cust_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE order_count INT;
    SELECT COUNT(*) INTO order_count FROM orders WHERE CustomerID = cust_id;
    RETURN order_count;
END;
//
DELIMITER ;

-- Test the function
SELECT CountCustomerOrders(1) AS TotalOrders;
+-------------+
| TotalOrders |
+-------------+
|           1 |
+-------------+

-- --------------------------------------------------------------------------------------------------------------

-- Database Backup and Restore :-
-- Q. Explain how to back up and restore a database using MySQL commands.
-- Q. Perform a backup of the mydb database and document the steps.
-- (This step is documentation-heavy; commands won't execute in SQLTools)
# Backup command
mysqldump -u root -p mydb > mydb_backup.sql

# Restore command
mysql -u root -p mydb < mydb_backup.sql

-- --------------------------------------------------------------------------------------------------------------
