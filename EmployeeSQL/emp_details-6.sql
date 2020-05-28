-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name

FROM departments

INNER JOIN dept_emp ON dept_emp.dept_no=departments.dept_no and departments.dept_name LIKE 'Sales%'
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no;