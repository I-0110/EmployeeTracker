DROP DATABASE IF EXISTS
employees_db;
CREATE DATABASE employees_db;

\c employees_db;

-- Creating departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department VARCHAR(30) NOT NULL
);

-- Creating role table
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments
    ON DELETE SET NULL
);

-- Creating employee table
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_first_name VARCHAR(30),
    employee_last_name VARCHAR(30),
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES roles
    ON DELETE SET NULL,
    manager_id INTEGER
);