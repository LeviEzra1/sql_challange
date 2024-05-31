SELECT last_name, COUNT(*) AS how_many
FROM employees
GROUP BY last_name
ORDER BY how_many DESC