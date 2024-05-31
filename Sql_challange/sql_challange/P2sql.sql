SELECT first_name, last_name, hire_date 
FROM employees 
WHERE EXTRACT(year from hire_date) = 1986
