## Day 1 - NumPy Basics

### Topics Learned
- NumPy
- Arrays
- 1D and 2D arrays
- Shape
- Indexing & Slicing
- Mathematical operations
- Array Manipulation 
- Array Attributes
- copy , shallow copy , deep copy 
- statistics operations 


### Practice
- Sales array analysis
- Student marks analysis

### What I Learned
I learn how to understand the data and how to deal with messy data and also performed some above operations using numpy 

### Git Commit
Day 1: NumPy arrays and numerical operations


## Day 2 - Pandas Series and DataFrames

### Topics Learned
- Pandas
- Series
- DataFrame
- Column selection
- head()
- info()
- describe()

### Practice
- Created customer DataFrame
- Inspected data
- Selected columns
- Calculated statistics

### What I Learned
using pandas we can deal with series and dataframe datasets and worked on some features like info() , describle() what they do understand it and implimented above practice task  

### Git Commit
Day 2: Pandas Series and DataFrames

## Day 3 - Reading and Exploring CSV Data

### Dataset
Name:
Source:

### Initial Analysis
Rows: 1000
Columns: 14
Numerical columns: 
Categorical columns:
Missing values:
Duplicates:

### What I Learned
how to deal with missing vlaues and how to deal with different types of data type and to how to fetch pure numerical , categorical and data time columns only and understand that this are features will help in EDA and data cleaning , handling outliers so it importent topic to know it.

 Numerical
df.select_dtypes(include="number")

 Categorical/Text
df.select_dtypes(include=["object", "category"])

 Date/Time
df.select_dtypes(include="datetime")

### Git Commit
Day 3: Load and explore CSV dataset

## Day 4 - Filtering and Sorting

### Topics Learned
- Column selection
- Row filtering
- Multiple conditions
- Sorting

### Business Questions
1.Products with sales > ₹5,000

df[df['Sales_Amount']>5000]['Product_Category']    # single column 
df[ df['Sales_Amount']>5000 ][['Product_Category' , 'Sales_Amount']]   # multipal columns 


2.Transactions with quantity > 10

df[ df['Quantity_Sold'] > 45 ][['Payment_Method','Quantity_Sold']]


3.Top 10 highest-sales transactions

df['Sales_Amount'].sort_values(ascending=False).head(10)


4.Customers spending > ₹10,000

df[df['Sales_Amount']>7000][['Customer_Type']]


5.Products sorted highest to lowest revenue

df.sort_values('Sales_Amount' , ascending=False)[['Sales_Amount','Product_Category']]

### What I Learned
understand the sorting filtering how it works and more specifically how to solve the Business Questions

### Git Commit
Day 4: Pandas filtering and sorting

## Day 5 - Data Cleaning

### Topics Learned
- Missing values
- isnull()
- fillna()
- dropna()
- Duplicates
- duplicated()
- drop_duplicates()
- Data types
- to_numeric()
- to_datetime()

### Cleaning Performed
- Handled missing values
- Removed duplicates
- Corrected data types
- Removed unnecessary columns

### What I Learned
today i got to know what kind of problem that we face during cleaning data and fixed the errors accordingly 

### Git Commit
Day 5: Data cleaning missing values duplicates and types

## Day 6 - GroupBy, Aggregations and Merge

### Topics Learned
- sum()
- mean()
- min()
- max()
- count()
- groupby()
- agg()
- merge()

### Business Analysis
- Total revenue
- Revenue by category
- Revenue by city
- Top products
- Customer order analysis

### What I Learned
I learn today that what aggregation and group by and merge how it works i learn this and also completed the above task
 
### Git Commit
Day 6: GroupBy aggregations and DataFrame merge