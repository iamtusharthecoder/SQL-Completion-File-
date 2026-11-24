
# creating data base 
CREATE DATABASE CompanyDB;

#using data base 
USE CompanyDB;

# creating table

CREATE TABLE employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10,2),
    City VARCHAR(100),
    JoinDate DATE,
    ManagerID INT,
    ID INT
);

#inserting data

INSERT INTO employees
(EmpID, Name, Department, Salary, City, JoinDate, ManagerID, ID)
VALUES
(1, 'Amit', 'IT', 85000, 'Pune', '2020-05-10', Null, 101),
(2, 'Rahul', 'HR', 60000, 'Mumbai', '2021-03-15', 1, 102),
(3, 'Priya', 'Finance', 95000, 'Pune', '2019-07-20', 1, 103),
(4, 'Sneha', 'IT', 75000, 'Mumbai', '2022-01-12', 1, 101),
(5, 'Karan', 'Sales', 55000, 'Delhi', '2023-04-18', 2, 104),
(6, 'Arjun', 'IT', 110000, 'Pune', '2018-11-25', 1, 101),
(7, 'Neha', 'HR', 72000, 'Pune', '2020-08-14', 2, 102),
(8, 'Varun', 'Finance', 68000, 'Mumbai', '2022-06-30', 3, 103),
(9, 'Anjali', 'Sales', 82000, 'Delhi', '2021-09-05', 2, 104),
(10, 'Rohit', 'IT', 90000, 'Mumbai', '2019-02-11', 1, 101),
(11, 'Pooja', 'Finance', 78000, 'Pune', '2023-01-10', 3, 103),
(12, 'Sanjay', 'Sales', 65000, 'Mumbai', '2020-12-20', 2, 104),
(13, 'Aarav', 'IT', 72000, 'Pune', '2024-02-15', 1, 101),
(14, 'Kavita', 'HR', 88000, 'Delhi', '2019-10-01', 2, 102),
(15, 'Manoj', 'Finance', 105000, 'Mumbai', '2017-05-22', 3, 103),
(16, 'Tanya', 'Sales', 60000, 'Pune', '2022-08-19', 2, 104),
(17, 'Akash', 'IT', 95000, 'Delhi', '2021-06-25', 1, 101),
(18, 'Riya', 'HR', 55000, 'Mumbai', '2023-11-12', 2, 102),
(19, 'Ajay', 'Finance', 82000, 'Pune', '2020-03-08', 3, 103),
(20, 'Nisha', 'Sales', 75000, 'Mumbai', '2024-01-05', 2, 104);

#creating depatment table

CREATE TABLE Department (
    ID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

#inserting data into department table 

INSERT INTO Department (ID, DepartmentName)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales');

SELECT * FROM employees;

SELECT * FROM Department;

-- Q2. Employees working in IT department
SELECT * 
FROM employees
WHERE Department = 'IT';

-- Q3. Employees earning more than 70000
SELECT * 
FROM employees
WHERE Salary > 70000;


-- Q4. Employees from Pune earning more than 80000
SELECT * 
FROM employees
WHERE City = 'Pune' 
AND Salary > 80000;


-- Q5. Employees located in Pune and Mumbai
SELECT * 
FROM employees
WHERE City IN ('Pune', 'Mumbai');


-- Q6. Employees joined after 1st Jan 2021
SELECT * 
FROM employees
WHERE JoinDate > '2021-01-01';


-- Q7. Total number of employees
SELECT COUNT(*) AS TotalEmployees
FROM employees;


-- Q8. Average salary of employees
SELECT AVG(Salary) AS AverageSalary
FROM employees;


-- Q9. Highest salary in company
SELECT MAX(Salary) AS HighestSalary
FROM employees;


-- Q10. Total salary expenditure
SELECT SUM(Salary) AS TotalSalary
FROM employees;


-- Q11. Number of employees in each department
SELECT Department, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY Department;


-- Q12. Average salary in each department
SELECT Department, AVG(Salary) AS AverageSalary
FROM employees
GROUP BY Department;


-- Q13. Departments with average salary greater than 70000
SELECT Department, AVG(Salary) AS AverageSalary
FROM employees
GROUP BY Department
HAVING AVG(Salary) > 70000;


-- Q14. Employee names in uppercase
SELECT UPPER(Name) AS EmployeeName
FROM employees;


-- Q15. “Employee Name works in City”
SELECT CONCAT(Name, ' works in ', City) AS Report
FROM employees;


-- Q16. Years worked in company
SELECT Name,
TIMESTAMPDIFF(YEAR, JoinDate, CURDATE()) AS YearsWorked
FROM employees;


-- Q17. Highest-paid employee
SELECT *
FROM employees
WHERE Salary = (SELECT MAX(Salary) FROM employees);


-- Q18. Second highest salary
SELECT MAX(Salary) AS SecondHighestSalary
FROM employees
WHERE Salary < (SELECT MAX(Salary) FROM employees);


-- Q19. Number of employees under each manager
SELECT ManagerID, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY ManagerID;


-- Q20. Unique cities
SELECT DISTINCT City
FROM employees;


-- Q21. Employees from Pune with salary > 80000
SELECT *
FROM employees
WHERE City = 'Pune'
AND Salary > 80000;


-- Q22. Employees from Pune or Mumbai
SELECT *
FROM employees
WHERE City = 'Pune'
OR City = 'Mumbai';


-- Q23. Names starting with 'A'
SELECT *
FROM employees
WHERE Name LIKE 'A%';


-- Q24. Names ending with 'a'
SELECT *
FROM employees
WHERE Name LIKE '%a';


-- Q25. Names containing 'ar'
SELECT *
FROM employees
WHERE Name LIKE '%ar%';


-- Q26. Names with 'a' as second character
SELECT *
FROM employees
WHERE Name LIKE '_a%';


-- Q27. Names with exactly five characters
SELECT *
FROM employees
WHERE Name LIKE '_____';


-- Q28. Names with 'a' as second character and total 5 characters
SELECT *
FROM employees
WHERE Name LIKE '_a___';


-- Q29. Employees working in Pune or Mumbai using suitable operator
SELECT *
FROM employees
WHERE City IN ('Pune', 'Mumbai');


-- Q30. Employees salary between 60000 and 90000
SELECT *
FROM employees
WHERE Salary BETWEEN 60000 AND 90000;


-- Q31. Employees whose Department is not NULL
SELECT *
FROM employees
WHERE Department IS NOT NULL;


-- Q32. Employees whose ManagerID is NULL
SELECT *
FROM employees
WHERE ManagerID IS NULL;


-- Q33. Create employees_new table with constraints
CREATE TABLE employees_new (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary >= 30000)
);


-- Q34. Add UNIQUE constraint on Name column
ALTER TABLE employees
ADD CONSTRAINT uq_name UNIQUE (Name);


-- Q35. Add NOT NULL constraint to Department column
ALTER TABLE employees
MODIFY Department VARCHAR(100) NOT NULL;


-- Q36. Add CHECK constraint for Salary > 30000
ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (Salary > 30000);


-- Q37. Add DEFAULT value 'Pune' to City column
ALTER TABLE employees
ALTER City SET DEFAULT 'Pune';


-- Q38. Create Department table with FOREIGN KEY
CREATE TABLE Department (
    ID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (ID)
REFERENCES Department(ID);


-- Q39. Remove NOT NULL constraint from Department column
ALTER TABLE employees
MODIFY Department VARCHAR(100) NULL;


-- Q40. Drop UNIQUE constraint from Name column
ALTER TABLE employees
DROP CONSTRAINT uq_name;