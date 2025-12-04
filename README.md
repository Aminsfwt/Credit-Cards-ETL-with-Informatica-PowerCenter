## Credit-Cards-ETL-with-Informatica-PowerCenter Project



#### Objective 
# Using Informatica powerCenter & MS SQL Server to analyse Bank Transactions database to devide the credit card data into 2 tables according to below logic and load them in Analysis Schema
* CREDIT_CARDS_ARCHIVE contains all credit cards that are created before a specific date
* CREDIT_CARDS_CURRENT contains all credit cards that are created on or after a specific date
* the date is to configurable as a parameter (use parameter file)
* CC_NUMBER_MASKED should contain CC_NUMBER masked (allow 3 digits left, 3 digits right, and mask the rest with 'X', example: 111XXXXXXXXXX111)
* execution should not start unless a 'ready' file is available at the server indicating execution is permitted
* CC_SUR field is a surrogate key that is incremented with each new record and should preserve the value for subsequent executions (not to be reset)
target tables should insert new data, update existing data based on CC_NUMBER. data truncation is not allowed
* any record with CC_NUMBER < 16 digits should not be loaded to table and should be forwarded to an error file "REJECTED_DATA.csv"
