SELECT name
FROM casting JOIN actor ON actorid=id
AND movieid = (SELECT id FROM movie WHERE title='Alien')
