-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.

SELECT COUNT(DISTINCT employees.last_name) FROM employees

-- Faster version to count frequency of employee last names. 
SELECT count(*) 
FROM (SELECT DISTINCT employees.last_name FROM employees) AS employees_distinct
