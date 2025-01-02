-- MySQL - Day 7 🚀

-- --------------------------------------------------------------------------------------------------------------

-- Understanding and Applying INNER JOIN :-
-- Q.1 Write a query to retrieve all students along with their respective teacher names (using the teachers table).
-- Q.2 Join students with teachers based on teacher_id.
-- Retrieve students with their respective teacher names
SELECT students.name AS student_name, teachers.teacher_name
FROM students
INNER JOIN teachers ON students.teacher_id = teachers.teacher_id;
+--------------+---------------+
| student_name | teacher_name  |
+--------------+---------------+
| Charlie      | Alice Johnson |
+--------------+---------------+

-- --------------------------------------------------------------------------------------------------------------

-- Applying LEFT JOIN and RIGHT JOIN :-
-- Q. Use a LEFT JOIN to retrieve all teachers, even those not assigned to any students.
-- Q. Use a RIGHT JOIN to retrieve all students, even those not assigned a teacher.
-- Retrieve all teachers and their assigned students (if any)
SELECT teachers.teacher_name, students.name AS student_name
FROM teachers
LEFT JOIN students ON teachers.teacher_id = students.teacher_id;
+-----------------+--------------+
| teacher_name    | student_name |
+-----------------+--------------+
| Alice Johnson   | Charlie      |
| Bob Smith       | NULL         |
| Catherine Brown | NULL         |
+-----------------+--------------+

-- Retrieve all students and their assigned teachers (if any)
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

-- Aggregation and Grouping
-- Q. Find the number of students assigned to each teacher.
-- Q. Retrieve the average OrderAmount from the orders table.

-- Count students assigned to each teacher
SELECT teachers.teacher_name, COUNT(students.id) AS student_count
FROM teachers
LEFT JOIN students ON teachers.teacher_id = students.teacher_id
GROUP BY teachers.teacher_name;
+-----------------+---------------+
| teacher_name    | student_count |
+-----------------+---------------+
| Alice Johnson   |             1 |
| Bob Smith       |             0 |
| Catherine Brown |             0 |
+-----------------+---------------+

-- Retrieve the average order amount
SELECT AVG(OrderAmount) AS average_order_amount
FROM orders;
+----------------------+
| average_order_amount |
+----------------------+
|           217.083333 |
+----------------------+

-- --------------------------------------------------------------------------------------------------------------
