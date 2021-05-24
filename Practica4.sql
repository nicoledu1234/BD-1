-- Pregunta 4:
SELECT ROUND(MAX(salary),0) "Maximum",
ROUND(MIN(salary),0) "Minimum",
ROUND(SUM(salary),0) "Sum",
ROUND(AVG(salary),0) "Average"
FROM employees; 
-- Pregunta 5:
SELECT job_id, ROUND(MAX(salary),0) "Maximum",
ROUND(MIN(salary),0) "Minimum",
ROUND(SUM(salary),0) "Sum",
ROUND(AVG(salary),0) "Average"
FROM employees
GROUP BY job_id; 
-- Pregunta 6:
--Parte 1
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;   
--Parte 2
SELECT job_id, COUNT(*)
FROM employees
WHERE job_id = '&job_title'
GROUP BY job_id;  
-- Pregunta 7:
SELECT COUNT(DISTINCT manager_id) "Number of Managers"
FROM employees; 
-- Pregunta 8:
SELECT MAX(salary) - MIN(salary) DIFFERENCE
FROM employees; 
-- Pregunta 9:
SELECT manager_id, MIN(salary)
FROM employees 
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;
-- Pregunta 10:
SELECT COUNT(*) total,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1995,1,0))"1 995",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1996,1,0))"1 996",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1997,1,0))"1 997",
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1998,1,0))"1 998"
FROM employees; 
--Pregunta 11:
SELECT job_id "Job", 
SUM(DECODE(department_id , 20, salary)) "Dept 20" ,
SUM(DECODE(department_id , 50, salary)) "Dept 50" ,
SUM(DECODE(department_id , 80, salary)) "Dept 80" ,
SUM(DECODE(department_id , 90, salary)) "Dept 90" ,
SUM(salary) "Total"
FROM employees
GROUP BY job_id;
