/*
=============================================================
Data Validation
=============================================================
Script Purpose:
    This script validates the imported dataset by previewing
    the records, checking the table structure, and confirming
    the total number of imported rows.

Steps Performed:
    1. Preview the first 10 records.
    2. Review the table schema and column data types.
    3. Verify the total number of imported records.
*/

-- Preview the imported data.
SELECT 
    *
FROM
    orders
LIMIT 10;

-- Review the table structure and column data types.
DESCRIBE orders;

-- Displays the total number of imported records.
SELECT 
    COUNT(*) AS total_records
FROM
    orders;
