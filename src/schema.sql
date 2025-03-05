DROP DATABASE IF EXISTS
employees_db;
CREATE DATABASE employees_db;

\c employees_db;

-- Creating departments table
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Creating roles table
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department INTEGER,
    FOREIGN KEY (department)
    REFERENCES department(id)
    ON DELETE SET NULL
);

-- Creating employees table
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_full_name VARCHAR(255),
);