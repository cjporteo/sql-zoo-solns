SELECT DISTINCT player
FROM goal JOIN game ON matchid=id AND (team1='GER' OR team2='GER')
WHERE teamid!='GER'
