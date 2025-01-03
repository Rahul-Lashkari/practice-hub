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
