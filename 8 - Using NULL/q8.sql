SELECT dept.name, SUM(teacher.name IS NOT NULL)
FROM teacher RIGHT JOIN dept ON dept.id=teacher.dept
GROUP BY dept.name
