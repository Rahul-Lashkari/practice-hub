-- MySQL - Day 7 🚀
-- Explored advanced joins, window functions, indexing, and stored procedures.

-- --------------------------------------------------------------------------------------------------------------

-- Advanced Joins :-
-- Q. Perform a FULL OUTER JOIN using students and teachers tables. Note: Since MySQL doesn’t directly support FULL OUTER JOIN, we’ll simulate it with UNION.
-- Q. Retrieve a combined result of students with and without assigned teachers.

-- Simulate FULL OUTER JOIN using UNION
SELECT students.name AS student_name, teachers.teacher_name
FROM students
LEFT JOIN teachers ON students.teacher_id = teachers.teacher_id
UNION
SELECT students.name AS student_name, teachers.teacher_name
FROM students
RIGHT JOIN teachers ON students.teacher_id = teachers.teacher_id;
+--------------+-----------------+
| student_name | teacher_name    |
+--------------+-----------------+
| Charlie      | Alice Johnson   |
| NULL         | Bob Smith       |
| NULL         | Catherine Brown |
+--------------+-----------------+

-- --------------------------------------------------------------------------------------------------------------

-- Window Functions :-
-- Q. Use a RANK window function to rank customers by their OrderAmount in descending order.
-- Q. Use a ROW_NUMBER window function to assign unique row numbers for each teacher.

-- Rank customers by their order amount
SELECT CustomerName, OrderAmount,
       RANK() OVER (ORDER BY OrderAmount DESC) AS rank
FROM customers;

-- Assign row numbers to teachers
SELECT teacher_name,
       ROW_NUMBER() OVER (ORDER BY teacher_name) AS row_number
FROM teachers;

-- --------------------------------------------------------------------------------------------------------------

-- Indexing :-
-- Q. Create an index on the teacher_id column in the students table to improve query performance.
-- Q. Verify the created index using SHOW INDEX.

-- Create an index on teacher_id in students
CREATE INDEX idx_teacher_id ON students(teacher_id);

-- Verify the created index
SHOW INDEX FROM students;
+----------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| students |          0 | PRIMARY        |            1 | id          | A         |           1 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| students |          1 | idx_teacher_id |            1 | teacher_id  | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

-- --------------------------------------------------------------------------------------------------------------

-- Stored Procedures :-\
-- Q. Create a stored procedure to add a new course to the courses table.
-- Q. Call the stored procedure to test its functionality.

-- Create a stored procedure to add a course
DELIMITER //
CREATE PROCEDURE AddCourse(
    IN course_name VARCHAR(255),
    IN duration_weeks INT,
    IN instructor_name VARCHAR(255)
)
BEGIN
    INSERT INTO courses (course_name, duration_weeks, instructor_name)
    VALUES (course_name, duration_weeks, instructor_name);
END //
DELIMITER ;

-- Call the stored procedure to test
CALL AddCourse('Python Programming', 8, 'John Doe');

-- --------------------------------------------------------------------------------------------------------------

-- Transactions :-
-- Q. Start a transaction to update a teacher's subject and delete a student. Then rollback the changes.
-- Q. Use ROLLBACK to demonstrate transaction control.

-- Start a transaction
START TRANSACTION;

-- Update a teacher's subject
UPDATE teachers
SET subject = 'Biology'
WHERE teacher_name = 'Alice Johnson';

-- Delete a student
DELETE FROM students
WHERE id = 1;

-- Rollback the transaction
ROLLBACK;

-- Verify no changes were made
SELECT * FROM teachers;
+------------+-----------------+-----------+
| teacher_id | teacher_name    | subject   |
+------------+-----------------+-----------+
|          1 | Alice Johnson   | Biology   |
|          2 | Bob Smith       | Physics   |
|          3 | Catherine Brown | Chemistry |
+------------+-----------------+-----------+
SELECT * FROM students;
-- Empty set (0.00 sec)

-- --------------------------------------------------------------------------------------------------------------
