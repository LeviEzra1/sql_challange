SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, first_name, last_name
FROM dept_manager
INNER JOIN employees
	ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments
	ON dept_manager.dept_no = departments.dept_no
