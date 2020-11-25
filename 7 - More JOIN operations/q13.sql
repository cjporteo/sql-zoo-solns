SELECT name
FROM actor JOIN casting ON actor.id=casting.actorid AND ord=1
GROUP BY name
HAVING COUNT(1) >= 15
ORDER BY name
