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

DELETE FROM bronze_crm_prd_info;

ALTER TABLE bronze_crm_prd_info
MODIFY prd_cost INT NULL;

ALTER TABLE bronze_crm_prd_info
MODIFY prd_end_dt DATETIME NULL;

SHOW CREATE TABLE bronze_crm_prd_info;

LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @prd_id,
    @prd_key,
    @prd_nm,
    @prd_cost,
    @prd_line,
    @prd_start_dt,
    @prd_end_dt
)
SET
    prd_id       = NULLIF(@prd_id,''),
    prd_key      = NULLIF(@prd_key,''),
    prd_nm       = NULLIF(@prd_nm,''),
    prd_cost     = NULLIF(@prd_cost,''),
    prd_line     = NULLIF(@prd_line,''),
    prd_start_dt = NULLIF(@prd_start_dt,''),
    prd_end_dt   = NULLIF(@prd_end_dt,'');