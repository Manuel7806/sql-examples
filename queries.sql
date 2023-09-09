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
* Lets taka a look at the salaries
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