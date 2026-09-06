-- Create database and table
CREATE DATABASE company;
USE company;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Alice Johnson', 'Sales', 55000.00),
(2, 'Bob Smith', 'Marketing', 48000.00),
(3, 'Charlie Davis', 'IT', 72000.00),
(4, 'Diana Lee', 'Finance', 65000.00),
(5, 'Ethan Brown', 'HR', 45000.00),
(6, 'Fiona White', 'Sales', 80000.00),
(7, 'George King', 'Engineering', 90000.00),
(8, 'Hannah Scott', 'Marketing', 52000.00),
(9, 'Ian Clark', 'IT', 60000.00),
(10, 'Julia Adams', 'Finance', 75000.00);

-- Comparison operator: salary > 50000
SELECT * 
FROM employees
WHERE salary > 50000;

-- Logical operator: Sales department OR salary > 70000
SELECT * 
FROM employees
WHERE department = 'Sales' OR salary > 70000;

-- Arithmetic operator: 10% salary increase
UPDATE employees
SET salary = salary * 1.10;

-- IN operator: Marketing, IT, Finance
SELECT * 
FROM employees
WHERE department IN ('Marketing', 'IT', 'Finance');
