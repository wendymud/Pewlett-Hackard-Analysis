SELECT emp_no, first_name, last_name
FROM employees;

SELECT title, from_date, to_date
INTO emp_titles
FROM titles;

SELECT * FROM emp_titles;

-- Use Dictinct with Orderby to remove duplicate rows
-- ORDER BY _____, _____ DESC;
DROP TABLE titles
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;

SELECT * FROM departments

SELECT *
FROM employees as e
LEFT JOIN titles as t on e.emp_no = t.emp_no
INTO new_emp_db

SELECT e.emp_no, 
	e.birth_date,
	e.first_name,
	e.last_name,
	e.gender,
	e.hire_date,
	t.title, 
	t.from_date,
	t.to_date
--INTO new_emp_db
FROM employees as e
LEFT JOIN titles as t on e.emp_no = t.emp_no

SELECT e.emp_no, 
	e.birth_date,
	e.first_name,
	e.last_name,
	e.gender,
	e.hire_date,
	t.title, 
	t.from_date,
	t.to_date
INTO new_emp_db
FROM employees as e
LEFT JOIN titles as t on e.emp_no = t.emp_no

SELECT birth_date
FROM new_emp_db
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT * FROM new_emp_db

SELECT birth_date
FROM new_emp_db
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT n.emp_no,
		n.first_name,
		n.last_name,
		n.title,
		n.birth_date,
		n.title
-- INTO retirement_titles
FROM new_emp_db as n
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no DESC

SELECT n.emp_no,
		n.first_name,
		n.last_name,
		n.title,
		n.birth_date,
		n.from_date,
		n.to_date
-- INTO retirement_titles
FROM new_emp_db as n
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT n.emp_no,
		n.first_name,
		n.last_name,
		n.title,
		n.birth_date,
		n.from_date,
		n.to_date
INTO retirement_titles
FROM new_emp_db as n
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT * FROM retirement_titles

DROP TABLE clean_retire_titles

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
					first_name,
					last_name,
					title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM retiring_titles

-- Check how many employees are retiring by title
SELECT COUNT(crt.emp_no), title
INTO retiring_titles
FROM unique_titles as crt
GROUP BY title
ORDER BY COUNT DESC
