-- Drop the database if it exists
DROP DATABASE IF EXISTS employees_db;

-- Create a new database
CREATE DATABASE employees_db;

-- Connect to the newly created database
\c employees_db;

-- Creating departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department VARCHAR(30) NOT NULL
);

-- Creating roles table
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE SET NULL
);

-- Creating employees table
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_first_name VARCHAR(30),
    employee_last_name VARCHAR(30),
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES roles(role_id)
    ON DELETE SET NULL,
    manager_id INTEGER
)