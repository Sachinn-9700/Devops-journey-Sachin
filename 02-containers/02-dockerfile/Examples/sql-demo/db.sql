-- Create database
CREATE DATABASE IF NOT EXISTS company_db;

-- Use database
USE company_db;

-- Create table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO employees (name, email, department, salary) VALUES
('Sachin Kumar', 'sachin@company.com', 'DevOps', 85000.00),
('Amit Sharma', 'amit@company.com', 'Backend', 75000.00),
('Neha Verma', 'neha@company.com', 'Frontend', 70000.00);

-- Read data
SELECT * FROM employees;

-- Update data
UPDATE employees
SET salary = 90000.00
WHERE name = 'Sachin Kumar';

-- Delete data
DELETE FROM employees
WHERE name = 'Amit Sharma';
