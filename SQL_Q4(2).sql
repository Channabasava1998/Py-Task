-- Create database (optional)
CREATE DATABASE IF NOT EXISTS customer_comparison;
USE customer_comparison;

-- Create tables
CREATE TABLE CUSTOMER1 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL
);

CREATE TABLE CUSTOMER2 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL
);

-- Insert data
INSERT INTO CUSTOMER1 VALUES (1, 'aa'), (2, 'bb'), (3, 'cc'), (5, 'ee');
INSERT INTO CUSTOMER2 VALUES (1, 'aa'), (4, 'ff'), (5, 'ee');

-- Solution query
SELECT 
    c1.CustomerID,
    c1.CustomerName
FROM 
    CUSTOMER1 c1
LEFT JOIN 
    CUSTOMER2 c2 ON c1.CustomerID = c2.CustomerID
WHERE 
    c2.CustomerID IS NULL;