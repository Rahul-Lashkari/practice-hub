-- MySQL - Day 12 🚀
-- Explored views, indexing, normalization, prepared statements, and optimization techniques.

-- --------------------------------------------------------------------------------------------------------------

-- Views :-
-- Q. Create views to simplify complex queries and ensure data abstraction.
-- Q. Showcase a view to join students and courses for better visualization.
-- Create a view to combine students and their courses
CREATE VIEW student_course_view AS
SELECT s.id AS student_id, s.name AS student_name, c.course_name, c.instructor_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.course_id;

-- Query the view
SELECT * FROM student_course_view;

-- --------------------------------------------------------------------------------------------------------------
