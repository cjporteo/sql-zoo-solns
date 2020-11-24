SELECT stadium, COUNT(1)
FROM game JOIN goal ON id=matchid
GROUP BY stadium
