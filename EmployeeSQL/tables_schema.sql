-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(4) NOT NULL
);

-- Create a new table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(4)
);

-- Create a new table
CREATE TABLE dept_manager (
  dept_no VARCHAR(4),
  emp_no INT NOT NULL
);

-- Create a new table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date date,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30),
  sex VARCHAR(1),
  hire_date date
);

-- Create a new table
CREATE TABLE salaries (
  emp_no INT,
  salary INT,
);

-- Create a new table
CREATE TABLE titles (
  title_id VARCHAR(5),
  title VARCHAR(30),
);