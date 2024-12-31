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
