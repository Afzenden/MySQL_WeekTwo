1. 	select COUNT(employees.emp_no), title from titles 
	inner join employees ON titles.emp_no = employees.emp_no 
	WHERE birth_date > '1965-01-01' 
	GROUP BY title;

2. 	select CONCAT('$',FORMAT(AVG(salaries.salary),'C')), title from titles 
	inner join salaries ON titles.emp_no = salaries.emp_no 
	GROUP BY title;

3. 	select CONCAT('$',FORMAT(SUM(((salary/365) * DATEDIFF(s.to_date, s.from_date))),'C')) AS payout from salaries AS s
	inner join dept_emp AS de ON s.emp_no = de.emp_no 
	where (s.from_date >= '1990-01-01' AND s.to_date < '1992-12-31') AND (de.from_date >= '1990-01-01' AND de.to_date < '1992-12-31') AND de.dept_no = 'd001';