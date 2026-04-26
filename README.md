## 📊 BigQuery Practical Exercise

This repository contains solutions to a set of SQL exercises completed using Google BigQuery. The goal of this exercise is to demonstrate proficiency in querying, data manipulation, and extracting insights from structured datasets.

## 🧠 Objectives
Practice writing SQL queries using BigQuery
Work with multiple tables and relationships
Apply functions like DATEDIFF, aggregations, and filtering
Generate meaningful insights from raw data
## 🗂️ Dataset Overview

The exercise is based on sample datasets that simulate real-world scenarios. Key tables include:

1. Users Table
user_id
name
age
province
2. Events Table
event_id
event_name
event_date
3. Additional Tables (if applicable)
May include transactional or activity-based data for deeper analysis
## 🧾 Key SQL Concepts Used
SELECT, WHERE, ORDER BY
GROUP BY and aggregation functions (COUNT, SUM, AVG)
JOIN (INNER, LEFT)
Date functions (DATEDIFF, CURRENT_DATE)
Aliasing and calculated fields
## 📌 Example Query
Days Remaining Until Events
SELECT 
    event_id,
    event_name,
    DATE_DIFF(event_date, CURRENT_DATE(), DAY) AS days_remaining
FROM Events;
## 📊 Expected Output
event_id	event_name	days_remaining
1	Seminar	X days
2	Workshop	X days
3	Hackathon	X days
## 🔍 Insights & Observations
Date functions are powerful for time-based analysis (e.g., event tracking)
Aggregations help identify trends and patterns in datasets
Structuring queries clearly improves readability and maintainability
## 🚀 How to Run
Open Google BigQuery
Create a dataset and upload the provided tables
Copy and paste the SQL queries into the query editor
Run queries and review results
## 📁 Repository Structure
📦 bigquery-practical-exercise
 ┣ 📜 README.md
 ┣ 📜 queries.sql
 ┗ 📂 datasets (optional if included)
## 💡 Learnings
Improved SQL query structuring
Better understanding of working with dates in BigQuery
Practical exposure to real-world data querying scenarios
## Author
Sibu
Aspiring Data Analyst | Business & Tech Enthusiast

Sibu
Aspiring Data Analyst | Business & Tech Enthusiast
