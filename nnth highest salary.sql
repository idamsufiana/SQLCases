SELECT * FROM
((SELECT e.employee_name, d.department_name, g.grade_name, g.salary, p.position_name FROM employee e 
JOIN department d on e.department_id = d.department_id 
JOIN grade g ON g.grade_id= e.grade_id 
JOIN position p ON p.position_id = e.position_id
ORDER BY g.salary DESC LIMIT 4) AS T) ORDER BY T.salary ASC LIMIT 1
