---Q1 – WHERE Clause
SELECT *
FROM `sql-big-query-494420.retail_data.retail_sales`
WHERE EXTRACT(YEAR FROM Date) = 2023;

---Q2 – Filtering + Conditions
SELECT *
FROM `sql-big-query-494420.retail_data.retail_sales`
WHERE `Total Amount` > (
  SELECT AVG(`Total Amount`)
  FROM `sql-big-query-494420.retail_data.retail_sales`
);

---Q3 – Aggregate Functions
SELECT SUM(`Total Amount`) AS Total_Revenue
FROM `sql-big-query-494420.retail_data.retail_sales`;

---Q4 – DISTINCT
SELECT DISTINCT `Product Category`
FROM `sql-big-query-494420.retail_data.retail_sales`;

---Q5 – GROUP BY
SELECT `Product Category`,
       SUM(Quantity) AS Total_Quantity
FROM `sql-big-query-494420.retail_data.retail_sales`
GROUP BY `Product Category`;

---Q6 – CASE Statement
SELECT `Customer ID`,
       Age,
       CASE
         WHEN Age < 30 THEN 'Youth'
         WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
         ELSE 'Senior'
       END AS Age_Group
FROM `sql-big-query-494420.retail_data.retail_sales`;

---Q7 – Conditional Aggregation
SELECT Gender,
       COUNTIF(`Total Amount` > 500) AS High_Value_Transactions
FROM `sql-big-query-494420.retail_data.retail_sales`
GROUP BY Gender;

---Q8 – HAVING Clause
SELECT `Product Category`,
       SUM(`Total Amount`) AS Total_Revenue
FROM `sql-big-query-494420.retail_data.retail_sales`
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 5000;

---Q9 – Calculated Fields
SELECT `Transaction ID`,
       `Price per Unit`,
       CASE
         WHEN `Price per Unit` < 50 THEN 'Cheap'
         WHEN `Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
         ELSE 'Expensive'
       END AS Unit_Cost_Category
FROM `sql-big-query-494420.retail_data.retail_sales`;

---Q10 – Combining WHERE + CASE
SELECT `Customer ID`,
       Age,
       `Total Amount`,
       CASE
         WHEN `Total Amount` > 1000 THEN 'High'
         ELSE 'Low'
       END AS Spending_Level
FROM `sql-big-query-494420.retail_data.retail_sales`
