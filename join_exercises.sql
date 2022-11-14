USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT dept_name AS department_name FROM departments;


#Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS department_name, CONCAT(employees.first_name, ' ', employees.last_name)
    AS dept_manager
    FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
    WHERE dept_manager.to_date = '9999-01-01' ORDER BY department_name;


#Find the name of all departments currently managed by women.
SELECT departments.dept_name AS department_name, CONCAT(employees.first_name, ' ', employees.last_name)
    AS dept_manager
    FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
    WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F' ORDER BY department_name;


# #Find the current titles of employees currently working in the Customer Service department.
SELECT DISTINCT title FROM titles;

SELECT titles.title AS TITLE, COUNT(title) AS TOTAL
    FROM titles
    JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
    JOIN departments name ON dept_emp.dept_no = name.dept_no
    WHERE titles.to_date LIKE '9999%'
    AND dept_emp.to_date LIKE '9%'
    AND name.dept_name = 'Customer Service'
    GROUP BY titles.title, title;


#Find the current salary of all current managers.
SELECT DISTINCT d.dept_name AS Deparment_Name, CONCAT(e.first_name, ' ', e.last_name) AS Deparment_Manager, s.salary AS Salary
    FROM employees AS e
    JOIN dept_manager AS de ON de.emp_no = e.emp_no
    JOIN departments AS d ON d.dept_no = de.dept_no
    JOIN salaries AS s ON e.emp_no = s.emp_no
    WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
    ORDER BY d.dept_name ASC;


#Bonus Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ',e.last_name) AS Employee, d.dept_name AS Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
    FROM employees e
    LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
    LEFT JOIN departments d ON de.dept_no = d.dept_no
    LEFT JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees AS m ON dm.emp_no = m.emp_no
    WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
    ORDER BY dept_name ASC;



