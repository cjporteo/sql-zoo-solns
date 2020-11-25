SELECT name, RIGHT(capital, LENGTH(capital)-LENGTH(name))
FROM world
WHERE capital LIKE CONCAT(name, '%') AND capital != name
