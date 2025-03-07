SELECT *
FROM employees_db;

SELECT department, COUNT(id) AS role_id
FROM role
GROUP BY department;

SELECT role, COUNT(id) AS employee_id
FROM employee
GROUP BY role;

SELECT employee, COUNT(id) AS manager_id
FROM employee 
GROUP BY employee;