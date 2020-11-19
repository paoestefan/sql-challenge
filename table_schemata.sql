--This creates de departments table
CREATE TABLE departments(
	dept_no VARCHAR(6) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);
SELECT * FROM departments

CREATE TABLE employee_data(
	emp_no VARCHAR(10) PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(5),
	hire_date DATE
);

SELECT * FROM employee_data;

--this table has the employees senorities
CREATE TABLE senority(
	emp_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employee_data(emp_no),
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(dept_no,emp_no)
);
SELECT * FROM senority;
--This table has the managers seniority
CREATE TABLE SManagers(
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employee_data(emp_no),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no,dept_no)	
);
SELECT * FROM SManagers;

--This creates the titles table
CREATE TABLE TITLES(
	emp_no VARCHAR(10),
	FOREIGN KEY(emp_no) REFERENCES employee_data(emp_no),
	title VARCHAR(45),
	from_date DATE,
	to_date DATE
);

SELECT * FROM TITLES;

--This creates the salaries table
CREATE TABLE salaries(
	emp_no VARCHAR(10),
	FOREIGN KEY(emp_no) REFERENCES employee_data(emp_no),
	salary INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no)
);
SELECT * FROM SALARIES;
SELECT * FROM senority;

