# Week 3 SQL Assignment

## Topic

**Subqueries, CTEs and Window Functions**

## Dataset

**Sample Superstore**

## Student

**Sanjana**

---

# Project Overview

In this assignment, I worked on the Sample Superstore dataset using SQL.

First, I imported the dataset into a SQLite database and created separate tables for customers, products and orders.

After that, I used different SQL concepts like Subqueries, CTEs and Window Functions to answer different business questions and analyse the sales data.

---

# Objective

The main objective of this assignment is to learn how advanced SQL concepts can be used to analyse business data.

The assignment includes:

* Importing the dataset into SQLite
* Creating normalized tables
* Removing duplicate records using `SELECT DISTINCT`
* Using Subqueries
* Using Common Table Expressions (CTEs)
* Using Window Functions
* Combining different SQL concepts to solve business problems

---

# Tools Used

* Python
* Pandas
* SQLite3
* Jupyter Notebook
* SQL

---

# Folder Structure

```
Week3-SQL-SubQueries

│
├── data
├── notebooks
├── outputs
├── superstore.db
└── README.md
```

---

# Work Done

### 1. Data Setup

* Imported the Superstore dataset
* Created the `superstore_raw` table
* Created separate `customers`, `products` and `orders` tables
* Inserted unique records using `SELECT DISTINCT`

---

### 2. Subqueries

Solved the following problems:

* Orders having sales greater than average sales
* Highest sales order for each customer

---

### 3. Common Table Expressions (CTEs)

Solved the following problems:

* Total sales for each customer
* Customers having above-average total sales

---

### 4. Window Functions

Implemented:

* `RANK()` to rank customers based on sales
* `ROW_NUMBER()` to assign order numbers
* Top 3 customers based on total sales

---

### 5. Final Combined Query

Combined JOIN, CTE and Window Function to display:

* Customer Name
* Total Sales
* Customer Rank

---

### 6. Mini Project

The following business questions were answered:

* Top 5 customers
* Bottom 5 customers
* Customers with only one order
* Customers with above-average sales
* Highest order value for each customer

---

# What I Learned

Through this assignment, I learned:

* How to create tables from a dataset
* How to use `SELECT DISTINCT`
* How to write Subqueries
* How to use CTEs
* How Window Functions work
* How to combine different SQL concepts in one query
* How SQL can be used for business data analysis

---

# Conclusion

This assignment helped me improve my understanding of SQL and database concepts.

By solving different business questions, I learned how SQL can be used to analyse data and generate useful insights.

Overall, this assignment gave me practical experience with Subqueries, CTEs and Window Functions and improved my confidence in writing SQL queries.
