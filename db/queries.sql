SELECT
  e.id AS employee_id,
  e.first_name,
  e.last_name,
  r.title AS role_title,
  r.salary,
  d.name AS department_name,
  CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM
  employee AS e
LEFT JOIN
  role AS r ON e.role_id = r.id
LEFT JOIN
  department AS d ON r.department_id = d.id
LEFT JOIN
  employee AS m ON e.manager_id = m.id;
