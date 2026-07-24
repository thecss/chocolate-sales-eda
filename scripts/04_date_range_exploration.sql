/*
=============================================================
Date  Exploration
=============================================================
Script Purpose:
    This script explores the Order_Date column to understand
    the time span of the dataset and identify sales trends
    across years, months and quarter.

Steps Performed:
    1. Determine the overall date range.
    2. Analyze yearly order distribution.
    3. Analyze monthly order distribution and calculate each
       month's contribution within its respective year.
    4. Analyze quarterly order distribution and calculate each
       quarter's contribution within its respective year.
   
Notes:
    - Records with missing Order_Date values (NULL) are excluded
      from date-based analysis.
    - Monthly and quarterly percentages are calculated using
      window functions to show contribution within each year.
*/


-- Find the earliest and latest order dates
SELECT 
    MIN(Order_Date) AS first_order,
    MAX(Order_Date) AS last_order
FROM
    orders;


-- Analyze the number of orders placed each year.
SELECT 
    YEAR(Order_Date) AS order_year, COUNT(*) AS total_orders
FROM
    orders
WHERE
    Order_Date IS NOT NULL
GROUP BY order_year
ORDER BY order_year;


-- Analyze monthly order distribution.
SELECT
	YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS month_number,
    MONTHNAME(Order_Date) AS month_name,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 /
          SUM(COUNT(*)) OVER (PARTITION BY YEAR(Order_Date)),
        2
    ) AS percentage
FROM orders
WHERE Order_Date IS NOT NULL
GROUP BY month_number, month_name,order_year
ORDER BY order_year,month_number;


-- Analyze quarterly order distribution.
SELECT
	YEAR(Order_Date) AS order_year,
    QUARTER(Order_Date) AS quarter,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 /
         SUM(COUNT(*)) OVER (PARTITION BY YEAR(Order_Date)),
        2
    ) AS percentage
FROM orders
WHERE Order_Date IS NOT NULL
GROUP BY order_year,quarter
ORDER BY order_year,quarter;


