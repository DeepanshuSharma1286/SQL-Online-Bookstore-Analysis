# SQL-Online-Bookstore-Analysis
MySQL project demonstrating relational database design and SQL-based business analysis for an online bookstore.

## 📖 Project Overview

This project demonstrates the design and analysis of an Online Bookstore database using MySQL. The database consists of multiple related tables that store information about books, customers, and orders. SQL queries were written to analyze inventory, customer purchasing behavior, and sales performance.

The project focuses on applying SQL concepts to solve real-world business problems using relational database management techniques.

---

## 🎯 Objectives

- Design a relational database for an online bookstore.
- Perform data analysis using SQL.
- Solve business-related analytical questions.
- Practice SQL concepts used in data analyst roles.

---

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- Git
- GitHub

---

## 🗂️ Database Schema

The project consists of the following tables:

### Books
- Book_ID
- Title
- Author
- Genre
- Price
- Stock
- Published_Year

### Customers
- Customer_ID
- Name
- Email
- City
- Country

### Orders
- Order_ID
- Customer_ID
- Book_ID
- Quantity
- Order_Date
- Total_Amount

---

## 🔗 Relationships

- One customer can place multiple orders.
- One book can appear in multiple orders.
- Orders connect Customers and Books using Foreign Keys.

---

## 📚 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- Aggregate Functions
  - SUM()
  - AVG()
  - COUNT()
  - MAX()
  - MIN()
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Subqueries
- COALESCE()
- LIMIT

---

## 📊 Business Questions Solved

### Basic Analysis

- Retrieve books belonging to a specific genre.
- Calculate average book price by genre.
- Find books published after a given year.
- List customers from a particular country.
- Retrieve orders placed during a specific month.
- Calculate total inventory stock.
- Find the most expensive book.
- Identify customers ordering multiple quantities.
- List all available genres.
- Find books with the lowest stock.
- Calculate total revenue generated.

---

### Advanced Analysis

- Total books sold by genre.
- Customers who placed at least two orders.
- Most frequently ordered book.
- Top 3 most expensive Fantasy books.
- Quantity of books sold by each author.
- Cities where customers spent more than $30.
- Customer with the highest total spending.
- Remaining inventory after fulfilling customer orders.

---

## 📈 Skills Demonstrated

- Relational Database Design
- SQL Query Writing
- Data Analysis
- Business Analytics
- Aggregate Analysis
- Table Joins
- Subqueries
- Inventory Analysis
- Customer Behavior Analysis
- Sales Analysis

---

## 📌 Key Insights

- Identified the highest-selling book based on customer orders.
- Calculated total revenue generated through book sales.
- Evaluated inventory remaining after fulfilling orders.
- Determined top-spending customers.
- Compared sales across different genres and authors.
- Analyzed customer purchasing patterns.

---

## 👨‍💻 Author

Deepanshu Sharma
