CREATE SCHEMA `bank` ;

USE bank;

-- CLIENT: personal and demographic data
CREATE TABLE CLIENT (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    ATTRITION_FLAG VARCHAR(20),
    CUSTOMER_AGE INT,
    GENDER CHAR(1),
    DEPENDENT_COUNT INT,
    EDUCATION_LEVEL VARCHAR(50),
    MARITAL_STATUS VARCHAR(20),
    INCOME_CATEGORY VARCHAR(30),
    CARD_CATEGORY VARCHAR(20)
);

-- CLIENT_HISTORY: interaction history
CREATE TABLE CLIENT_HISTORY (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    MONTHS_ON_BOOK INT,
    TOTAL_RELATIONSHIP_COUNT INT,
    MONTHS_INACTIVE_12_MON INT,
    CONTACTS_COUNT_12_MON INT,
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);

-- CREDIT: financial and credit information
CREATE TABLE CREDIT (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    CREDIT_LIMIT FLOAT,
    TOTAL_REVOLVING_BAL FLOAT,
    AVG_OPEN_TO_BUY FLOAT,
    AVG_UTILIZATION_RATIO FLOAT,
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);

-- TRANSACTIONS: Transaction Information
CREATE TABLE TRANSACTIONS (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    TOTAL_AMT_CHNG_Q4_Q1 FLOAT,
    TOTAL_TRANS_AMT INT,
    TOTAL_TRANS_CT INT,
    TOTAL_CT_CHNG_Q4_Q1 FLOAT,
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);

-- CLUSTERING: K-mean Labels
CREATE TABLE CLUSTERING (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    CLUSTER_LABEL VARCHAR(100),
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);


-- CLUSTERING: Churn Score
CREATE TABLE CHURN_SCORE (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    Churn_Score FLOAT,
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);


-- SHAP: SHAP
CREATE TABLE SHAP (
    CLIENTNUM VARCHAR(20) PRIMARY KEY,
    Customer_Age FLOAT,
    Dependent_count FLOAT,
    Total_Relationship_Count FLOAT,
    Months_Inactive_12_mon FLOAT,
    Contacts_Count_12_mon FLOAT,
    Credit_Limit FLOAT,
    Total_Revolving_Bal FLOAT,
    Total_Amt_Chng_Q4_Q1 FLOAT,
    Total_Trans_Ct FLOAT,
    Total_Ct_Chng_Q4_Q1 FLOAT,
    Avg_Utilization_Ratio FLOAT,
    Gender_F FLOAT,
    Gender_M FLOAT,
    Education_Level_College FLOAT,
    Education_Level_Doctorate FLOAT,
    Education_Level_Graduate FLOAT,
    `Education_Level_High School` FLOAT,
    `Education_Level_Post-Graduate` FLOAT,
    Education_Level_Uneducated FLOAT,
    Education_Level_Unknown FLOAT,
    Marital_Status_Divorced FLOAT,
    Marital_Status_Married FLOAT,
    Marital_Status_Single FLOAT,
    Marital_Status_Unknown FLOAT,
    `Income_Category_$120K +` FLOAT,
    `Income_Category_$40K - $60K` FLOAT,
    `Income_Category_$60K - $80K` FLOAT,
    `Income_Category_$80K - $120K` FLOAT,
    `Income_Category_Less than $40K` FLOAT,
    Income_Category_Unknown FLOAT,
    Card_Category_Blue FLOAT,
    Card_Category_Gold FLOAT,
    Card_Category_Platinum FLOAT,
    Card_Category_Silver FLOAT,
    FOREIGN KEY (CLIENTNUM) REFERENCES CLIENT(CLIENTNUM)
);