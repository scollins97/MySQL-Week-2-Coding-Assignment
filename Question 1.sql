-- 1. I want to know how many employees with each title were born after 1965-01-01.
SELECT t.title AS 'Title', count(e.emp_no) AS 'Number of Employees'
FROM titles t
INNER JOIN employees e USING (emp_no)
WHERE e.birth_date > '1965-01-01'
GROUP BY t.title
HAVING count(e.emp_no);