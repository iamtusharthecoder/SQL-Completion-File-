
USE CompanyDB;

-- 1. SELECT CLAUSE
SELECT Name, Salary
FROM employees;

-- 2. SELECT ALL COLUMNS
SELECT *
FROM employees;

-- 3. FROM CLAUSE
SELECT *
FROM employees;

-- 4. WHERE CLAUSE
SELECT *
FROM employees
WHERE Salary > 70000;

-- 5. DISTINCT CLAUSE
SELECT DISTINCT City
FROM employees;

-- 6. ORDER BY ASC
SELECT *
FROM employees
ORDER BY Salary ASC;

-- 7. ORDER BY DESC
SELECT *
FROM employees
ORDER BY Salary DESC;

-- 8. GROUP BY CLAUSE
SELECT Department, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY Department;

-- 9. HAVING CLAUSE
SELECT Department, AVG(Salary) AS AverageSalary
FROM employees
GROUP BY Department
HAVING AVG(Salary) > 70000;

-- 10. LIMIT CLAUSE
SELECT *
FROM employees
LIMIT 5;

-- 11. OFFSET CLAUSE
SELECT *
FROM employees
LIMIT 5 OFFSET 5;

-- 12. AND OPERATOR
SELECT *
FROM employees
WHERE City = 'Pune'
AND Salary > 80000;

-- 13. OR OPERATOR
SELECT *
FROM employees
WHERE City = 'Pune'
OR City = 'Mumbai';

-- 14. IN OPERATOR
SELECT *
FROM employees
WHERE City IN ('Pune', 'Mumbai');

-- 15. NOT IN OPERATOR
SELECT *
FROM employees
WHERE City NOT IN ('Pune', 'Mumbai');

-- 16. BETWEEN OPERATOR
SELECT *
FROM employees
WHERE Salary BETWEEN 60000 AND 90000;

-- 17. NOT BETWEEN OPERATOR
SELECT *
FROM employees
WHERE Salary NOT BETWEEN 60000 AND 90000;

-- 18. LIKE OPERATOR (Starts with A)
SELECT *
FROM employees
WHERE Name LIKE 'A%';

-- 19. LIKE OPERATOR (Ends with a)
SELECT *
FROM employees
WHERE Name LIKE '%a';

-- 20. LIKE OPERATOR (Contains ar)
SELECT *
FROM employees
WHERE Name LIKE '%ar%';

-- 21. IS NULL
SELECT *
FROM employees
WHERE ManagerID IS NULL;

-- 22. IS NOT NULL
SELECT *
FROM employees
WHERE ManagerID IS NOT NULL;

-- 23. INNER JOIN
SELECT employees.Name, Department.DepartmentName
FROM employees
INNER JOIN Department
ON employees.ID = Department.ID;

-- 24. LEFT JOIN
SELECT employees.Name, Department.DepartmentName
FROM employees
LEFT JOIN Department
ON employees.ID = Department.ID;

-- 25. RIGHT JOIN
SELECT employees.Name, Department.DepartmentName
FROM employees
RIGHT JOIN Department
ON employees.ID = Department.ID;

-- 26. COUNT FUNCTION
SELECT COUNT(*) AS TotalEmployees
FROM employees;

-- 27. SUM FUNCTION
SELECT SUM(Salary) AS TotalSalary
FROM employees;

-- 28. AVG FUNCTION
SELECT AVG(Salary) AS AverageSalary
FROM employees;

-- 29. MAX FUNCTION
SELECT MAX(Salary) AS HighestSalary
FROM employees;

-- 30. MIN FUNCTION
SELECT MIN(Salary) AS LowestSalary
FROM employees;

-- 31. ALIAS (AS)
SELECT Name AS EmployeeName,
Salary AS EmployeeSalary
FROM employees;

-- 32. SUBQUERY
SELECT *
FROM employees
WHERE Salary = (
    SELECT MAX(Salary)
    FROM employees
);

-- 33. SECOND HIGHEST SALARY
SELECT MAX(Salary) AS SecondHighestSalary
FROM employees
WHERE Salary < (
    SELECT MAX(Salary)
    FROM employees
);

-- 34. CASE STATEMENT
SELECT Name, Salary,
CASE
    WHEN Salary >= 90000 THEN 'High Salary'
    WHEN Salary >= 70000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS SalaryCategory
FROM employees;

-- 35. CONCAT FUNCTION
SELECT CONCAT(Name, ' works in ', City) AS EmployeeDetails
FROM employees;

-- 36. UPPER FUNCTION
SELECT UPPER(Name) AS UppercaseName
FROM employees;

-- 37. LOWER FUNCTION
SELECT LOWER(Name) AS LowercaseName
FROM employees;

-- 38. ADDITIONAL CONDITION USING NOT
SELECT *
FROM employees
WHERE NOT City = 'Pune';

-- 39. MULTIPLE COLUMN GROUP BY
SELECT Department, City, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY Department, City;

-- 40. MULTIPLE COLUMN ORDER BY
SELECT *
FROM employees
ORDER BY Department ASC, Salary DESC;
