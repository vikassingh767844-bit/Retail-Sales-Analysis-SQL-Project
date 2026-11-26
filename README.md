# Retail-Sales-Analysis-SQL-Project
# Retail Sales Analysis using SQL

## Project Overview
This project focuses on analyzing retail sales data using MySQL to extract meaningful business insights. The analysis explores sales performance, customer behavior, product categories, and purchasing patterns to help understand business performance and support data-driven decision-making.

## Objectives
- Analyze overall retail sales performance.
- Identify the most popular product categories.
- Understand customer purchasing behavior.
- Analyze sales trends across different months.
- Compare purchasing patterns across genders.
- Identify peak shopping hours.

## Tools & Technologies
- **Database:** MySQL
- **Language:** SQL
- **Environment:** MySQL Workbench

## Dataset Description

The dataset contains retail transaction records with the following attributes:

| Column | Description |
|---|---|
| transactions_id | Unique transaction ID |
| sale_date | Date of transaction |
| sale_time | Time of transaction |
| customer_id | Customer identification |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantiy | Quantity purchased |
| price_per_unit | Price per unit |
| cogs | Cost of goods sold |
| total_sale | Total transaction amount |

## Business Questions & SQL Analysis

### 1. Data Exploration
- Retrieve the total number of sales transactions.
- Identify the number of unique customers.
- Find all available product categories.
- Check for missing values in important columns.

### 2. Sales Analysis
- Retrieve sales made on a specific date.
- Identify clothing transactions with quantity greater than 4 in November 2022.
- Calculate total sales and order count for each category.
- Find transactions with total sales greater than 1000.

### 3. Customer Analysis
- Calculate the average age of customers purchasing from the Beauty category.
- Identify the top 5 customers based on total spending.
- Find the number of unique customers in each product category.

### 4. Gender-Based Analysis
- Calculate the number of transactions for each gender across different categories.

### 5. Time-Based Analysis
- Calculate average monthly sales.
- Identify the best-selling month in each year.
- Categorize orders into Morning, Afternoon, and Evening shifts.

## SQL Concepts Used
- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- Aggregate Functions (SUM, AVG, COUNT)
- DISTINCT
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions (RANK)
- Date and Time Functions
- Subqueries

## Key Learning Outcomes
- Hands-on experience with SQL-based data analysis.
- Understanding of retail business metrics.
- Ability to transform raw transaction data into meaningful insights.
- Practical experience solving business-related analytical questions.

## Project Structure

```text
Retail-Sales-Analysis-SQL-Project/
│
├── README.md
├── SQL/
│   └── retail_sales_analysis.sql
├── Dataset/
│   └── retail_sales.csv
└── Images/
```

## Conclusion

This project demonstrates how SQL can be used to analyze retail transaction data and extract useful insights related to sales performance, customer behavior, product categories, and purchasing trends.

The project helped develop practical SQL skills and an understanding of how data analysis supports business decision-making.

---

**Author:** Vikas Singh  
**Project Type:** Data Analysis  
**Technology:** MySQL
