-- MySQL Day 1

-- Step 1: Create Database
CREATE DATABASE mydb;
USE mydb;

-- --------------------------------------------------------------------------------------------------------------

-- Step 2: Create Table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10)
);

-- --------------------------------------------------------------------------------------------------------------

-- Step 3: Insert Data
INSERT INTO students (name, age, grade)
VALUES
    ('Alice', 14, '8th'),
    ('Bob', 15, '9th'),
    ('Charlie', 13, '7th'),
    ('Diana', 14, '8th');
