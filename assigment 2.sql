SELECT DISTINCT salary
FROM Employees;
SELECT age AS Employee_Age,
       salary AS Employee_Salary
FROM Employees;
SELECT *
FROM Employees
WHERE salary > 50000
  AND hire_date < '2016-01-01';
  SELECT *
FROM Employees
WHERE designation IS NULL;
UPDATE Employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
SELECT *
FROM Employees
ORDER BY department_id ASC, salary DESC;
SELECT *
FROM Employees
WHERE YEAR(hire_date) = 2018
ORDER BY hire_date ASC
LIMIT 5;
SELECT * FROM Employees
WHERE designation IS NULL;
UPDATE Employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
UPDATE Employees
SET designation = 'Data Scientist'
WHERE designation IS NULL
AND employee_id > 0;
SELECT SUM(e.salary) AS Total_Salary
FROM Employees e
JOIN Departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';
SELECT * FROM Departments;
SELECT MIN(age) AS Minimum_Age
FROM Employees;
SELECT MAX(age) AS Maximum_Age
FROM Employees;
SELECT AVG(salary) AS Average_Salary
FROM Employees;
SELECT COUNT(*) AS Total_Employees
FROM Employees;
SELECT COUNT(DISTINCT department_id) AS Total_Departments
FROM Employees;
SELECT COUNT(DISTINCT location_id) AS Total_Locations
FROM Employees;
SELECT location_id, MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY location_id;
SELECT designation, AVG(salary) AS Average_Salary
FROM Employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
SELECT department_id, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY department_id
HAVING COUNT(*) < 3;
SELECT department_id, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department_id;
SELECT gender, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY gender;
SELECT designation, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY designation;
SELECT designation, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY designation
HAVING AVG(salary) > 40000;
SELECT location_id, AVG(age) AS Average_Age
FROM Employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id

UNION

SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id

UNION

SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;
SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id

UNION

SELECT e.employee_name, e.designation, d.department_name
FROM Employees e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;
SELECT e1.employee_name AS Employee1,
       e2.employee_name AS Employee2,
       e1.department_id
FROM Employees e1
JOIN Employees e2
ON e1.department_id = e2.department_id
AND e1.employee_id < e2.employee_id;
SELECT employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
SELECT employee_name, department_id
FROM Employees
WHERE department_id IN (
    SELECT department_id
    FROM Departments
);
SELECT e.employee_name
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Departments d
    WHERE e.department_id = d.department_id
);
SELECT employee_name, department_id
FROM Employees
WHERE department_id IN (
    SELECT department_id
    FROM Departments
);
SELECT employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
SELECT employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
SELECT l.location, e.employee_name
FROM Employees e
RIGHT JOIN Location l
ON e.location_id = l.location_id;