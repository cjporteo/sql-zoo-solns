SELECT name, DAY(whn),
   confirmed - LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn) as new_cases
 FROM covid
WHERE name = 'Italy'
AND MONTH(whn) = 3
ORDER BY whn
