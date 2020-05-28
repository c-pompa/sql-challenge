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
