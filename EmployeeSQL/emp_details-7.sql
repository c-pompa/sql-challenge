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