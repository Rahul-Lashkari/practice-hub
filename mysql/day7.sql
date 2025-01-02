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
