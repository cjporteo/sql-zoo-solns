SELECT name, DATE_FORMAT(whn,'%Y-%m-%d'), 
   confirmed - LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn) as new_cases
 FROM covid
WHERE name = 'Italy'
AND WEEKDAY(whn) = 0
ORDER BY whn
