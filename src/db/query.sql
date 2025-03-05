SELECT *
FROM employees_db;

SELECT departments, COUNT(id) AS role_id
FROM roles
GROUP BY departments;

SELECT roles, COUNT(id) AS employee_id
FROM employees
GROUP BY roles;

SELECT employees, COUNT(id) AS manager_id
FROM employees 
GROUP BY employees;