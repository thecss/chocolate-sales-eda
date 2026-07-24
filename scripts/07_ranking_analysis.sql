/*
=============================================================
Ranking Analysis
=============================================================
Script Purpose:
    This script identifies the highest and lowest performers
    based on total revenue contribution.

Steps Performed:
    1. Rank the top 5 products by revenue.
    2. Rank the bottom 5 products by revenue.
    3. Rank the top 5 salespeople by revenue.
    4. Rank the bottom 5 salespeople by revenue.
    
SQL Functions Used:
    - SUM()
    - COUNT()
    - ORDER BY
    - LIMIT
*/



-- Identify the top 5 revenue-generating products.
SELECT
    Product,
    ROUND(SUM(Amount),2) AS total_revenue,
    ROUND(
        SUM(Amount) * 100.0 / SUM(SUM(Amount)) OVER(),
        2
    ) AS revenue_percentage
FROM orders
GROUP BY Product
ORDER BY total_revenue DESC
LIMIT 5;


-- Identify the bottom 5 revenue-generating products.
SELECT
    Product,
    ROUND(SUM(Amount),2) AS total_revenue,
    ROUND(
        SUM(Amount) * 100.0 / SUM(SUM(Amount)) OVER(),
        2
    ) AS revenue_percentage
FROM orders
GROUP BY Product
ORDER BY total_revenue
LIMIT 5;


-- Identify the top 5 revenue-generating salespeople.
SELECT
    Salesperson,
    ROUND(SUM(Amount),2) AS total_revenue,
    ROUND(
        SUM(Amount) * 100.0 / SUM(SUM(Amount)) OVER(),
        2
    ) AS revenue_percentage
FROM orders
GROUP BY Salesperson
ORDER BY total_revenue DESC
LIMIT 5;


-- Identify the bottom 5 revenue-generating salespeople.
SELECT
    Salesperson,
    ROUND(SUM(Amount),2) AS total_revenue,
    ROUND(
        SUM(Amount) * 100.0 / SUM(SUM(Amount)) OVER(),
        2
    ) AS revenue_percentage
FROM orders
GROUP BY Salesperson
ORDER BY total_revenue
LIMIT 5;
