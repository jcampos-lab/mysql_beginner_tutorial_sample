SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name,
 last_name,
 birth_date,
 age,
 (age + 10) * 10 + 10
FROM Parks_and_Recreation.employee_demographics;
# PEMDAS (the order of the operators work, starting with parentesis)

SELECT DISTINCT first_name, gender
FROM Parks_and_Recreation.employee_demographics;

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';


SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE STATEMENT --
-- % means 'anything' and the _ means 'a specific value'

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;


SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

-- HAVING vs WHERE

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

-- LIMIT & ALIASING--

SELECT *
FROM employee_demographics
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;


-- Aliasing--

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

-- END OF THE BEGGINER INTRODUCTION--















