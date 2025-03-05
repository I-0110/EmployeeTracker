-- Inserting data into departments table
INSERT INTO departments (department_id, department) VALUES
(8, 'Front of House (FOH)'),
(2, 'Back of House (BOH)'),
(3, 'Human Resources (HR)'),
(4, 'Finance & Accounting'),
(5, 'Marketing'),
(6, 'Customer Service'),
(7, 'Inventory');

-- Inserting data into roles table
INSERT INTO roles (role_id, title, salary, department_id) VALUES
(10, 'Coffee Shop Manager', 45000, 1),
(11, 'Head Barista', 30000, 1),
(12, 'Barista', 25000, 1),
(20, 'Kitchen Manager', 40000, 2),
(21, 'Line Cook', 30000, 2),
(30, 'HR Manager', 40000, 3),
(40, 'Accountant', 55000, 4),
(50, 'Marketing Manager', 50000, 5),
(60, 'Customer Service Specialist', 35000, 6),
(70, 'Inventory Management', 55000, 7);

-- Inserting data into employees table
INSERT INTO employees (employee_id, employee_first_name, employee_last_name, role_id, manager_id) VALUES
(100, 'Emily', 'Brown', 10, 1),
(110, 'Ben', 'Johnson', 11, 7),
(111, 'Michael', 'Glenn', 12, NULL),  
(112, 'Tricia', 'Mars', 12, NULL),    
(200, 'Lisa', 'Green', 20, 2),
(201, 'Melinda', 'Glenn', 21, NULL),  
(500, 'Mark', 'White', 50, 3),
(300, 'Kelly', 'Black', 30, 4),
(400, 'Ben', 'Adams', 40, NULL),      
(600, 'Cristina', 'Allende', 60, 5),
(601, 'Marco', 'Polo', 60, NULL),     
(700, 'Claude', 'Marchaud', 70, 6);


 




