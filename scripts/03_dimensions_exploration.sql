/*
=============================================================
Categorical Data Exploration
=============================================================
Script Purpose:
    This script explores the categorical columns in the dataset
    by reviewing their distinct values and counting the number
    of unique categories.

Steps Performed:
    1. Review distinct product names and count unique products.
    2. Review distinct countries and count unique countries.
    3. Review distinct sales channels and count unique channels.
    4. Review distinct salespeople and count unique salespeople.
*/

-- Display all distinct product names.
SELECT DISTINCT Product 
FROM orders;

-- Count the total number of unique products.
SELECT COUNT(DISTINCT Product) AS unique_products_count 
FROM orders;

-- Display all distinct countries.
SELECT DISTINCT Country 
FROM orders;

-- Count the total number of unique countries.
SELECT COUNT(DISTINCT Country) AS unique_country_count 
FROM orders;

-- Display all distinct sales channels.
SELECT DISTINCT Channel 
FROM orders;

-- Count the total number of unique sales channels.
SELECT COUNT(DISTINCT Channel) AS unique_channel_count 
FROM orders;

-- Display all distinct salesperson names.
SELECT DISTINCT Salesperson 
FROM orders;

-- Count the total number of unique salespeople.
SELECT COUNT(DISTINCT Salesperson) AS unique_salesperson_count 
FROM orders;
