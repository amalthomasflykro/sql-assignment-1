DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
INSERT INTO Location (location)
VALUES ('Kochi');
SELECT * FROM Location;
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'HR');
SELECT * FROM Departments;
INSERT INTO Employees
(employee_id, employee_name, gender, age, date_of_joining, designation, department_id, location_id, salary)
VALUES
(1, 'Amal', 'M', 25, '2026-01-10', 'Manager', 1, 1, 50000);
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(1, 'Amal', 'M', 25, '2026-01-10', 'Manager', 1, 1, 50000);
SELECT * FROM
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(2, 'John', 'M', 28, '2025-06-15', 'Developer', 1, 1, 45000);
SELECT * FROM Employees
WHERE salary > 45000;
ALTER TABLE Employees
ADD CONSTRAINT chk_age CHECK (age >= 18);
ALTER TABLE Employees
MODIFY hire_date DATE DEFAULT (CURRENT_DATE);
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id);
ALTER TABLE Employees
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id);
DESCRIBE Employees;
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
ADD email VARCHAR(100);
DESCRIBE Employees;
UPDATE Employees
SET email = 'amal@gmail.com'
WHERE employee_id = 1;

UPDATE Employees
SET email = 'john@gmail.com'
WHERE employee_id = 2;
SELECT * FROM Employees;
ALTER TABLE Employees
ADD CONSTRAINT uq_email UNIQUE (email);
DESCRIBE Employees;
SELECT * FROM Employees;