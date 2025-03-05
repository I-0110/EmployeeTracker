DROP DATABASE IF EXISTS
employee_db;
CREATE DATABASE employees_db;

\c employee_db;

-- Creating departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- Creating role table
CREATE TABLE role (
    role_id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE SET NULL
);

-- Creating employee table
CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY,
    employee_first_name VARCHAR(30),
    employee_last_name VARCHAR(30),
    FOREIGN KEY (role_id_id)
    REFERENCES role(role_id)
    ON DELETE SET NULL,
    manager_id INTEGER
);