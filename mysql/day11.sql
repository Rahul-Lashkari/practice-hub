-- MySQL - Day 11 🚀
-- Explored triggers, stored procedures, functions, transactions, and backup/restore.

-- --------------------------------------------------------------------------------------------------------------

-- Triggers :-
-- Q. Create triggers to automate actions when data is inserted, updated, or deleted.
-- Q. Demonstrate a use case, such as updating teacher_id when a student record is inserted.

-- Create a trigger to log student insertions
DELIMITER $$
CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO course_assignments (course_id)
    VALUES (NEW.course_id);
END$$
DELIMITER ;

-- Insert a new student to test the trigger
INSERT INTO students (name, age, grade, course_id, teacher_id) VALUES ('Liam', 22, 'B', 1, 2);

-- --------------------------------------------------------------------------------------------------------------
