-- Pregunta 1:
SELECT sysdate "Date"
FROM dual;
-- Pregunta 2 y 3:
SELECT employee_id, last_name, salary,
ROUND(salary*1.155 ) "New Salary" 
FROM employees;
-- Pregunta 4:
SELECT employee_id, last_name, salary,
ROUND(salary +(salary*0.155 )) "New Salary" , (salary*0.155 ) "Increase"
FROM employees;
-- Pregunta 5:
-- Parte 1 pregunta 5:
SELECT INITCAP(last_name) "Name",
LENGTH(last_name) "Length"
FROM employees
WHERE last_name LIKE 'J%'
OR last_name LIKE 'M%'
OR last_name LIKE 'A%'
ORDER BY last_name;
-- Parte 2 pregunta 5:
SELECT INITCAP(last_name) "Name",
LENGTH(last_name) "Length"
FROM employees
WHERE last_name like '&Start_Letter%'
ORDER BY last_name;
-- Pregunta 6:
SELECT last_name, ROUND(MONTHS_BETWEEN
(SYSDATE, hire_date)) MONTHS_WORKED
FROM employees
ORDER BY MONTHS_BETWEEN(SYSDATE, hire_date);
-- Pregunta 7:
SELECT last_name || ' earns ' || 
TO_CHAR(salary, 'fm$99,999.00') || ' monthly but wants '||
TO_CHAR(salary * 3, 'fm$99,999.00') || '.' "Dream Salaries"
FROM employees;
-- Pregunta 8:
SELECT last_name,
LPAD(salary, 15, '$') SALARY
FROM employees;
-- Pregunta 9:
SELECT last_name, hire_date,
TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'Lunes'), 
'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW 
FROM employees; 
-- Pregunta 10:
SELECT last_name, hire_date,
TO_CHAR(hire_date, 'DAY') DAY
FROM employees 
ORDER BY TO_CHAR(hire_date - 1, 'd'); 
-- Pregunta 11:
SELECT last_name,
NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM employees;
-- Pregunta 12:
SELECT rpad(last_name, 8)||' '|| rpad(' ', salary/1000+1, '*')
EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY salary DESC;  
-- Pregunta 13:
SELECT job_id, decode (job_id,
'ST_CLERK', 'E',
'SA_REP', 'D',
'IT_PROG', 'C',
'ST_MAN', 'B',
'AD_PRES', 'A',
'0')GRADE
FROM employees;
-- Pregunta 14:
SELECT job_id, CASE job_id
WHEN 'ST_CLERK' THEN 'E'
WHEN 'SA_REP' THEN 'D'
WHEN 'IT_PROG' THEN 'C'
WHEN 'ST_MAN' THEN 'B'
WHEN 'AD_PRES' THEN 'A'
ELSE '0' END GRADE
FROM employees
ORDER BY last_name ;

