# SQL_pr.1--Data-Digger


video link :



repositories link :
🔍 DATA DIGGER

SQL Database Management & Data Analysis Project

<p align="center">
  <strong>Explore Data • Manage Records • Discover Insights</strong>
</p>

📌 Project Overview

Data Digger is a MySQL-based database management project. It helps manage customer information, product details, orders, and sales records.

The project focuses on SQL queries, database relationships, CRUD operations, and data analysis.

🎯 Project Objectives

Create and manage a database using MySQL.

Store customer and product information.

Manage customer orders.

Analyze sales and revenue.

Practice SQL queries and database operations.

🗄️ Database Information

Database Name: DATA_DIGGER

📂 Database Tables

No.

Table Name

Description

1

CUSTOMERS_TABLE

Customer information

2

PRODUCTS_TABLE

Product details and stock

3

ORDERS_TABLE

Customer order records

4

ORDERDETAILS_TABLE

Order and product details

🔗 Database Relationship Diagram

erDiagram
    CUSTOMERS_TABLE ||--o{ ORDERS_TABLE : places
    ORDERS_TABLE ||--o{ ORDERDETAILS_TABLE : contains
    PRODUCTS_TABLE ||--o{ ORDERDETAILS_TABLE : includes

    CUSTOMERS_TABLE {
        int CustomerID PK
        varchar Name
        varchar Email
        varchar Address
    }

    ORDERS_TABLE {
        int OrderID PK
        int CustomerID FK
        date OrderDate
        decimal TotalAmount
    }

    PRODUCTS_TABLE {
        int ProductID PK
        varchar ProductName
        decimal Price
        int Stock
    }

    ORDERDETAILS_TABLE {
        int OrderDetailID PK
        int OrderID FK
        int ProductID FK
        int Quantity
        decimal SubTotal
    }

⚙️ SQL Concepts Used

CREATE DATABASE

CREATE TABLE

INSERT INTO

SELECT

UPDATE

DELETE

WHERE

ORDER BY

GROUP BY

LIMIT

PRIMARY KEY

FOREIGN KEY

AUTO_INCREMENT

SUM(), AVG(), MAX(), MIN(), COUNT()

Subqueries

BETWEEN

CURDATE()

INTERVAL

📊 SQL Data Visualization & Charts

1. Product Stock Analysis

Shows available stock for each product.

SELECT ProductName, Stock
FROM PRODUCTS_TABLE;

xychart-beta
    title "Product Stock Analysis"
    x-axis ["Headphones", "Keyboard", "Mouse", "Monitor", "USB"]
    y-axis "Stock" 0 --> 50
    bar [20, 15, 30, 10, 50]

2. Product Price Comparison

Compares prices of different products.

SELECT ProductName, Price
FROM PRODUCTS_TABLE
ORDER BY Price DESC;

xychart-beta
    title "Product Price Comparison"
    x-axis ["Headphones", "Keyboard", "Mouse", "Monitor", "USB"]
    y-axis "Price (INR)" 0 --> 12000
    bar [1500, 900, 500, 12000, 250]

3. Customer Distribution

Displays customers according to their cities.

SELECT Address, COUNT(*) AS Total_Customers
FROM CUSTOMERS_TABLE
GROUP BY Address;

pie showData
    title Customer Distribution
    "Surat" : 1
    "Vadodara" : 1
    "Ahmedabad" : 1
    "Rajkot" : 1
    "Mumbai" : 1

4. Order Amount Analysis

Compares order amounts.

SELECT OrderID, TotalAmount
FROM ORDERS_TABLE
ORDER BY OrderID;

xychart-beta
    title "Order Amount Analysis"
    x-axis ["Order 1", "Order 2", "Order 3", "Order 4", "Order 5"]
    y-axis "Amount (INR)" 0 --> 4000
    bar [1500, 2500, 1800, 3200, 900]

Note: Charts use sample values from the original INSERT statements. They are illustrative and not automatically connected to MySQL.

🚀 Project Features

👤 Customer Management

Add new customers.

View customer records.

Update customer addresses.

Delete customer records.

Search customers by name.

📦 Product Management

Add new products.

View product prices and stock.

Update product prices.

Delete out-of-stock products.

Find products within a price range.

Find highest and lowest-priced products.

🛒 Order Management

Create customer orders.

View customer-wise orders.

Update order amounts.

Delete order records.

Find recent orders.

Calculate highest, lowest, and average order amounts.

📈 Sales Analysis

Calculate total revenue.

Find top-selling products.

Count product sales.

Analyze product quantities.

Compare order amounts.

🛠️ Technologies Used

Technology

Purpose

MySQL

Database Management

SQL

Data Queries

VS Code

Code Editor

GitHub

Project Hosting

▶️ How to Run the Project

Install MySQL.

Open MySQL Workbench or VS Code with MySQL connection.

Open Data_Digger.sql.

Execute the SQL queries in the correct order.

Use SELECT statements to check the output.

Table Creation Order

CUSTOMERS_TABLE

PRODUCTS_TABLE

ORDERS_TABLE

ORDERDETAILS_TABLE

📁 Project Structure

DATA-DIGGER/
│
├── Data_Digger.sql
│
└── README.md

🎓 Learning Outcomes

Understanding relational databases.

Creating tables and relationships.

Performing CRUD operations.

Using primary and foreign keys.

Writing SQL queries.

Analyzing business data.

Understanding database visualization.

👨‍💻 Author

Ayush Jivani

Student | BSCIT

Project: Data Digger

<p align="center">
  ⭐ Thank You for Visiting My Project! ⭐
</p>
