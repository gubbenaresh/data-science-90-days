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

# Numerical
df.select_dtypes(include="number")

# Categorical/Text
df.select_dtypes(include=["object", "category"])

# Date/Time
df.select_dtypes(include="datetime")

### Git Commit
Day 3: Load and explore CSV dataset