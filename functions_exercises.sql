USE employees;

# COPY OF ORDER BY EXERCISE
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# WORK AROUND FOR INTELLIJ PAGINATION DECEPTION
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name, emp_no DESC;


SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%' ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';



SELECT * FROM employees
WHERE (last_name LIKE 'E%' AND last_name LIKE '%e');

SELECT * FROM employees
WHERE (last_name LIKE '%q%' AND last_name NOT LIKE '%qu%');

##################################

# FUNCTIONS EXERCISES
SELECT CONCAT (first_name, ' ', last_name) AS name FROM employees
WHERE (last_name LIKE 'E%' AND last_name LIKE '%e');


SELECT * FROM employees
            WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
            AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25
            ORDER BY birth_date, hire_date DESC;

SELECT *,DATEDIFF(NOW(),hire_date) FROM employees
                WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
                AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25
                ORDER BY hire_date, birth_date DESC;

