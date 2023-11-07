
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name, 
Employees.sex,
Salaries.salary
From Employees
LEFT JOIN Salaries
ON Employees.emp_no = Salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT Employees.first_name,
Employees.last_name,
Employees.hire_da
FROM Employees
WHERE DATE_PART('year',hire_date) = 1986;



-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT * FROM departments

SELECT 
Dept_Manager.dept_no,
Dept_Manager.emp_no,
Departments.dept_name,
Employees.last_name,
Employees.first_name
FROM Dept_Manager
LEFT JOIN Departments
ON Dept_Manager.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Dept_Manager.emp_no = Employees.emp_no


-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT Dept_Emp.emp_no, 
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_Emp
LEFT JOIN Departments
ON Dept_Emp.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Dept_Emp.emp_no = Employees.emp_no

-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT Employees.first_name,
Employees.last_name,
Employees.sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT
Dept_Emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_Emp
LEFT JOIN Departments
ON Dept_Emp.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Dept_Emp.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT
Dept_Emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_Emp
LEFT JOIN Departments
ON Dept_Emp.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Dept_Emp.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development'



-- 8. In descending order, list the frequency count of 
-- employee last names, i.e., how many employees share each last name.
SELECT Employees.last_name, count(Employees.last_name)
FROM Employees
GROUP BY last_name
ORDER BY count(last_name)desc