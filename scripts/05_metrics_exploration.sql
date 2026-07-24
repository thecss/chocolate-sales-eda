/*
=============================================================
Measures Exploration
=============================================================
Script Purpose:
    This script analyzes key numerical metrics from the
    chocolate sales dataset to understand overall business
    performance.

Steps Performed:
    1. Calculate total orders.
    2. Calculate total revenue generated.
    3. Calculate total boxes shipped.
    4. Calculate average order value.
    5. Calculate average price per box.
    6. Calculate average discount percentage.
    7. Calculate total and average marketing spend.
    8. Create an overall KPI summary for business reporting.

Notes:
    - NULL values are automatically excluded from aggregate
      calculations.
*/



-- Calculate the total number of orders.
SELECT 
    COUNT(*) AS total_orders
FROM
    orders;

-- Calculate total revenue generated from all orders.
SELECT ROUND(SUM(Amount),2) AS total_revenue
FROM orders;

-- Calculate total number of chocolate boxes shipped.
SELECT
    SUM(Boxes_Shipped) AS total_boxes_shipped
FROM orders;

-- Calculate average revenue generated per order.
SELECT
    ROUND(AVG(Amount),2) AS average_order_value
FROM orders;

-- Calculate the average selling price per chocolate box.
SELECT
    ROUND(AVG(Price_per_Box),2) AS average_price_per_box
FROM orders;

-- Calculate the average discount applied across orders.
SELECT
    ROUND(AVG(Discount_Pct),2) AS average_discount_percentage
FROM orders;

-- Calculate total and average marketing spend.
SELECT
    ROUND(SUM(Marketing_Spend),2) AS total_marketing_spend,
    ROUND(AVG(Marketing_Spend),2) AS average_marketing_spend
FROM orders;


-- Generate an overall business KPI summary.
SELECT
    COUNT(Order_ID) AS total_orders,
    ROUND(SUM(Amount),2) AS total_revenue,
    SUM(Boxes_Shipped) AS total_boxes_shipped,
    ROUND(AVG(Amount),2) AS average_order_value,
    ROUND(AVG(Price_per_Box),2) AS average_price_per_box,
    ROUND(AVG(Discount_Pct),2) AS average_discount_percentage,
    ROUND(SUM(Marketing_Spend),2) AS total_marketing_spend,
    ROUND(AVG(Marketing_Spend),2) AS average_marketing_spend
FROM orders;
