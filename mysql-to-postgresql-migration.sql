-- STEP 1: Export Data from MySQL
-- Run the following commands in MySQL to export data into a CSV file

SELECT * INTO OUTFILE '/tmp/export_data.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM your_table_name;

-- STEP 2: Create the PostgreSQL Database and Table
-- Run the following commands in PostgreSQL

-- Create the target database
CREATE DATABASE target_db;

-- Connect to the target database
\c target_db;

-- Create the table structure in PostgreSQL
CREATE TABLE your_table_name (
    column1 INT,
    column2 VARCHAR(255),
    column3 DATE
);

-- STEP 3: Import Data into PostgreSQL
-- Use the following COPY command to import data into PostgreSQL

COPY your_table_name (column1, column2, column3)
FROM '/tmp/export_data.csv'
DELIMITER ','
CSV HEADER;

-- STEP 4: Verify Data in PostgreSQL
-- Check the row count to ensure all data was imported
SELECT COUNT(*) AS row_count FROM your_table_name;
