SELECT t.title, COUNT(e.emp_no)
FROM employees e 
INNER JOIN titles t 
on e.emp_no  = t.emp_no 
WHERE e.birth_date  > '1965-01-01'
GROUP BY t.title;

SELECT t.title, AVG(s.salary)
FROM employees e 
INNER JOIN titles t 
ON e.emp_no  = t.emp_no ;
INNER JOIN salaries s 
ON e.emp_no = s.emp_no ;
GROUP BY t.title;

SELECT d.dept_name, SUM(s.salary)
FROM employees e
INNER JOIN salaries s 
ON e.emp_no  = s.emp_no 
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no 
INNER JOIN departments d 
ON de.dept_no  = d.dept_no 
WHERE d.dept_name = 'Marketing'
AND s.from_date > '1990-01-01' AND s.to_date < '1992-12-31'
GROUP BY d.dept_name ;

SELECT d.dept_name, SUM(s.salary)
FROM employees e
INNER JOIN salaries s 
ON e.emp_no  = s.emp_no 
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no 
INNER JOIN departments d
ON de.dept_no  = d.dept_no 
WHERE d.dept_name = 'Marketing'
AND s.from_date > '1990-01-01' AND s.to_date < '1992-12-31'
GROUP BY d.dept_name;
