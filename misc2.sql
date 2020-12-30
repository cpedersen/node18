SELECT
	d.dept_name as Department,
	d.id as Department_ID,
e.id as Employee_ID,
ep.project_id as Project_ID,
p.project_name as Project_Name

FROM
department d

JOIN
employee e 

ON e.department = d.id

	JOIN
	employee_project ep
	ON ep.emp_id = e.id

	JOIN
	project p
	ON p.id = ep.project_id

WHERE
d.dept_name = 'Sales';
