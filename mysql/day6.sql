-- Day 5: Advanced MySQL Topics 🚀

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
