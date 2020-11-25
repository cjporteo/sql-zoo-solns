SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000
