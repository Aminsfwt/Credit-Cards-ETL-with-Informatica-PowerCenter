CREATE TABLE CUSTOMERS (
    CUST_ID        INT PRIMARY KEY,
    CUST_FNAME     VARCHAR(50),
    CUST_LNAME     VARCHAR(50),
    CUST_BIRTH_DATE DATE,
    CUST_STREET_ADDR VARCHAR(200),
    CUST_CITY      VARCHAR(100),
    CUST_PHONE     VARCHAR(50),
    CUST_EMAIL     VARCHAR(150),
    CREATED_DATE   DATE
);
GO
INSERT INTO CUSTOMERS 
(CUST_ID, CUST_FNAME, CUST_LNAME, CUST_BIRTH_DATE, CUST_STREET_ADDR, CUST_CITY, CUST_PHONE, CUST_EMAIL, CREATED_DATE)
VALUES
(2000, 'Emma',      'Johnson',   '1990-05-15', '123 Broadway St.',        'New York',      '+1-555-0101',        'emma.johnson@email.com',       '2021-01-10'),
(2001, 'James',     'Smith',     '1985-08-22', '456 Oxford Street',       'London',        '+44-20-7946-0958',    'james.smith@email.com',        '2021-02-14'),
(2002, 'Sophia',    'Williams',  '1993-12-03', '789 Shibuya Crossing',    'Tokyo',         '+81-3-1234-5678',     'sophia.williams@email.com',    '2021-03-01'),
(2003, 'Oliver',    'Brown',     '1988-07-17', '45 Champs-Élysées',       'Paris',         '+33-1-42-96-89-00',    'oliver.brown@email.com',       '2021-04-19'),
(2004, 'Isabella',  'Davis',     '1992-11-28', '561 Circular Quay',       'Sydney',        '+61-2-9374-4000',      'isabella.davis@email.com',     '2021-05-20'),
(2005, 'William',   'Miller',    '1986-11-28', '987 Sheikh Zayed Road',   'Dubai',         '+971-4-330-0000',      'william.miller@email.com',     '2021-06-11'),
(2006, 'Ava',       'Wilson',    '1991-03-06', '47 Marine Drive',         'Mumbai',        '+91-22-2270-1234',      'ava.wilson@email.com',         '2021-07-08'),
(2007, 'Liam',      'Moore',     '1989-06-13', '230 Orchard Road',        'Singapore',     '+65-6737-7411',        'liam.moore@email.com',         '2021-08-16'),
(2008, 'Charlotte', 'Taylor',    '1994-05-19', '589 Nathan Road',         'Hong Kong',     '+852-2730-1234',        'charlotte.taylor@email.com',   '2021-09-21'),
(2009, 'Noah',      'Anderson',  '1987-01-08', '741 Queen Street',        'Toronto',       '+1-416-363-2021',       'noah.anderson@email.com',      '2021-10-18'),
(2010, 'Amelia',    'Thomas',    '1995-12-02', '61 Unter den Linden',     'Berlin',        '+49-30-226-6810',       'amelia.thomas@email.com',      '2021-11-30'),
(2011, 'Benjamin',  'Jackson',   '1990-03-19', '963 Damrak',              'Amsterdam',     '+31-20-555-3456',       'benjamin.jackson@email.com',   '2021-12-02'),
(2012, 'Mia',       'White',     '1988-12-13', '174 Las Ramblas',         'Barcelona',     '+34-93-343-7800',       'mia.white@email.com',          '2022-01-10'),
(2013, 'Elijah',    'Harris',    '1989-05-07', '285 Via del Corso',       'Rome',          '+39-06-699-1',          'elijah.harris@email.com',      '2022-02-15'),
(2014, 'Harper',    'Martin',    '1991-04-11', '802 Drottninggatan',      'Stockholm',     '+46-8-508-88-508',       'harper.martin@email.com',      '2022-03-02'),
(2015, 'Lucas',     'Thompson',  '1992-09-15', '507 Strøget',             'Copenhagen',    '+45-33-14-14-18',        'lucas.thompson@email.com',     '2022-04-17'),
(2016, 'Evelyn',    'Garcia',    '1993-02-05', '618 Gangnam-gu',          'Seoul',         '+82-2-757-0001',         'evelyn.garcia@email.com',      '2022-05-25'),
(2017, 'Alexander', 'Martinez',  '1986-07-22', '279 Sukhumvit Road',      'Bangkok',       '+66-2-254-0424',         'alexander.martinez@email.com', '2022-06-28'),
(2018, 'Grace',     'Robinson',  '1994-01-15', '830 Jalan Thamrin',       'Jakarta',       '+62-21-2922-1234',       'grace.robinson@email.com',     '2022-07-14'),
(2019, 'Henry',     'Clark',     '1990-06-30', '941 Collins Street',      'Melbourne',     '+61-3-9655-8888',        'henry.clark@email.com',        '2022-08-08'),
(2020, 'Zoe',       'Rodriguez', '1985-10-18', '152 Robson Street',       'Vancouver',     '+1-604-681-5226',        'zoe.rodriguez@email.com',      '2022-09-05');

SELECT * FROM CUSTOMERS