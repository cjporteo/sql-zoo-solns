SELECT team1, team2, player
FROM goal JOIN game ON matchid=id
WHERE player LIKE 'Mario%'
