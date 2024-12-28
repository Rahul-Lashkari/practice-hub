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
