/*
=============================================================
Database Setup & Data Import
=============================================================
Script Purpose:
    This script creates the database and orders table,
    then imports the Chocolate Sales dataset into MySQL
    for exploratory data analysis (EDA).

Steps Performed:
    1. Create the 'chocolate_sales_db' database.
    2. Select the database for use.
    3. Create the 'orders' table with the required schema.
    4. Enable local file import.
    5. Load the CSV dataset into the orders table.

Notes:
    - The dataset is imported using LOAD DATA LOCAL INFILE.
    - Update the file path to match your local machine before executing the script.
*/


-- Create the project database if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS chocolate_sales_db;

-- Switch to the project database.
USE chocolate_sales_db;

-- Create the orders table to store raw sales data.
CREATE TABLE IF NOT EXISTS orders(
		    Order_ID VARCHAR(20),
        Product	VARCHAR(100),
        Country	VARCHAR(50),
        Channel	VARCHAR(30),
        Salesperson	VARCHAR(100),
        Order_Date	DATE,
        Discount_Pct DECIMAL(5,2),	
        Price_per_Box DECIMAL(10,2),	
        Marketing_Spend	DECIMAL(10,2),
        Boxes_Shipped INT,
        Amount DECIMAL(10,2)
);

-- Enable importing data from a local CSV file.
SET GLOBAL local_infile = 1;

-- Import the Chocolate Sales dataset into the orders table
LOAD DATA LOCAL INFILE 'dataset/Chocolate_Sales.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- Verify that the data has been imported successfully.
SELECT *
FROM orders
LIMIT 10;
