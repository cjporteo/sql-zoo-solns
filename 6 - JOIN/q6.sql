SELECT mdate, teamname
FROM game JOIN eteam ON game.team1=eteam.id AND eteam.coach='Fernando Santos'
