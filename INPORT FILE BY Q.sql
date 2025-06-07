
DROP DATABASE employee_db;


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


-- OPERATORS

-- USING  COMPARISON OPERATORS 


--matching age 30 
select * from employees 
where age=30;

select * from employees 
where age<>30;

--matching all except 30
select  first_name, age FROM employees 
where age<>30;

--SALARY GREATER than 50000
select * from employees 
where salary>50000;

select  first_name, salary FROM employees 
where salary>50000;

select  first_name, salary FROM employees 
where salary>=50000;


select  first_name, salary FROM employees 
where salary=50000;

select  first_name, salary FROM employees 
where salary<50000;

----------------------------------------------------------------------------------------------

-- USING AND  LOGICAL OPERATORS


SELECT * FROM employees 
WHERE age=40 and salary >=50000;


select  first_name, salary, age FROM employees 
WHERE age=40 and salary >=50000;


select  first_name, salary, age FROM employees 
WHERE age=40 and salary >=100000;



-- USING OR  LOGICAL OPERATORS


SELECT * FROM employees 
WHERE age=60 or salary >=100000;


select  first_name, salary, age FROM employees 
WHERE age=40 OR salary >=50000;


-- USING NOT  LOGICAL OPERATORS

SELECT * FROM employees 
WHERE NOT (department='IT');

SELECT * FROM employees 
WHERE NOT (SALARY='50000');


------------------------------------------------------------------------------------

-- BETWEEN, LIKE, and IN Operators in SQL

-- 1) Retrieve employees  whose salary is between 40,000 and 60,000 --use between operators

  select  first_name, last_name, salary from employees
  WHERE  salary BETWEEN 40000 AND 60000;


--2)find employees whos email addresses end with gmail.com -- use like operator

  select  first_name, last_name, email
  from employees
  WHERE email LIKE '%gmail.com';


 -- for first 
  select  first_name from employees
  WHERE first_name LIKE 'J%';

--for last word 
   select  first_name from employees
  WHERE first_name LIKE '%a';

-- for medial word 
   select  first_name from employees
  WHERE first_name LIKE '%a%';

    
 

--3) retrieve employeeswho belong  tot either  the finance or marketing department --use IN 



 select  first_name, last_name, email,department
  from employees
  WHERE department IN( 'IT', 'Finance');

-- ----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

-- IN NULL OPERATOR, ORADER OPERATORS
-- LIMIT & DISTINCT OPERATOR

-- 1) FIND EMPLOYEE  whre column is null (if applicable)

select  first_name, last_name, email,department
  from employees
  WHERE email is null;

-- list employees sorted by salary in DISTINDING ORDER OR ACCEDING .

select  first_name, last_name, salary
  from employees
  ORDER BY salary  DESC;

  --AESC AND  DESC 


---- RETRIEVE THE TOP  5 HIGHEST -PAID EMPLOYEES


select  first_name, last_name, salary
  from employees
  LIMIT 3;


select  first_name, last_name, salary from employees
  ORDER BY salary  
  LIMIT 3;


----RETRIEVE A LIST OF UNIQUE DEPARTMENTS 

select  DISTINCT DEPARTMENT 
from employees;

select COUNT  (DISTINCT DEPARTMENT )
from employees;

select COUNT  (DISTINCT DEPARTMENT ) AS dep_unique_count
from employees;




SELECT * FROM employees;
