/*
*
* This file contains various SQL queries that can be ran against the database.
* This file is not meant to be ran as a SQL script but rather to server as a
* guide/reference for learning the different types of queries and statements
* that can be used with SQL.
*
*/

/*
*
* Basic SQL queries
*
*/

-- Select all records from the `employees` table
SELECT * FROM employees;

-- Select a specific employee based on `id`
SELECT * FROM employees WHERE id = 1;

-- Select records for all users with a certain first name
-- Can be used with other attributes
-- Example: SELECT * FROM employees WHERE [attribute] = [value];
SELECT * FROM employees WHERE first_name = 'Jason'

-- Select only the first and last name of all employees
-- Can be used to get other attributes
-- Example: SELECT [attribute, attribute] FROM employees;
SELECT first_name, last_name FROM employees;

-- Select first and last name based on specific id
SELECT first_name, last_name FROM employees WHERE id = 1;


/*
*
* The email field is allowed to be null.
* Lets see how to get records based on if the email is null or not.
*
*/

-- Select all records of employees that have a email
SELECT * FROM employees WHERE email IS NOT NULL;

-- Select all records of employees that don't have a email
SELECT * FROM employees WHERE email IS NULL;


/*
*
* Lets take a look at the salaries
*
*/

-- Select all records from salaries
SELECT * FROM salaries;

-- Select the highest hourly pay
SELECT MAX(hourly_pay) FROM salaries;

-- Select the lowest hourly pay
SELECT MIN(hourly_pay) FROM salaries;

-- Get the average hourly pay
SELECT AVG(hourly_pay) FROM salaries;

/*
*
* More complex queries
*
*/

-- Get all employees first and last name along with the department name they work in
SELECT e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employees AS de ON e.id = de.employee_id
INNER JOIN departments AS d ON d.id = de.department_id;


-- Get all employees first and last name from a certain department
-- Can be used to select different departments, just change the value of d.dept_name
-- Example: WHERE d.dept_name = [department name]
SELECT e.first_name, e.last_name
FROM employees AS e
INNER JOIN dept_employees AS de ON e.id = de.employee_id
INNER JOIN departments AS d ON d.id = de.department_id
WHERE d.dept_name = 'Marketing';

-- Get all employees first and last name with their hourly pay
SELECT e.first_name, e.last_name, s.hourly_pay
FROM employees AS e
INNER JOIN salaries AS s
ON e.id = s.employee_id;

-- Get all employees first name, last name, and their hourly pay
-- that make more than the average hourly pay
-- Can be used to get employees that make less than the average hourly pay
-- just change `>` sign to `<`
SELECT e.id, e.first_name, e.last_name, s.hourly_pay
FROM employees AS e
INNER JOIN salaries AS s
ON e.id = s.employee_id
WHERE s.hourly_pay >
(SELECT AVG(hourly_pay) FROM salaries);

-- Calculate the total salary expense per department
SELECT d.dept_name, SUM(s.hourly_pay) AS department_salary
FROM departments AS d
INNER JOIN dept_employees AS de
ON d.id = de.department_id
INNER JOIN salaries AS s
ON de.employee_id = s.employee_id
GROUP BY d.dept_name;

-- Find the department with the highest total salary expense
SELECT d.dept_name, SUM(s.hourly_pay) AS department_salary
FROM departments AS d
INNER JOIN dept_employees AS de
ON d.id = de.department_id
INNER JOIN salaries AS s
ON de.employee_id = s.employee_id
GROUP BY d.dept_name
ORDER BY department_salary DESC
LIMIT 1;


-- List top 10 highest paid employees
SELECT e.first_name, e.last_name, s.hourly_pay
FROM employees AS e
INNER JOIN salaries AS s ON e.id = s.employee_id
ORDER BY s.hourly_pay DESC
LIMIT 10;