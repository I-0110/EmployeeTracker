-- Drop the database if it exists
DROP DATABASE IF EXISTS employees_db;

-- Create a new database
CREATE DATABASE employees_db;

-- Connect to the newly created database
\c employees_db;

-- Creating department table
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- Creating roles table
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES department(department_id)
    ON DELETE SET NULL
);

-- Creating employee table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_first_name VARCHAR(30) NOT NULL,
    employee_last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES roles(role_id)
    ON DELETE SET NULL,
    manager_id INTEGER
)