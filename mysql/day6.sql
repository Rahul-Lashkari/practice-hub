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
