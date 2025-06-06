
DROP TABLE IF EXISTS com2;


-- First, create the table
CREATE TABLE com2 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(110) NOT NULL,
    position VARCHAR(110),
    department VARCHAR(100),
    hire_date DATE,
    salary NUMERIC(10,2)
);


-- Then, select from the table
SELECT * FROM com2;
INSERT INTO com2 (employee_id, name, position, department, hire_date, salary)
VALUES 
  (101, 'Alice Smith', 'Manager', 'Sales', '2021-03-15', 85000.00),
  (102, 'Bob Johnson', 'Analyst', 'Finance', '2022-08-10', 65000.00),
  (103, 'Carol Lee', 'HR Executive', 'Human Resources', '2020-11-20', 60000.00),
  (104, 'David Miller', 'Team Lead', 'IT', '2019-07-01', 90000.00),
  (105, 'Emma Davis', 'Marketing Executive', 'Marketing', '2020-09-23', 62000.00),
  (106, 'Franklin White', 'Data Scientist', 'R&D', '2022-04-12', 98000.00),
  (107, 'Grace Lee', 'Accountant', 'Finance', '2021-11-30', 67000.00),
  (108, 'Hannah Patel', 'Software Developer', 'IT', '2023-01-15', 72000.00)
ON CONFLICT (employee_id) DO NOTHING;



TRUNCATE TABLE com2 RESTART IDENTITY;

TRUNCATE TABLE com2 RESTART IDENTITY CASCADE;

SELECT * FROM com2;


-- delete  the row 
DELETE FROM com2
WHERE employee_id=105

-- DLETED THE  column salary
ALTER TABLE com2 DROP COLUMN salary;



SELECT * FROM com2;
