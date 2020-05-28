-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT departments.dept_no, 
departments.dept_name,
dept_manager.emp_no, 
employees.last_name, 
employees.first_name

FROM departments
INNER JOIN dept_manager ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON employees.emp_no=dept_manager.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

-- Each employee queried should provide the following above. 
-- Employee number, last name and first name is found in employees table.
-- Department names are found in departments table. 
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
-- dept_emp.emp_no links both employees table and departents table to join 
-- the the combined tables.
departments.dept_name

FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no;


-- 5. List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."
SELECT employees.first_name, 
employees.last_name, 
employees.sex

FROM employees
-- LIKE allows to find specific values in table.
-- '%' for matching any sequence of characters.
WHERE employees.first_name LIKE 'Hercules%' AND employees.last_name LIKE 'B%';



-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name

FROM departments

INNER JOIN dept_emp ON dept_emp.dept_no=departments.dept_no and departments.dept_name LIKE 'Sales%'
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no;


-- 7. List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name

FROM departments

INNER JOIN dept_emp ON dept_emp.dept_no=departments.dept_no 
	AND departments.dept_name LIKE 'Sales%' OR departments.dept_name LIKE 'Development%'
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no;


-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
SELECT COUNT(DISTINCT employees.last_name) FROM employees
-- Faster version to count frequency of employee last names. 
SELECT count(*) 
FROM (SELECT DISTINCT employees.last_name FROM employees) AS employees_distinct
