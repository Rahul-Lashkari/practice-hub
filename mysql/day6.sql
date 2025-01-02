-- Day 6: Advanced MySQL Topics 🚀

-- --------------------------------------------------------------------------------------------------------------

-- Adding Data to course_assignments
-- Insert data into course_assignments
INSERT INTO course_assignments (course_id, teacher_id) VALUES
(1, 1),
(2, 2);

-- Joining Tables (INNER JOIN)
-- Fetch student details along with teacher and course details
SELECT 
    s.name AS student_name, 
    t.teacher_name, 
    c.course_name 
FROM 
    students s
LEFT JOIN teachers t ON s.teacher_id = t.teacher_id
LEFT JOIN courses c ON s.course_id = c.course_id;

SELECT * FROM course_assignments;
+---------------+-----------+------------+
| assignment_id | course_id | teacher_id |
+---------------+-----------+------------+
|            10 |         1 |          1 |
|            11 |         2 |          2 |
+---------------+-----------+------------+

-- --------------------------------------------------------------------------------------------------------------

-- Adding New Column to orders
-- Add Discount column to orders
ALTER TABLE orders ADD COLUMN Discount DECIMAL(5, 2);

-- Update orders with discounts
UPDATE orders 
SET Discount = CASE
    WHEN OrderAmount > 250 THEN 20.00
    ELSE 10.00
END;

SELECT * FROM orders;
+---------+------------+-------------+------------+----------+
| OrderID | CustomerID | OrderAmount | OrderDate  | Discount |
+---------+------------+-------------+------------+----------+
|       1 |          1 |      150.00 | 2024-12-01 |    10.00 |
|       2 |          2 |      200.50 | 2024-12-03 |    10.00 |
|       3 |          1 |      300.75 | 2024-12-04 |    20.00 |
+---------+------------+-------------+------------+----------+

-- --------------------------------------------------------------------------------------------------------------

-- Using CASE in Queries
-- Q. Generate a report that includes customer names, order amounts, and discount categories.
-- Report with discount categories
SELECT 
    o.OrderID, 
    c.CustomerName, 
    o.OrderAmount, 
    o.Discount,
    CASE 
        WHEN o.Discount = 20.00 THEN 'High Discount'
        ELSE 'Low Discount'
    END AS DiscountCategory
FROM 
    orders o
JOIN customers c ON o.CustomerID = c.CustomerID;

+---------+---------------+-------------+----------+------------------+
| OrderID | CustomerName  | OrderAmount | Discount | DiscountCategory |
+---------+---------------+-------------+----------+------------------+
|       1 | Alice Johnson |      150.00 |    10.00 | Low Discount     |
|       2 | Bob Smith     |      200.50 |    10.00 | Low Discount     |
|       3 | Alice Johnson |      300.75 |    20.00 | High Discount    |
+---------+---------------+-------------+----------+------------------+

-- --------------------------------------------------------------------------------------------------------------

-- Aggregate Functions with GROUP BY
-- Q. Calculate the total order amount and average discount for each customer.
-- Total order amount and average discount per customer
SELECT 
    c.CustomerName, 
    SUM(o.OrderAmount) AS TotalOrderAmount, 
    AVG(o.Discount) AS AverageDiscount
FROM 
    orders o
JOIN customers c ON o.CustomerID = c.CustomerID
GROUP BY 
    c.CustomerID;

+---------------+------------------+-----------------+
| CustomerName  | TotalOrderAmount | AverageDiscount |
+---------------+------------------+-----------------+
| Alice Johnson |           450.75 |       15.000000 |
| Bob Smith     |           200.50 |       10.000000 |
+---------------+------------------+-----------------+

-- --------------------------------------------------------------------------------------------------------------

-- Subqueries
-- Q. Find the teacher with the highest number of course assignments.
-- Teacher with the highest number of course assignments
SELECT 
    teacher_id, 
    teacher_name 
FROM 
    teachers 
WHERE 
    teacher_id = (
        SELECT teacher_id 
        FROM course_assignments 
        GROUP BY teacher_id 
        ORDER BY COUNT(course_id) DESC 
        LIMIT 1
    );

+------------+---------------+
| teacher_id | teacher_name  |
+------------+---------------+
|          1 | Alice Johnson |
+------------+---------------+

-- --------------------------------------------------------------------------------------------------------------

-- Working with Views
-- Q. Create a view to simplify queries for student-course-teacher details.
-- Create a view for student-course-teacher details
CREATE VIEW StudentDetails AS
SELECT 
    s.name AS student_name, 
    t.teacher_name, 
    c.course_name 
FROM 
    students s
LEFT JOIN teachers t ON s.teacher_id = t.teacher_id
LEFT JOIN courses c ON s.course_id = c.course_id;

-- Use the view
SELECT * FROM StudentDetails;
+--------------+---------------+-------------+
| student_name | teacher_name  | course_name |
+--------------+---------------+-------------+
| Charlie      | Alice Johnson | NULL        |
+--------------+---------------+-------------+

-- --------------------------------------------------------------------------------------------------------------

-- Managing Null Values with IFNULL
-- Q. Replace NULL values in course or teacher assignments with placeholders.
-- Replace NULL values with placeholders
SELECT 
    s.name AS student_name, 
    IFNULL(t.teacher_name, 'Unassigned') AS teacher_name, 
    IFNULL(c.course_name, 'No Course') AS course_name
FROM 
    students s
LEFT JOIN teachers t ON s.teacher_id = t.teacher_id
LEFT JOIN courses c ON s.course_id = c.course_id;

+--------------+---------------+-------------+
| student_name | teacher_name  | course_name |
+--------------+---------------+-------------+
| Charlie      | Alice Johnson | No Course   |
+--------------+---------------+-------------+

-- --------------------------------------------------------------------------------------------------------------

-- Deleting Data
-- Q. Remove a course assignment to demonstrate safe deletion.
-- Delete a course assignment
DELETE FROM course_assignments 
WHERE course_id = 2 AND teacher_id = 2;

-- Verify deletion
SELECT * FROM course_assignments;
+---------------+-----------+------------+
| assignment_id | course_id | teacher_id |
+---------------+-----------+------------+
|            10 |         1 |          1 |
+---------------+-----------+------------+

-- --------------------------------------------------------------------------------------------------------------

-- Backing Up and Restoring Data
-- Q. Export teachers table data into a backup and restore it.
-- Export teachers table data
SELECT * FROM teachers INTO OUTFILE '/tmp/teachers_backup.csv' 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Restore the data (adjust path as needed)
LOAD DATA INFILE '/tmp/teachers_backup.csv' 
INTO TABLE teachers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- --------------------------------------------------------------------------------------------------------------
