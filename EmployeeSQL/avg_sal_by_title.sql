-- average salary by title.

SELECT salaries.salary, 
titles.title

FROM titles

INNER JOIN employees ON employees.emp_title_id=titles.title_id 
INNER JOIN salaries ON salaries.emp_no=employees.emp_no;