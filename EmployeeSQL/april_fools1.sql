SELECT employees.emp_no,
employees.first_name,
employees.last_name,
salaries.salary

FROM salaries
-- WHERE employees.emp_no = '499942'
INNER JOIN employees ON employees.emp_no=salaries.emp_no AND employees.emp_no = '499942';