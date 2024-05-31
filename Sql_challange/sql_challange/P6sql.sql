SELECT employees.emp_no, last_name, first_name, dept_name
from employees

inner join dept_emp
	on employees.emp_no = dept_emp.emp_no

inner join departments
on dept_emp.dept_no = departments.dept_no
