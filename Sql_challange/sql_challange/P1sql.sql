SELECT employees.emp_no, first_name, last_name, sex, salaries
FROM employees
INNER JOIN salaries 
	ON employees.emp_no = salaries.emp_no

