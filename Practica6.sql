-- Pregunta 1:
UNDEFINE Enter_name  
SELECT last_name, hire_date 
FROM   employees 
WHERE  department_id = 
    (SELECT department_id  FROM   employees WHERE  last_name = '&&Enter_name') 
AND last_name <> '&Enter_name';
-- Pregunta 2:
SELECT employee_id, last_name, salary 
FROM   employees 
WHERE  salary >
    (SELECT AVG(salary) FROM   employees) 
ORDER BY salary; 
-- Pregunta 3:
SELECT employee_id, last_name
FROM   employees 
WHERE  department_id 
IN (SELECT department_id FROM   employees  WHERE  last_name like '%u%');
-- Pregunta 4:
SELECT last_name, department_id, job_id 
FROM   employees 
WHERE  department_id IN (SELECT department_id FROM   departments  WHERE  location_id = 1700); 
--Parte 2
SELECT last_name, department_id, job_id 
FROM   employees 
WHERE  department_id 
IN (SELECT department_id FROM departments WHERE  location_id = &Enter_location);
-- Pregunta 5:
select last_name, salary
from employees
where manager_id 
in (select employee_id from employees where last_name='King');
-- Pregunta 6:
SELECT department_id, last_name, job_id 
FROM   employees 
WHERE  department_id 
IN (SELECT department_id FROM   departments  WHERE  department_name = 'Executive');
-- Pregunta 7:
SELECT employee_id, last_name, salary 
FROM   employees 
WHERE  department_id 
IN (SELECT department_id  FROM   employees  WHERE  last_name like '%u%')
AND    salary > (SELECT AVG(salary) FROM   employees);

