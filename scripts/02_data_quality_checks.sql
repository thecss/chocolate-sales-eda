/*
=============================================================
Data Quality Assessment
=============================================================
Script Purpose:
    This script evaluates the quality of the dataset by
    identifying missing values, duplicate records, invalid
    numeric values, future dates, and reviewing categorical
    fields for inconsistencies.

Steps Performed:
    1. Check for missing and empty values.
    2. Identify duplicate Order IDs.
    3. Validate numeric columns against business rules.
    4. Check for future order dates.
    5. Review distinct categorical values.
*/


-- Check for missing and empty values across all columns.
SELECT
    SUM(CASE WHEN Order_ID IS NULL OR TRIM(Order_ID) = '' THEN 1 ELSE 0 END) AS missing_order_id,
	SUM(CASE WHEN Product IS NULL OR TRIM(Product) = '' THEN 1 ELSE 0 END) AS missing_product,
    SUM(CASE WHEN Country IS NULL OR TRIM(Country) = '' THEN 1 ELSE 0 END) AS missing_country,
    SUM(CASE WHEN Channel IS NULL OR TRIM(Channel) = '' THEN 1 ELSE 0 END) AS missing_channel,
    SUM(CASE WHEN Salesperson IS NULL OR TRIM(Salesperson) = '' THEN 1 ELSE 0 END) AS missing_salesperson,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS missing_order_date,
    SUM(CASE WHEN Discount_Pct IS NULL THEN 1 ELSE 0 END) AS missing_discount,
    SUM(CASE WHEN Price_per_Box IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN Marketing_Spend IS NULL THEN 1 ELSE 0 END) AS missing_marketing_spend,
    SUM(CASE WHEN Boxes_Shipped IS NULL THEN 1 ELSE 0 END) AS missing_boxes,
    SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS missing_amount
FROM orders;


-- Check for duplicate Order IDs.
SELECT Order_ID, COUNT(*) AS duplicate_order_id
FROM orders
GROUP BY Order_ID
HAVING COUNT(*)>1;


-- Identify records with negative discount percentages.
SELECT *
FROM orders
WHERE Discount_Pct <0;


-- Identify records with discount percentages greater than 100%.
SELECT *
FROM orders
WHERE Discount_Pct > 100;

-- Identify records with zero or negative price per box.
SELECT *
FROM orders
WHERE Price_per_Box <=0;

-- Identify records with negative marketing spend.
SELECT *
FROM orders
WHERE Marketing_Spend<0;


-- Identify records with zero or negative boxes shipped.
SELECT *
FROM orders
WHERE Boxes_Shipped<=0;

-- Identify records with zero or negative sales amount.
SELECT *
FROM orders
WHERE Amount<=0;

-- Check for order dates that occur in the future.
SELECT *
FROM orders
WHERE Order_Date > CURDATE();

-- Review distinct countries for inconsistent values.
SELECT DISTINCT Country FROM orders;
SELECT DISTINCT Channel FROM orders;
SELECT DISTINCT Product FROM orders;
SELECT DISTINCT Salesperson FROM orders;
