-- MySQL :- Day 13 - Advanced Topics and Real-World Scenarios🚀
-- Explored transactions, triggers, stored functions, case statements, and backup & restore techniques

-- --------------------------------------------------------------------------------------------------------------

-- Transactions :-
-- Q. Learn how to manage transactions to maintain data consistency.
-- Q. Demonstrate using BEGIN, COMMIT, and ROLLBACK.
-- Start a transaction
START TRANSACTION;

-- Insert multiple records in orders table
INSERT INTO orders (CustomerID, OrderAmount, OrderDate) VALUES 
(2, 500.00, '2024-12-15'),
(3, 250.75, '2024-12-16');

-- Rollback if there's an error
ROLLBACK;

-- Commit if successful
COMMIT;

-- Verify results
SELECT * FROM orders;
+---------+------------+-------------+------------+----------+
| OrderID | CustomerID | OrderAmount | OrderDate  | Discount |
+---------+------------+-------------+------------+----------+
|       1 |          1 |      150.00 | 2024-12-01 |    10.00 |
|       2 |          2 |      200.50 | 2024-12-03 |    10.00 |
|       3 |          1 |      300.75 | 2024-12-04 |    20.00 |
|       4 |          1 |      500.00 | 2024-12-20 |     NULL |
|       5 |          3 |      400.00 | 2024-12-20 |     NULL |
+---------+------------+-------------+------------+----------+

-- --------------------------------------------------------------------------------------------------------------
