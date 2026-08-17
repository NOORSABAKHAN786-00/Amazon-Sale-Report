# 🛒 Amazon E-Commerce Sales Analysis — SQL Project

## 📌 Project Overview

This project analyzes Amazon e-commerce sales data using **MySQL** to identify sales performance, order trends, cancellation patterns, delivery performance, product performance, and revenue-related insights.

The project was designed as an end-to-end SQL analysis to demonstrate practical **Data Analyst SQL skills**, including data exploration, aggregation, filtering, joins, subqueries, CTEs, and window functions.

## 🎯 Business Objective

The main objective of this project is to analyze Amazon sales data and answer important business questions such as:

- What is the total revenue generated?
- How many unique orders were placed?
- How many units were sold?
- What is the Average Order Value (AOV)?
- Which categories generate the highest revenue?
- Which products are the top revenue generators?
- How much revenue is associated with cancelled orders?
- Which categories have the highest cancelled revenue?
- How many orders were successfully delivered?
- What are the major sales and operational patterns?
- How does product performance vary across categories?

## 🗂️ Dataset

The project works with multiple related datasets from an e-commerce environment.

### Main Dataset

**Amazon Sale Report**

Important fields include:

- Order ID
- Date
- Status
- Fulfilment
- Category
- SKU
- Qty
- Amount
- ship-city
- ship-state
- Size
- index

### Supporting Datasets

The SQL project also explores related datasets including:

- International Sale Report
- Sale Report
- May-2022
- P L March 2021
- Cloud Warehouse Comparison Chart
- Expense IIGF

These datasets are used for additional exploration, data validation, and JOIN analysis.

# 🛠️ Tools & Technologies

- **MySQL**
- SQL
- GitHub

### SQL Concepts Used

- SELECT
- DISTINCT
- WHERE
- IN / NOT IN
- BETWEEN
- ORDER BY
- GROUP BY
- Aggregate Functions
- COUNT()
- COUNT(DISTINCT)
- SUM()
- AVG()
- MAX()
- NULL Handling
- INNER JOIN
- LEFT JOIN
- Subqueries
- CTEs
- Window Functions
- RANK()
- Business KPI Analysis

# 📊 Key SQL Analysis

## 1. Total Revenue

Calculated total sales revenue using:

SELECT SUM(Amount) AS Total_Revenue
FROM `amazon sale report`;
