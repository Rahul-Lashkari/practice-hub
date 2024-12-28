-- Day 2: MySQL Learning 🚀

-- Create Another Table - courses
-- Create a new table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_weeks INT NOT NULL,
    instructor_name VARCHAR(100) NOT NULL
);

