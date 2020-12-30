SELECT
d.dept_name as Department,
e.emp_name as Employee,
ep.emp_id as Employee_ID,
p.project_name as Project_Name
FROM department d 
JOIN employee e ON e.department = d.id
JOIN employee_project ep ON ep.emp_id = e.id
JOIN project p ON p.id = ep.project_id
WHERE
p.project_name = 'Watch paint dry'
AND
d.dept_name = 'Warehouse';
