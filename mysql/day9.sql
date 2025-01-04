-- MySQL - Day 7 🚀
-- Explored triggers, user-defined functions, database backup and restore, and data export/import.

-- --------------------------------------------------------------------------------------------------------------

-- Creating Triggers :-
-- Q. Create a trigger to automatically update a student’s grade to "F" if their age is above 25 upon insert or update.
-- Q. Test the trigger with sample data.
-- Create a trigger to update the grade if the age is above 25
DELIMITER //
CREATE TRIGGER UpdateGradeIfAgeAbove25
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    IF NEW.age > 25 THEN
        SET NEW.grade = 'F';
    END IF;
END;
//
DELIMITER ;

-- Test the trigger
INSERT INTO students (name, age, grade, course_id, teacher_id) 
VALUES ('Emily', 26, 'A', NULL, NULL);

SELECT * FROM students;

-- --------------------------------------------------------------------------------------------------------------
