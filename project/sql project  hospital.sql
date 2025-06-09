


-- Create the table structure
CREATE TABLE hospital_data (
    hospital_name VARCHAR(100),
    location VARCHAR(100),
    department VARCHAR(100),
    doctors_count INTEGER,
    patients_count INTEGER,
    admission_date DATE,
    discharge_date DATE,
    medical_expenses NUMERIC(10, 2)
);

-- Import data from CSV (adjust path as needed)

SET datestyle = 'ISO, DMY';

COPY hospital_data FROM 'C:\Users\Asus\OneDrive\Desktop\java full Archer Infotech\SOL\Hospital_Data.csv' DELIMITER ',' CSV HEADER;


-- Total Number of Patients

SELECT SUM(patients_count) AS total_patients
FROM hospital_data;

-- 2. Average Number of Doctors per Hospital
SELECT AVG(doctors_count) AS avg_doctors_per_hospital
FROM hospital_data;

-- 3. Top 3 Departments with the Highest Number of Patients
SELECT department, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;

-- 4. Hospital with the Maximum Medical Expenses
SELECT hospital_name, location, medical_expenses
FROM hospital_data
ORDER BY medical_expenses DESC
LIMIT 1;

 --4 Daily Average Medical Expenses
SELECT 
    hospital_name,
    location,
    AVG(medical_expenses / (discharge_date - admission_date + 1)) AS avg_daily_expenses
FROM hospital_data
GROUP BY hospital_name, location
ORDER BY avg_daily_expenses DESC;

 --6 Longest Hospital Stay
SELECT 
    hospital_name,
    location,
    department,
    admission_date,
    discharge_date,
    (discharge_date - admission_date) AS stay_duration
FROM hospital_data
ORDER BY stay_duration DESC
LIMIT 1;


-- 7. Total Patients Treated Per City
SELECT 
    location AS city,
    SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY location
ORDER BY total_patients DESC;

-- 8. Average Length of Stay Per Department

SELECT 
    department,
    AVG(discharge_date - admission_date) AS avg_stay_duration
FROM hospital_data
GROUP BY department
ORDER BY avg_stay_duration DESC;

-- 9. Department with the Lowest Number of Patients

SELECT 
    department,
    SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;
-- 10. Monthly Medical Expenses Report

SELECT 
    EXTRACT(YEAR FROM admission_date) AS year,
    EXTRACT(MONTH FROM admission_date) AS month,
    SUM(medical_expenses) AS total_expenses
FROM hospital_data
GROUP BY year, month
ORDER BY year, month;
-