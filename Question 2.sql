-- 2. I want to know the average salary per title.
SELECT t.title AS 'Title', avg(s.salary) AS 'Average Salary'
FROM titles t 
INNER JOIN salaries s USING (emp_no)
GROUP BY t.title
HAVING avg(s.salary);