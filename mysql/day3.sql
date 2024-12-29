-- MySQL - Day 3 🚀

-- Goal for Day 3: Advanced Data Manipulation
-- Deepen understanding of CRUD operations.
-- Work with UPDATE and DELETE in detail.
-- Explore WHERE clauses for precision in data manipulation.

-- --------------------------------------------------------------------------------------------------------------

-- Updating Data
-- Update the grade of a specific student
UPDATE students
SET grade = 'A'
WHERE name = 'Alice';

-- Update multiple columns
UPDATE students
SET grade = 'B', age = 20
WHERE id = 2;

-- View changes
SELECT * FROM students;
/*
+----+---------+-----+-------+-----------+
| id | name    | age | grade | course_id |
+----+---------+-----+-------+-----------+
|  1 | Alice   |  14 | A     |         1 |
|  2 | Bob     |  20 | B     |         1 |
|  3 | Charlie |  13 | 7th   |         2 |
|  4 | Diana   |  14 | 8th   |         2 |
+----+---------+-----+-------+-----------+
*/
-- --------------------------------------------------------------------------------------------------------------

-- Conditional Updates with WHERE
-- Update all students with grade 'C' to grade 'B'
UPDATE students
SET grade = 'B'
WHERE grade = 'C';

-- Check the updated data
SELECT * FROM students;
-- --------------------------------------------------------------------------------------------------------------
