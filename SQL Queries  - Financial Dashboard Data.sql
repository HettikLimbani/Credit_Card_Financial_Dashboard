
-- Create a database 
CREATE DATABASE ccdb;
USE ccdb;

-- Create cc_detail table
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

DESC cc_detail;

-- Create cust_detail table
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);



-- Copy cc_detail table
LOAD DATA  INFILE 'C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/credit_card.csv' 
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Copy cust_detail table
LOAD DATA  INFILE 'C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/customer.csv' 
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



-- copy additional data (week-53) in cc_detail table
LOAD DATA  INFILE 'C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/cc_add.csv.csv' 
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- copy additional data (week-53) in cust_detail table (remember to update the file name and file location in below query)
LOAD DATA  INFILE 'C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/cust_add.csv.csv' 
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
