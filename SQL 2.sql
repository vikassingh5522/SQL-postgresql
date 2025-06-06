-- 1. Drop the table if it already exists (to avoid errors)
DROP TABLE IF EXISTS engineers;

-- 2. Create the engineers table
CREATE TABLE engineers (
    engineer_id SERIAL PRIMARY KEY,      -- Auto-increment ID
    name VARCHAR(100) NOT NULL,
    age INT,
    salary NUMERIC(12, 2),
    date_of_join DATE,
    birthday DATE,
    company_name VARCHAR(150)
);

-- 3. Insert sample data into engineers
INSERT INTO engineers (name, age, salary, date_of_join, birthday, company_name)
	VALUES
	  ('Aarav Sharma', 28, 85000.00, '2020-06-15', '1995-03-10', 'Infosys Ltd'),
	  ('Priya Mehta', 30, 92000.00, '2018-09-01', '1993-11-22', 'Tata Consultancy Services'),
	  ('Raj Patel', 26, 78000.00, '2021-02-10', '1997-07-05', 'HCL Technologies'),
	  ('Sneha Iyer', 31, 88000.00, '2019-11-20', '1992-12-15', 'Tech Mahindra'),
	  ('Rohit Verma', 27, 83000.00, '2020-04-05', '1996-05-18', 'Wipro Ltd'),
	  ('Kavya Nair', 29, 91000.00, '2022-01-12', '1994-06-25', 'L&T Infotech'),
	  ('Aditya Singh', 32, 86000.00, '2021-07-19', '1991-08-14', 'Capgemini India'),
	  ('Neha Kulkarni', 35, 95000.00, '2017-03-22', '1989-10-09', 'Cognizant India'),
	  ('Vikram Joshi', 33, 89000.00, '2019-08-30', '1990-02-17', 'Tech Mahindra'),
	  ('Ishita Desai', 30, 87500.00, '2020-11-01', '1993-12-02', 'Tata Elxsi');

-- 4. SELECT ALL DATA TO VERIFY
SELECT * FROM engineers;

SELECT name, age ,company_name  FROM  engineers;

UPDATE engineers
SET age=25  
WHERE name ='Aarav Sharma';

-- MAKE THE  order of colum  accending and decender order 
SELECT
*
FROM
ENGINEERS
ORDER BY
ENGINEER_ID ASC;

SELECT name, age, salary, date_of_join, birthday, company_name, engineer_id
FROM engineers
ORDER BY engineer_id ASC;

UPDATE engineers
SET name='Vikas singh' 
WHERE name ='Aarav Sharma';

UPDATE engineers
SET company_name='Vikas ltd' 
WHERE company_name ='Infosys Ltd';


UPDATE engineers
SET company_name='Vikas ltd',salary = 40000
WHERE age >= 30;

-- TO RENAME THE NAME COLUMN TO FULL NAME 
alter table engineers
rename column name to Full_name;

alter table engineers
rename column age to ages;

SELECT * FROM engineers;