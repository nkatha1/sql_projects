CREATE TABLE employees (
employee_id INT,
first_name VARCHAR(50),
last_name VARCHAR (50),
hourly_pay DECIMAL(5, 3), 
hire_date DATE
);
SELECT * FROM employees;
RENAME TABLE workers TO employees;
ALTER TABLE employees
ADD phone_number VARCHAR(15);
SELECT * FROM employees;
ALTER TABLE employees
RENAME COLUMN phone_number TO email;
SELECT * FROM employees;
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;
SELECT * FROM employees;
ALTER TABLE employees
DROP COLUMN email;
SELECT * FROM employees;