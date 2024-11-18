-- Creating Table Schema

-- Create table departments
CREATE TABLE departments (
	dept_no VARCHAR(10), 
	dept_name VARCHAR(30),
	 PRIMARY KEY (dept_no)
);
SELECT * FROM departments LIMIT 5;

DROP TABLE IF EXISTS titles;

-- Create the titles table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);
SELECT * FROM titles;

-- Create table employees

DROP TABLE IF EXISTS employees

CREATE TABLE employees (
	emp_no	INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,	
	birth_date	DATE,
	first_name	VARCHAR,
	last_name	VARCHAR,
	sex	VARCHAR(4),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees LIMIT 5;

--Create table dept_emp
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM dept_emp LIMIT 5;

--Create table dept_manager

DROP TABLE IF EXISTS dept_manager

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   	PRIMARY KEY (dept_no,emp_no)
);
SELECT * FROM dept_manager LIMIT 5;

-- Create table salaries 
DROP TABLE IF EXISTS salaries

CREATE TABLE salaries  (
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);
SELECT * FROM salaries LIMIT 5;
