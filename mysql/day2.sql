-- Day 2: MySQL Learning 🚀

-- Create Another Table - courses
-- Create a new table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_weeks INT NOT NULL,
    instructor_name VARCHAR(100) NOT NULL
);

-- --------------------------------------------------------------------------------------------------------------

-- Insert Sample Data into courses
-- Insert data into courses table
INSERT INTO courses (course_name, duration_weeks, instructor_name)
VALUES 
('Web Development', 12, 'Alice Johnson'),
('Data Science', 10, 'Bob Smith'),
('Cybersecurity', 8, 'Charlie Brown');

-- --------------------------------------------------------------------------------------------------------------

-- Join Tables - students and courses
-- Alter students table to include course_id
ALTER TABLE students ADD course_id INT;

-- Update students table with course IDs
UPDATE students SET course_id = 1 WHERE id IN (1, 2);
UPDATE students SET course_id = 2 WHERE id IN (3, 4);

-- Join tables
SELECT students.name, courses.course_name
FROM students
JOIN courses ON students.course_id = courses.course_id;
