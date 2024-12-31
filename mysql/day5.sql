-- Day 5: Advanced MySQL Topics 🚀

-- --------------------------------------------------------------------------------------------------------------

-- Create a "Teachers" Table :-
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL,
    subject VARCHAR(30) NOT NULL
);

-- Insert Sample Data into Teachers :-
INSERT INTO teachers (teacher_name, subject)
VALUES
    ('Alice Johnson', 'Mathematics'),
    ('Bob Smith', 'Physics'),
    ('Catherine Brown', 'Chemistry');

-- --------------------------------------------------------------------------------------------------------------

-- Modify Existing Data in Students :-
ALTER TABLE students
ADD COLUMN teacher_id INT;

UPDATE students
SET teacher_id = 1
WHERE id <= 2;

UPDATE students
SET teacher_id = 2
WHERE id > 2;

-- --------------------------------------------------------------------------------------------------------------

-- Inner Join Query :-
SELECT 
    students.name,
    teachers.teacher_name
FROM students
INNER JOIN teachers
ON students.teacher_id = teachers.teacher_id;

-- --------------------------------------------------------------------------------------------------------------

-- Add and Query Course Assignments :-
CREATE TABLE course_assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO course_assignments (course_id, teacher_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3);

-- --------------------------------------------------------------------------------------------------------------