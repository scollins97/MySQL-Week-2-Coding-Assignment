-- 3. How much money was spent on salary for the marketing department between the years 1990 and 1992?
SELECT d.dept_name AS 'Department Name', sum(s.salary) AS 'Total Spent on Salary'
FROM departments d 
INNER JOIN dept_emp de USING (dept_no)
INNER JOIN salaries s USING (emp_no)
WHERE d.dept_no = 'd001' AND 
year(s.from_date) >= '1990' AND
year(s.to_date) <= '1992'
GROUP BY d.dept_name
HAVING sum(s.salary);