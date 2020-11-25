SELECT continent, name FROM world x
WHERE name <= ALL
  (SELECT name FROM world y
   WHERE y.continent = x.continent)
