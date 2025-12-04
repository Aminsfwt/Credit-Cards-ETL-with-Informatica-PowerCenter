-- Create the Employees table
CREATE TABLE Employees (
    EMP_ID          INT             NOT NULL,
    EMP_FULL_NAME   VARCHAR(50)     NOT NULL,
    EMP_PHONE       VARCHAR(15)     NOT NULL,
    EMP_EMAIL       VARCHAR(100)    NOT NULL,
    EMP_DEPT_ID     TINYINT         NOT NULL,
    CREATED_DATE    DATE            NOT NULL,
    UPDATED_DATE    DATE            NULL,
    
    CONSTRAINT PK_Employees PRIMARY KEY (EMP_ID)
);
GO

-- Insert the sample data from your screenshot
INSERT INTO Employees (EMP_ID, EMP_FULL_NAME, EMP_PHONE, EMP_EMAIL, EMP_DEPT_ID, CREATED_DATE, UPDATED_DATE) VALUES
(3000, 'Michael Chen',       '555-0001', 'michael.chen@company.com',     1, '2020-01-15', '2024-03-20'),
(3001, 'Sarah Johnson',      '555-0002', 'sarah.johnson@company.com',    2, '2020-02-20', '2024-04-15'),
(3002, 'David Kim',          '555-0003', 'david.kim@company.com',        5, '2020-03-10', '2024-05-12'),
(3003, 'Emily Rodriguez',    '555-0004', 'emily.rodriguez@company.com',  3, '2020-04-05', '2024-06-08'),
(3004, 'James Wilson',       '555-0005', 'james.wilson@company.com',     4, '2020-05-18', '2024-07-22'),
(3005, 'Rachel Thompson',    '555-0006', 'rachel.thompson@company.com',  6, '2020-06-25', '2024-08-30'),
(3006, 'Alex Martinez',      '555-0007', 'alex.martinez@company.com',    2, '2020-07-12', '2024-09-14'),
(3007, 'Jessica Brown',      '555-0008', 'jessica.brown@company.com',    3, '2020-08-08', '2024-10-18'),
(3008, 'Robert Garcia',      '555-0009', 'robert.garcia@company.com',    5, '2020-09-03', '2024-11-25'),
(3009, 'Amanda Davis',       '555-0010', 'amanda.davis@company.com',     1, '2020-10-14', '2024-12-12'),
(3010, 'Christopher Lee',    '555-0011', 'christopher.lee@company.com',  6, '2020-11-21', '2025-01-16'),
(3011, 'Lisa Anderson',      '555-0012', 'lisa.anderson@company.com',    4, '2020-12-07', '2025-02-28'),
(3012, 'Kevin White',        '555-0013', 'kevin.white@company.com',      2, '2021-01-19', '2025-03-10'),
(3013, 'Nicole Taylor',      '555-0014', 'nicole.taylor@company.com',    3, '2021-02-26', '2025-04-20'),
(3014, 'Brian Miller',       '555-0015', 'brian.miller@company.com',     5, '2021-03-15', '2025-05-14'),
(3015, 'Stephanie Clark',    '555-0016', 'stephanie.clark@company.com',  1, '2021-04-22', '2025-06-18'),
(3016, 'Daniel Lewis',       '555-0017', 'daniel.lewis@company.com',     6, '2021-05-30', '2025-07-25'),
(3017, 'Michelle Walker',    '555-0018', 'michelle.walker@company.com',  4, '2021-06-16', '2025-08-12'),
(3018, 'Jason Hall',         '555-0019', 'jason.hall@company.com',       2, '2021-07-08', '2025-09-30'),
(3019, 'Ashley Young',       '555-0020', 'ashley.young@company.com',     3, '2021-08-14', '2025-10-22');
GO

-- Optional: Verify the data
SELECT * FROM Employees ORDER BY EMP_ID;