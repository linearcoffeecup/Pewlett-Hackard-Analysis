
SELECT e.emp_no, e.first_name, e.last_name,
		t.title, t.from_date, t.to_date
INTO retirement_title
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_table
FROM retirement_title
ORDER BY emp_no, to_date DESC;

SELECT COUNT(title), title
INTO retiring_tables
FROM unique_table
GROUP BY title
ORDER BY COUNT(title) DESC;

--Mentorship Elgibility Query

SELECT DISTINCT ON(e.emp_no) e.first_name, e.last_name, e.birth_date,
		de.from_date, de.to_date, t.title
INTO mentorship_elgibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01' AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') )
ORDER BY e.emp_no;

--Retirement Count
SELECT COUNT(emp_no) AS Retirement_Ready
FROM unique_table;

--Mentor Eligible Count
SELECT COUNT(last_name) AS Mentor_Eligible
FROM mentorship_elgibility;

SELECT COUNT(emp_no) AS Employees_Total
FROM employees;

