/*
Stored Procedure didn't worked, gave me error: 
Error Code: 1314. LOAD DATA is not allowed in stored procedures
*/
SELECT '====================================================';
SELECT 'Loading Bronze Layer';
SELECT '====================================================';

SELECT '----------------------------------------------------';
SELECT 'Loading CRM Tables';
SELECT '----------------------------------------------------';

SELECT '>> Truncating table: bronze_crm_cust_info';
TRUNCATE TABLE bronze_crm_cust_info;

SELECT 'Inserting data into: bronze_crm_cust_info';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

SELECT '>> Truncating table: bronze_crm_prd_info';
TRUNCATE TABLE bronze_crm_prd_info;

SELECT 'Inserting data into: bronze_crm_prd_info';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

SELECT '>> Truncating table: bronze_crm_sales_details';
TRUNCATE TABLE bronze_crm_sales_details;

SELECT 'Inserting data into: bronze_crm_sales_details';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
INTO TABLE bronze_crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

SELECT '----------------------------------------------------';
SELECT 'Loading CRM Tables';
SELECT '----------------------------------------------------';

SELECT '>> Truncating table: bronze_erp_cust_az12';
TRUNCATE TABLE bronze_erp_cust_az12;

SELECT 'Inserting data into: bronze_erp_cust_az12';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/cust_az12.csv'
INTO TABLE bronze_erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

SELECT '>> Truncating table: bronze_erp_loc_a101';
TRUNCATE TABLE bronze_erp_loc_a101;

SELECT 'Inserting data into: bronze_erp_loc_a101';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/loc_a101.csv'
INTO TABLE bronze_erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

SELECT '>> Truncating table: bronze_erp_px_cat_g1v2';
TRUNCATE TABLE bronze_erp_px_cat_g1v2;

SELECT 'Inserting data into: bronze_erp_px_cat_g1v2';
SET @start_time = NOW(6);
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/px_cat_g1v2.csv'
INTO TABLE bronze_erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SET @end_time = NOW(6);
SELECT CONCAT(
    'Load completed in ',
    ROUND(TIMESTAMPDIFF(MICROSECOND,@start_time,@end_time)/1000000,3),
    ' seconds'
) AS status;

# when EXEC bronze.load_bronze
# run->SOURCE C:/path/to/bronze_load.sql;
