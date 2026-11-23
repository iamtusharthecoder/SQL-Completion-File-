
USE CompanyDB;

-- 1. INNER JOIN
-- Returns only matching records from both tables

SELECT
    E.EmpID,
    E.Name,
    D.DepartmentName
FROM employees E
INNER JOIN Department D
ON E.ID = D.ID;


-- 2. LEFT JOIN
-- Returns all records from left table
-- and matching records from right table

SELECT
    E.EmpID,
    E.Name,
    D.DepartmentName
FROM employees E
LEFT JOIN Department D
ON E.ID = D.ID;


-- 3. RIGHT JOIN
-- Returns all records from right table
-- and matching records from left table

SELECT
    E.EmpID,
    E.Name,
    D.DepartmentName
FROM employees E
RIGHT JOIN Department D
ON E.ID = D.ID;


-- 4. FULL OUTER JOIN
-- Returns all records from both tables
-- MySQL uses LEFT JOIN + UNION for this

SELECT
    E.EmpID,
    E.Name,
    D.DepartmentName
FROM employees E
LEFT JOIN Department D
ON E.ID = D.ID

UNION

SELECT
    E.EmpID,
    E.Name,
    D.DepartmentName
FROM employees E
RIGHT JOIN Department D
ON E.ID = D.ID;


-- 5. CROSS JOIN
-- Returns every possible combination

SELECT
    E.Name,
    D.DepartmentName
FROM employees E
CROSS JOIN Department D;


-- 6. SELF JOIN
-- Joins employees table with itself
-- Displays employee and manager names

SELECT
    E.Name AS EmployeeName,
    M.Name AS ManagerName
FROM employees E
LEFT JOIN employees M
ON E.ManagerID = M.EmpID;


-- 7. LEFT ANTI JOIN
-- Finds employees without a matching department

SELECT
    E.EmpID,
    E.Name,
    E.ID
FROM employees E
LEFT JOIN Department D
ON E.ID = D.ID
WHERE D.ID IS NULL;


-- 8. RIGHT ANTI JOIN
-- Finds departments without matching employees

SELECT
    D.ID,
    D.DepartmentName
FROM employees E
RIGHT JOIN Department D
ON E.ID = D.ID
WHERE E.EmpID IS NULL;


-- 9. INNER JOIN WITH WHERE
-- Finds employees working in IT department

SELECT
    E.Name,
    D.DepartmentName
FROM employees E
INNER JOIN Department D
ON E.ID = D.ID
WHERE D.DepartmentName = 'IT';


-- 10. LEFT JOIN WITH GROUP BY
-- Counts employees in each department

SELECT
    D.DepartmentName,
    COUNT(E.EmpID) AS TotalEmployees
FROM Department D
LEFT JOIN employees E
ON E.ID = D.ID
GROUP BY D.ID, D.DepartmentName;


-- 11. INNER JOIN WITH ORDER BY
-- Displays employees in descending salary order

SELECT
    E.Name,
    D.DepartmentName,
    E.Salary
FROM employees E
INNER JOIN Department D
ON E.ID = D.ID
ORDER BY E.Salary DESC;


-- 12. INNER JOIN WITH AGGREGATE FUNCTION
-- Finds average salary in each department

SELECT
    D.DepartmentName,
    AVG(E.Salary) AS AverageSalary
FROM employees E
INNER JOIN Department D
ON E.ID = D.ID
GROUP BY D.DepartmentName;


-- 13. INNER JOIN WITH HAVING
-- Departments with average salary above 70000

SELECT
    D.DepartmentName,
    AVG(E.Salary) AS AverageSalary
FROM employees E
INNER JOIN Department D
ON E.ID = D.ID
GROUP BY D.DepartmentName
HAVING AVG(E.Salary) > 70000;


-- 14. SELF JOIN WITH SAME DEPARTMENT
-- Finds employees working in the same department

SELECT
    E1.Name AS Employee1,
    E2.Name AS Employee2,
    E1.Department AS DepartmentName
FROM employees E1
INNER JOIN employees E2
ON E1.Department = E2.Department
AND E1.EmpID < E2.EmpID;


-- 15. CROSS JOIN WITH WHERE
-- Displays combinations for selected departments

SELECT
    E.Name,
    D.DepartmentName
FROM employees E
CROSS JOIN Department D
WHERE D.DepartmentName IN ('IT', 'HR');
