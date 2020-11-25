SELECT continent, COUNT(1)
FROM world
WHERE population>=10000000
GROUP BY continent
