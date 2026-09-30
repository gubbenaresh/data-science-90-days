-- ============================================
-- WEEK 3 - DAY 2
-- FILTERING, SORTING & DISTINCT
-- ============================================

USE DataScience_SQL;

SELECT *
FROM Customers;


SELECT *
FROM Customers
WHERE City = 'Bengaluru';


SELECT *
FROM Customers
WHERE Age > 28;

-- Age greater than 25: 
SELECT *
FROM Customers
WHERE Age > 25;

-- Age 25 or Above 
SELECT *
FROM Customers
WHERE Age >= 25;

-- Age less than 30:
SELECT *
FROM Customers
WHERE Age < 30;

-- Age not equal to 25:
SELECT *
FROM Customers
WHERE Age <> 25;


SELECT *
FROM Customers
WHERE City = 'Bengaluru'
AND Age > 25;

SELECT *
FROM Products
WHERE Category = 'Electronics'
AND Unit_Price > 2000;

SELECT *
FROM Customers
WHERE City = 'Bengaluru'
OR City = 'Mumbai';

SELECT *
FROM Customers
WHERE NOT City = 'Bengaluru';

SELECT *
FROM Customers
WHERE City <> 'Bengaluru';

SELECT *
FROM Customers
WHERE City IN ('Bengaluru', 'Mumbai', 'Delhi');

SELECT *
FROM Customers
WHERE City NOT IN ('Bengaluru', 'Mumbai');


SELECT *
FROM Customers
WHERE Age BETWEEN 25 AND 30;


SELECT *
FROM Products
WHERE Unit_Price BETWEEN 5000 AND 20000;


-- Find names starting with A:
SELECT *
FROM Customers
WHERE Customer_Name LIKE 'A%';

-- Names ending with a:
SELECT *
FROM Customers
WHERE Customer_Name LIKE '%a';

-- Names containing h:
SELECT *
FROM Customers
WHERE Customer_Name LIKE '%h%';


--NULL means:
--There is no value / value is missing.
--It's important to understand:

--NULL ≠ 0
--NULL ≠ ''
--NULL ≠ 'NULL'

--To find NULL values:
SELECT *
FROM Customers
WHERE City IS NULL;

-- To find records where City is not NULL:
SELECT *
FROM Customers
WHERE City IS NOT NULL;

SELECT *
FROM Products
ORDER BY Unit_Price;

SELECT *
FROM Products
ORDER BY Unit_Price ASC;

SELECT *
FROM Products
ORDER BY Unit_Price DESC;


-- Sorting by multiple columns
SELECT *
FROM Customers
ORDER BY City ASC, Age DESC;

SELECT DISTINCT City
FROM Customers;

SELECT DISTINCT City, Age
FROM Customers;

SELECT TOP 3 *
FROM Products;

-- What are the 3 most expensive products?
SELECT TOP 3 *
FROM Products
ORDER BY Unit_Price DESC;

-- Find the top 3 products costing more than ₹2,000, sorted from highest to lowest.
select top 3 * 
from Products
where Unit_Price > 2000 
order by Unit_Price desc; 


-- DAY 2 TASKS

--Task 1 — Bengaluru customers
--Find all customers from Bengaluru.
select * from Customers where City = 'Bengaluru';

--Task 2 — Older customers
--Find customers whose age is greater than 27.
select * from Customers where age > 27;

--Task 3 — Young customers
--Find customers whose age is less than or equal to 28.
select * from Customers where age <= 28;

--Task 4 — Product price
--Find products costing more than ₹5,000.
--Return:
--Product_Name
--Category
--Unit_Price
select 
      Product_Name,
	  Category,
	  Unit_Price
from Products
where Unit_Price > 5000;

--Task 5 — Electronics
--Find all products in the Electronics category.
select * from Products
where Category = 'Electronics';

--Task 6 — Multiple cities
--Find customers from:
--Bengaluru
--Mumbai
--Use IN.
select * from Customers where City In ('Bengaluru','Mumbai');

--Task 7 — Price range
--Find products whose price is between:
--₹2,000 and ₹15,000
select * from Products
where Unit_Price between 2000 and 15000;

--Task 8 — Name pattern
--Find customers whose name starts with:A
--Use LIKE.
select * from Customers where Customer_Name like 'A%';

--Task 9 — Sort products
--Show all products from:
--highest price → lowest price
select * from Products order by Unit_Price desc;

--Task 10 — Unique cities
--Display each city only once.
select distinct City from Customers;

--Task 11 — Top 3
--Find the 3 most expensive products.
select top 3 * from Products
order by Unit_Price desc;

--Task 12 — Combined challenge
--Find the top 2 Electronics products with a price greater than ₹1,500.
--Return:
--Product_Name
--Category
--Unit_Price
--Sort from highest price to lowest.
select 
top 2
      Product_Name , 
	  Category , 
	  Unit_Price 
from Products 
where Unit_Price > 1500 
order by Unit_Price desc;

-- Business Challenge
--manager asks:
--"Give me the top 3 sales transactions where the sales amount is greater than ₹5,000, sorted from highest sales to lowest."
select 
      top 3 *
from Sales
where Sales_Amount > 5000 
order by Sales_Amount desc; 