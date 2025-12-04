# Credit-Cards-ETL-with-Informatica-PowerCenter Project



## Objective 

#### using Bank Transacton Database [Bank_DB](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/tree/main/BankDB)

- Database Entity Relation Ship Diagram

   ![ERD](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/DB_ERD.png)

#### 1. create target schema Analysis_DWH

#### 2. create 2 target tables:
CREDIT_CARDS_ARCHIVE
CREDIT_CARDS_CURRENT

#### both table should contain
CC_SUR,
CC_NUMBER,
CC_NUMBER_MASKED,
CC_BAL,
CC_LIMIT,
CC_OPEN_DATE,
ACCT_OPEN_DATE,
EMP_NAME,
EMP_EMAIL,
EMP_DEPT_NAME

#### Using Informatica powerCenter & MS SQL Server to analyse Bank Transactions database to devide the credit card data into 2 tables according to below logic and load them in Analysis Schema
* CREDIT_CARDS_ARCHIVE contains all credit cards that are created before a specific date
* CREDIT_CARDS_CURRENT contains all credit cards that are created on or after a specific date
* the date is to configurable as a parameter (use parameter file)
* CC_NUMBER_MASKED should contain CC_NUMBER masked (allow 3 digits left, 3 digits right, and mask the rest with 'X', example: 111XXXXXXXXXX111)
* execution should not start unless a 'ready' file is available at the server indicating execution is permitted
* CC_SUR field is a surrogate key that is incremented with each new record and should preserve the value for subsequent executions (not to be reset)
target tables should insert new data, update existing data based on CC_NUMBER. data truncation is not allowed
* any record with CC_NUMBER < 16 digits should not be loaded to table and should be forwarded to an error file "REJECTED_DATA.csv"

#### Informatica Implementation:

- Uplaod data from Bank_DB using SQL_CONN
  
  ![SOURCES](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/Sources.png)
- Create Mapping To Implement the ETL
- Create Paramete to put the specific date the wanted to split the data
- Make join between the tables to get the wanted attributes

  ![JOINS](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/Jons.png)
  
- Create Expretion Transformation To Implement the wanted transformations
- Create Router Transformation To make the groups CURRENT, ARCHIVED and REJECTED DATA
- Create 2 Lookups & Update Strateges FOR CURRENT, ARCHIVED Tables to insert new data, update existing data based on CC_NUMBER

    ![ROUTER](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/lkp&upd.png)
  
- LOAD the date Into 2 database tables for the accepted data and 1 csv file for rejected data

  ![ROUTER](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/Credit_Card_Project.png)


 # The Final Outputs
 #### 1- Current Table
  ![ROUTER](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/current.png)
 #### 2- Archive Table
  ![ROUTER](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/Archive.png)
 #### 3- Rejected Table
  ![ROUTER](https://github.com/Aminsfwt/Credit-Cards-ETL-with-Informatica-PowerCenter/blob/main/Project_Output/Rejected.png)    
















