DROP TABLE ACCOUNTS;
GO

CREATE TABLE ACCOUNTS (
    ACCT_ID        BIGINT PRIMARY KEY,
    CUST_ID        INT NOT NULL,
    ACCT_NAME      VARCHAR(100),
    ACCT_OPEN_DATE VARCHAR(50),
    ACCT_EMP_ID    INT,
    ACCT_BAL       DECIMAL(18,2)
);
GO
INSERT INTO ACCOUNTS (ACCT_ID, CUST_ID, ACCT_NAME, ACCT_OPEN_DATE, ACCT_EMP_ID, ACCT_BAL) VALUES
(200001, 2000, 'Premium Checking',       '2021-01-15', 3001, 125750),
(200002, 2001, 'Business Savings',       '2021-02-20', 3002, 89650),
(200003, 2002, 'Investment Account',     '2021-03-25', 3001, 123500),
(200004, 2003, 'Standard Checking',      '2021-04-10', 3004, 45830),
(200005, 2004, 'High Yield Savings',     '2021-05-18', 3002, 176000),
(200006, 2005, 'Corporate Account',      '2021-06-12', 3003, 567890),
(200007, 2006, 'Student Checking',       '2021-07-04', 3002, 12560),
(200008, 2007, 'Money Market',           '2021-08-15', 3004, 345670),
(200009, 2008, 'Premium Savings',        '2021-09-08', 3003, 45670),
(200010, 2009, 'Business Checking',      '2021-10-12', 3001, 189000),
(200011, 2010, 'Certificate Deposit',    '2021-11-20', 3002, 150000),
(200012, 2011, 'Joint Checking',         '2021-12-03', 3004, 95750),
(200013, 2012, 'Retirement Fund',        '2022-01-16', 3003, 312500),
(200014, 2013, 'Travel Account',         '2022-02-14', 3001, 67890),
(200015, 2014, 'Emergency Fund',         '2022-03-18', 3004, 105000),
(200016, 2015, 'Education Savings',      '2022-04-10', 3002, 321450),
(200017, 2016, 'Health Savings',         '2022-05-30', 3001, 231780),
(200018, 2017, 'Home Buying Fund',       '2022-06-18', 3003, 198000),
(200019, 2018, 'Vacation Savings',       '2022-07-22', 3004, 79000),
(200020, 2019, 'Investment Portfolio',   '2022-08-16', 3001, 890540),
(200021, 2020, 'Business Expansion',     '2022-09-08', 3001, 567230);

SELECT * FROM ACCOUNTS