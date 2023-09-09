# SQL Examples

This repo contains various SQL queries for learning and reference.

## Prerequisites

Before you begin make ensure you have the following prerequisites:

- MySQL: Download and install MySQL from [here](https://dev.mysql.com/downloads/mysql/)

## Getting Started

Follow these steps to set up and use the SQL examples.

1. Download and install MySQL using the provided link.
2. Clone this repository to your local machine:

```shell
git clone https://github.com/ManuelDelarosa1204/sql-examples.git
```

Log in to the MySQL server using the username and password you set during installation.

## Running SQL Scripts

Once you're logged in to MySQL, you can use the scripts provided in this repository to create the database, tables, and populate them with data. To ensure proper functionality, it's important to run all the create scripts as the tables have foreign key relationships with each other. You can run the scripts in the MySQL command line with the following syntax:
```shell
source /path/to/file
```

The queries.sql file contains numerous queries and is not recommended to be run as a script but rather a reference to queries that can be preformed on the database.

## Examples

Explore the SQL examples in this repository to practice and learn SQL queries. Here's a quick start example

```sql
-- Select all records from the `employees` table
SELECT * FROM employees;

-- Select all records for a specific employee
SELECT * FROM employees WHERE id = 1;
```
