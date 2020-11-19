--Data Analysis
--Once you have a complete database, do the following:
--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT a.emp_no,a.last_name,a.first_name,a.gender,b.salary 
FROM employee_data AS a
LEFT JOIN salaries AS b
ON a.emp_no=b.emp_no;
--List employees who were hired in 1986.
SELECT * FROM employee_data 
WHERE hire_date 
BETWEEN '19860101' AND '19861231';
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT a.dept_no,b.dept_name,a.emp_no,c.last_name, c.first_name,a.from_date,a.to_date
FROM smanagers AS a
LEFT JOIN departments AS b
ON a.dept_no=b.dept_no
LEFT JOIN employee_data AS c
ON a.emp_no=c.emp_no;
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT a.emp_no,c.last_name,c.first_name,b.dept_name 
FROM senority AS a
LEFT JOIN departments as b
ON a.dept_no=b.dept_no
LEFT JOIN employee_data as c
ON a.emp_no=c.emp_no;
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employee_data AS a
WHERE a.first_name='Hercules' AND a.last_name LIKE 'B%';
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT a.emp_no,c.last_name,c.first_name,b.dept_name 
FROM senority AS a
LEFT JOIN departments as b
ON a.dept_no=b.dept_no
LEFT JOIN employee_data as c
ON a.emp_no=c.emp_no
WHERE b.dept_name='Sales';
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no,c.last_name,c.first_name,b.dept_name 
FROM senority AS a
LEFT JOIN departments as b
ON a.dept_no=b.dept_no
LEFT JOIN employee_data as c
ON a.emp_no=c.emp_no
WHERE b.dept_name='Sales' OR b.dept_name='Development';
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,COUNT(*)
FROM employee_data 
AS "Frequency of last names" 
GROUP BY last_name
ORDER BY last_name DESC;


