LOAD DATA LOCAL INFILE 'C:\Program Files\MySQL\MySQL Server 8.0\Uploads\cust_info.csv'
INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# SHOW VARIABLES LIKE 'local_infile';

# SET GLOBAL local_infile = 1;

# SHOW VARIABLES LIKE 'secure_file_priv';

# SHOW GLOBAL VARIABLES LIKE 'local_infile';

DELETE FROM bronze_crm_cust_info;

SELECT * FROM bronze_crm_cust_info;
SELECT * FROM bronze_crm_prd_info;
SELECT * FROM bronze_crm_sales_details;
SELECT * FROM bronze_erp_cust_az12;
SELECT * FROM bronze_erp_loc_a101;
SELECT * FROM bronze_erp_px_cat_g1v2;

DELETE FROM bronze_crm_prd_info;
DELETE FROM bronze_crm_cust_info;
DELETE FROM bronze_crm_sales_details;
DELETE FROM bronze_erp_cust_az12;
DELETE FROM bronze_erp_loc_a101;
DELETE FROM bronze_erp_px_cat_g1v2;

ALTER TABLE bronze_crm_prd_info
MODIFY prd_cost INT NULL;

ALTER TABLE bronze_crm_prd_info
MODIFY prd_end_dt DATETIME NULL;

SHOW CREATE TABLE bronze_crm_prd_info;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
INTO TABLE bronze_crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/cust_az12.csv'
INTO TABLE bronze_erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/loc_a101.csv'
INTO TABLE bronze_erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/px_cat_g1v2.csv'
INTO TABLE bronze_erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
