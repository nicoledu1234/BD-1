-- Pregunta 1:
SELECT location_id, street_address, city, state_province, country_name 
FROM   locations 
NATURAL JOIN  countries; 
-- Pregunta 2:
SELECT last_name, department_id, department_name 
FROM   employees  
JOIN   departments  
USING (department_id);
-- Pregunta 3:
SELECT e.last_name, e.job_id, e.department_id, d.department_name 
FROM   employees e 
JOIN departments d  
ON  (e.department_id = d.department_id) 
JOIN   locations l 
ON  (d.location_id = l.location_id) 
WHERE LOWER(l.city) = 'toronto';
-- Pregunta 4:
SELECT w.last_name "Employee", w.employee_id "EMP#", m.last_name "Manager", m.employee_id  "Mgr#" 
FROM   employees w 
join employees m 
ON     (w.manager_id = m.employee_id); 
-- Pregunta 5:
SELECT w.last_name "Employee", w.employee_id "EMP#", m.last_name "Manager", m.employee_id  "Mgr#" 
FROM   employees w  
LEFT OUTER JOIN employees m 
ON (w.manager_id = m.employee_id); 
-- Pregunta 6:
SELECT e.department_id department, e.last_name employee, c.last_name colleague 
FROM   employees e 
JOIN employees c 
ON     (e.department_id = c.department_id) 
WHERE  e.employee_id <> c.employee_id 
ORDER BY e.department_id, e.last_name, c.last_name;
-- Pregunta 7:
SELECT a.last_name, a.job_id, a.salary, b.department_name, c.grade_level 
FROM employees a  
JOIN departments b 
ON (a.department_id = b.department_id) 
JOIN job_grades c 
ON (a.salary BETWEEN c.lowest_sal AND c.highest_sal);
-- Pregunta 8:
SELECT e.last_name, e.hire_date 
FROM   employees e 
JOIN employees davies 
ON   (davies.last_name = 'Davies') 
WHERE  davies.hire_date < e.hire_date;
-- Pregunta 9:
SELECT w.last_name, w.hire_date, m.last_name, m.hire_date
FROM  employees w 
JOIN employees m 
ON  (w.manager_id = m.employee_id)  
WHERE w.hire_date <  m.hire_date;


 