# Data Digger 

1.Customers Table

CREATE DATABASE DATA_DIGGER;

SHOW DATABASES;

USE DATA_DIGGER;

 
CREATE TABLE IF NOT EXISTS CUSTOMERS_TABLE(
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50)
);

SHOW TABLES;

DESC CUSTOMERS_TABLE;

INSERT INTO CUSTOMERS_TABLE (Name, Email, Address)
VALUES
('Amirt', 'amirt@gmail.com', 'Surat'),
('Rahul', 'rahul@gmail.com', 'Vadodara'),
('Priya', 'priya@gmail.com', 'Ahmedabad'),
('Amit', 'amit@gmail.com', 'Rajkot'),
('Neha', 'neha@gmail.com', 'Mumbai');

SELECT * FROM CUSTOMERS_TABLE;

UPDATE CUSTOMERS_TABLE
SET ADDRESS = 'PUNE'
WHERE CustomerID = 1;

SELECT * FROM CUSTOMERS_TABLE;

DELETE FROM CUSTOMERS_TABLE
WHERE CustomerID = 5;

SELECT * FROM CUSTOMERS_TABLE;  

INSERT INTO CUSTOMERS_TABLE (Name, Email, Address)VALUES
('Alice', 'Alice@gmail.com', 'Rajkort');

SELECT * FROM CUSTOMERS_TABLE
WHERE NAME = 'Alice';




2. Orders Details Table

USE DATA_DIGGER;

CREATE TABLE ORDERDETAILS_TABLE(
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES ORDERS_TABLE(OrderID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCTS_TABLE(ProductID)
);

SHOW TABLES; 
DESC orderdetails_table;

SELECT OrderID
FROM ORDERS_TABLE
ORDER BY OrderID;

SELECT ProductID, ProductName FROM PRODUCTS_TABLE ORDER BY ProductID;

INSERT INTO OrderDetails_TABLE (OrderID, ProductID, Quantity, SubTotal)
VALUES
(31, 1, 2, 3000.00),
(32, 2, 1, 900.00);

INSERT INTO OrderDetails_TABLE(OrderID, ProductID, Quantity, SubTotal)
VALUES
(13, 3, 2, 1000.00),
(14, 4, 1, 12000.00),
(15, 1, 3, 4500.00);



SELECT * FROM OrderDetails_TABLE;


SELECT * FROM OrderDetails_TABLE WHERE OrderID = 31;

SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails_TABLE;

SELECT ProductID, SUM(Quantity) AS Total_Quantity FROM OrderDetails_TABLE
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS Times_Sold FROM OrderDetails_TABLE
WHERE ProductID = 1 GROUP BY ProductID;



3.orders Table

USE DATA_DIGGER;

CREATE TABLE ORDERS_TABLE (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS_TABLE(CustomerID)
);
SELECT CustomerID, Name
FROM CUSTOMERS_TABLE;

INSERT INTO ORDERS_TABLE(CustomerID, OrderDate, TotalAmount)
VALUES
(1, '2026-01-10', 1500.00),
(2, '2026-01-12', 2500.00),
(3, '2026-01-15', 1800.50),
(1, '2026-01-20', 3200.00),
(2, '2026-01-25', 900.00);

SELECT * FROM ORDERS_TABLE;

SELECT * FROM ORDERS_TABLE WHERE CustomerID = 1;

UPDATE ORDERS_TABLE SET TotalAmount = 3500.00 WHERE OrderID = 1;

DELETE FROM ORDERS_TABLE
WHERE OrderID = 12; 

SELECT * FROM ORDERS_TABLE;

INSERT INTO ORDERS_TABLE (CustomerID, OrderDate, TotalAmount)
VALUES (1, CURDATE(), 1200.00);

SELECT * FROM ORDERS_TABLE
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY AND OrderDate <= CURDATE();

SELECT 
MAX(TotalAmount) AS Highest_Amount,
MIN(TotalAmount) AS Lowest_Amount,
AVG(TotalAmount) AS Average_Amount
FROM ORDERS_TABLE;


4.products Table

USE DATA_DIGGER;

CREATE TABLE PRODUCTS_TABLE(
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

SHOW TABLES;

DESC PRODUCTS_TABLE;


INSERT INTO PRODUCTS_TABLE (ProductName, Price, Stock)
VALUES
('Headphones', 1500.00, 20),
('Keyboard', 800.00, 15),
('Mouse', 500.00, 30),
('Monitor', 12000.00, 10),
('USB Cable', 250.00, 50);

SELECT * FROM PRODUCTS_TABLE;

SELECT * FROM products_table 
ORDER BY Price DESC;

UPDATE products_table SET
Price = 900 WHERE ProductID = 2;

SELECT * FROM products_table;


DELETE FROM PRODUCTS_TABLE
WHERE Stock = 0;

UPDATE PRODUCTS_TABLE
SET Stock = 0
WHERE ProductID = 5;

SELECT * FROM products_table;


SELECT * FROM PRODUCTS_TABLE
WHERE Price BETWEEN 500 AND 2000;




SELECT ProductName, Price FROM PRODUCTS_TABLE
WHERE Price = (SELECT MAX(Price) FROM PRODUCTS_TABLE) OR Price = (SELECT MIN(Price) FROM PRODUCTS_TABLE);