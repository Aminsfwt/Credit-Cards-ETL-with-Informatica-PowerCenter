CREATE TABLE DEPARTMENTS (
    DEPT_ID     INT PRIMARY KEY,
    DEPT_NAME   VARCHAR(100),
    DEPT_CATEG  CHAR(1),
    DEPT_LOC    VARCHAR(100)
);
GO
INSERT INTO DEPARTMENTS (DEPT_ID, DEPT_NAME, DEPT_CATEG, DEPT_LOC) VALUES
(1, 'Executive Leadership', 'A', 'New York'),
(2, 'Finance',              'A', 'London'),
(3, 'Marketing',            'B', 'Paris'),
(4, 'Human Resources',      'A', 'Berlin'),
(5, 'Technology',           'B', 'Tokyo'),
(6, 'Operations',           'B', 'Singapore');

SELECT * FROM DEPARTMENTS
