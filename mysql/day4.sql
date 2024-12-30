-- MySQL - Day 4 🚀

-- Today we’ll dive into JOINs and working with multiple tables. 
-- These are foundational concepts for relational databases, enabling you to fetch and manipulate data across different tables effectively.

-- --------------------------------------------------------------------------------------------------------------

-- Creating Tables for Practice
-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactNumber VARCHAR(15)
);

-- Insert sample data into Customers
INSERT INTO Customers (CustomerName, ContactNumber)
VALUES 
('Alice Johnson', '9876543210'),
('Bob Smith', '8765432109'),
('Catherine Lee', '7654321098');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Orders
INSERT INTO Orders (CustomerID, OrderAmount, OrderDate)
VALUES 
(1, 150.00, '2024-12-01'),
(2, 200.50, '2024-12-03'),
(1, 300.75, '2024-12-04');

-- --------------------------------------------------------------------------------------------------------------

-- Inner Join
-- Inner Join Example
SELECT 
    Orders.OrderID, 
    Customers.CustomerName, 
    Orders.OrderAmount, 
    Orders.OrderDate
FROM 
    Orders
INNER JOIN 
    Customers
ON 
    Orders.CustomerID = Customers.CustomerID;
