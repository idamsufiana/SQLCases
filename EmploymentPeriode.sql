SELECT e.employee_name, d.department_name, g.grade_name, g.salary, p.position_name, e.join_date, 
CURRENT_DATE() AS DATE, timestampdiff(YEAR, e.join_date, CURRENT_DATE()) as YEAR,
(timestampdiff(month, e.join_date, CURRENT_DATE()) - timestampdiff(year, e.join_date, CURRENT_DATE())*12) AS MONTH
FROM employee e 
JOIN department d on e.department_id = d.department_id 
JOIN grade g ON g.grade_id= e.grade_id 
JOIN position p ON p.position_id = e.position_id 
