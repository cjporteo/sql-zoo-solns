SELECT teamname, COUNT(1)
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname
