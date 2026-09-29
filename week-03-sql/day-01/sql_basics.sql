-- ============================================
-- WEEK 3 - DAY 1
-- SQL FUNDAMENTALS
-- ============================================


-- ============================================
-- 1. CREATE DATABASE
-- ============================================

CREATE DATABASE DataScience_SQL;


-- ============================================
-- 2. USE DATABASE
-- ============================================

USE DataScience_SQL;


-- ============================================
-- 3. CREATE CUSTOMERS TABLE
-- ============================================

CREATE TABLE Customers
(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(100),
    Age INT
);


-- ============================================
-- 4. INSERT CUSTOMER DATA
-- ============================================

INSERT INTO Customers
    (Customer_ID, Customer_Name, City, Age)
VALUES
    (1, 'Rahul', 'Bengaluru', 25),
    (2, 'Priya', 'Mumbai', 28),
    (3, 'Amit', 'Delhi', 32),
    (4, 'Sneha', 'Bengaluru', 26),
    (5, 'Arjun', 'Chennai', 30);


-- ============================================
-- 5. BASIC SELECT QUERIES
-- ============================================

SELECT *
FROM Customers;

SELECT Customer_Name, City
FROM Customers;

SELECT Customer_Name
FROM Customers;


-- ============================================
-- 6. ALIASES
-- ============================================

SELECT
    Customer_Name AS Name,
    City AS Location
FROM Customers;


-- ============================================
-- 7. CREATE PRODUCTS TABLE
-- ============================================

CREATE TABLE Products
(
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(100),
    Unit_Price DECIMAL(10,2)
);


-- ============================================
-- 8. INSERT PRODUCT DATA
-- ============================================

INSERT INTO Products
    (Product_ID, Product_Name, Category, Unit_Price)
VALUES
    (101, 'Laptop', 'Electronics', 60000.00),
    (102, 'Mouse', 'Electronics', 1000.00),
    (103, 'Keyboard', 'Electronics', 2500.00),
    (104, 'Chair', 'Furniture', 8000.00),
    (105, 'Desk', 'Furniture', 15000.00);


-- ============================================
-- 9. PRODUCT QUERIES
-- ============================================

SELECT *
FROM Products;

SELECT
    Product_Name,
    Unit_Price
FROM Products;

SELECT
    Product_Name,
    Unit_Price,
    Unit_Price * 2 AS Price_For_Two
FROM Products;

SELECT
    Product_Name,
    Unit_Price,
    Unit_Price * 0.90 AS Price_After_10_Percent_Discount
FROM Products;


-- ============================================
-- 10. CREATE SALES TABLE
-- ============================================

CREATE TABLE Sales
(
    Sale_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Quantity INT,
    Sales_Amount DECIMAL(10,2)
);


-- ============================================
-- 11. INSERT SALES DATA
-- ============================================

INSERT INTO Sales
    (Sale_ID, Customer_ID, Product_ID, Quantity, Sales_Amount)
VALUES
    (1001, 1, 101, 1, 60000.00),
    (1002, 2, 102, 2, 2000.00),
    (1003, 3, 104, 1, 8000.00),
    (1004, 1, 103, 2, 5000.00),
    (1005, 4, 105, 1, 15000.00),
    (1006, 5, 101, 1, 60000.00),
    (1007, 2, 104, 2, 16000.00),
    (1008, 3, 102, 3, 3000.00);


-- ============================================
-- 12. SALES QUERIES
-- ============================================

SELECT *
FROM Sales;

SELECT
    Product_ID,
    Quantity,
    Sales_Amount
FROM Sales;



-- ============================================
-- DAY 1 TASKS
-- ============================================


-- Task 1
-- Display all customers.
select * from Customers;

-- Task 2
-- Display only:
-- Customer_Name
-- City
select 
      Customer_Name,
	  City
from Customers;

-- Task 3
-- Display:
-- Product_Name
-- Category
-- Unit_Price
select Product_Name , Category , Unit_Price from Products;

-- Task 4
-- Display only customers' names.
select Customer_Name from Customers;

-- Task 5
-- Display customer name as:
-- Customer
-- and city as:
-- Location
select Customer_Name as Customer , city as Location from Customers;

-- Task 6
-- Display product name and price for two units.
select Product_name , Unit_price *2 as unit_price_of_2 from Products;

-- Task 7
-- Calculate the price after a 15% discount.
-- Expected columns:
-- Product_Name
-- Unit_Price
-- Discounted_Price
select Product_Name , Unit_Price , Unit_Price * 0.85 as Discounted_Price from Products;

-- Task 8
-- Display:
-- Sale_ID
-- Customer_ID
-- Product_ID
-- Sales_Amount
select Sale_ID , Customer_ID , Product_ID , Sales_Amount from Sales;

-- Task 9
-- Calculate what the sales amount would be if the quantity were doubled.
select Quantity , Quantity * 2 as Qunatity_dubled , Sales_Amount , Sales_Amount * 2 as Sales_Amount_After_Doubled from Sales;
select * from Sales;

-- Task 10 — Challenge
-- Write a query that displays:
--Product_Name
--Category
--Unit_Price
--Price_After_15_Percent_Discount
select Product_Name , Category , Unit_Price , Unit_Price * 0.15 as Price_After_15_Percent_Discount from Customers , Products;





