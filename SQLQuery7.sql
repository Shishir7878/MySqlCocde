CREATE DATABASE Employee;

 --this is the command for github

CREATE TABLE department (

    dep_id INT,

    dep_name VARCHAR(20),

    dep_location VARCHAR(15),

CONSTRAINT dep_id PRIMARY KEY  (dep_id),

);

 

INSERT INTO department (dep_id, dep_name, dep_location) VALUES

(1001, 'Sales', 'Location1'),

(2001, 'Marketing', 'Location2'),

(3001, 'Finance', 'Location3');

 

 

CREATE TABLE salary_grade (

    grade INT,

    min_salary INT NOT NULL,

    max_salary INT NOT NULL,

CONSTRAINT salary_grade_pk PRIMARY KEY  (grade)

);

 
 
ALTER TABLE salary_grade ADD salary INT NOT NULL;

CREATE TABLE employees (

    emp_id INT,

    emp_name VARCHAR(15) NOT NULL,

    job_name VARCHAR(10) NOT NULL,

    manager_id INT NULL,

    hire_date DATE NOT NULL,

    salary DECIMAL(10, 2) NOT NULL,

    commission DECIMAL(7, 2) NULL,

    dep_id INT NOT NULL,

CONSTRAINT employees_pk PRIMARY KEY  (emp_id),

CONSTRAINT department_employees FOREIGN KEY (dep_id) REFERENCES department(dep_id)

);

 

 

 

--SET IDENTITY_INSERT department ON;

--SET IDENTITY_INSERT department OFF;

 

 

 

--SET IDENTITY_INSERT employees ON;

--SET IDENTITY_INSERT employees OFF;

 

-- ALTER TABLE employees

-- -ALTER COLUMN manager_id INT NULL;

 

-- ALTER TABLE employees

-- ALTER COLUMN comission DECIMAL(7, 2) NULL;

 

INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES

(68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 6000.00, NULL, 1001),

(66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00, NULL, 3001),

(67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, NULL, 1001),

(65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, NULL, 2001),

(67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, NULL, 2001),

(69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, NULL, 2001),

(63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, NULL, 2001),

(64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001),

(65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001),

(66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001),

(68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600.00, 0.00, 3001),

(68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, NULL, 2001),

(69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, NULL, 3001),

(69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, NULL, 1001);

 

 
SELECT * from employees where emp_name LIKE '%s'; 
SELECT * from department;

SELECT emp_id, COUNT(*) as 'No of Employees'
FROM employees 
GROUP BY emp_id;

SELECT * from salary_grade;
INSERT INTO salary_grade (grade,min_salary,max_salary,salary) VALUES
('1','500','500','500');

SELECT * FROM employees INNER JOIN department ON employees.dep_id = department.dep_id;

ALTER TABLE employees ADD start_date DATE;

