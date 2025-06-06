CREATE DATABASE employee_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    joining_date DATE,
    age INT
);

SET datestyle = 'ISO, DMY';


COPY employees(employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'C:\Users\Asus\OneDrive\Desktop\java full Archer Infotech\SOL\employee_data with error.csv'
DELIMITER ',' 
CSV HEADER;

SELECT * FROM employees;
