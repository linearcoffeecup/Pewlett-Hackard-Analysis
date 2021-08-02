
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
--INTO retiring_tables
FROM unique_table
GROUP BY title
ORDER BY COUNT(title) DESC;

