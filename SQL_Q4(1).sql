-- Create the database
CREATE DATABASE IF NOT EXISTS invoice_system;
USE invoice_system;

-- Create the Invoices table
CREATE TABLE Invoices (
    InvoiceID VARCHAR(10) PRIMARY KEY,
    CustomerID INT NULL,
    ProductName VARCHAR(50) NOT NULL
);

-- Insert the data exactly as shown
INSERT INTO Invoices (InvoiceID, CustomerID, ProductName) VALUES
('1111', 1, 'qq'),
('1112', NULL, 'ww'),  -- Empty CustomerID becomes NULL
('1113', 10, 'pp'),
('1114', 2, 'lkl'),
('1115', 2, 'lkl'),
('1116', 3, 'asas'),
('1117', 9, 'wef'),
('1118', NULL, 'vxh'); 

-- Query to view the table data
SELECT 
    InvoiceID AS 'Invoice ID',
    CASE 
        WHEN CustomerID IS NULL THEN ''
        ELSE CustomerID
    END AS 'Customer ID',
    ProductName AS 'Product Name'
FROM Invoices
ORDER BY InvoiceID;