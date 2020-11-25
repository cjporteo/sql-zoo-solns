SELECT name, continent
FROM world x
WHERE x.population >= 
  ALL(SELECT 3*population FROM world y WHERE x.continent=y.continent AND x.name != y.name) 
