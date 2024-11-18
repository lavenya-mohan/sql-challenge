-- 1) List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
	e.emp_no,
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.sex,
	s.salary
FROM employees e 
LEFT JOIN salaries s on e.emp_no = s.emp_no;

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.hire_date AS "Hired Date"
FROM employees e WHERE EXTRACT(YEAR FROM e.hire_date) = 1986

-- 3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	d.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	dm.emp_no,
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;	

-- 4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT 
    de.dept_no AS "Department Number", 
    e.emp_no, 
    e.last_name AS "Last Name",
	e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
    e.last_name AS "Last Name",
	e.first_name AS "First Name", 
    e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
  AND e.last_name LIKE 'B%';

-- 6) List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 
    e.emp_no, 
    e.last_name AS "Last Name",
	e.first_name AS "First Name" 
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
    e.emp_no, 
    e.last_name AS "Last Name",
	e.first_name AS "First Name",  
    d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development') 
group by d.dept_name, e.emp_no, e.last_name, e.first_name;

-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT 
    last_name AS "Last Name", 
    COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
