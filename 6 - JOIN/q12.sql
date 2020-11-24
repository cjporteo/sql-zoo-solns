SELECT id, mdate, COUNT(1)
FROM game JOIN goal ON id=matchid AND teamid='GER'
GROUP BY id, mdate
