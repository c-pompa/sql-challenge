-- 5. List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."
SELECT employees.first_name, 
employees.last_name, 
employees.sex

FROM employees

-- LIKE allows to find specific values in table.
-- '%' for matching any sequence of characters.
WHERE employees.first_name LIKE 'Hercules%' AND employees.last_name LIKE 'B%';
