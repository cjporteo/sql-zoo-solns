SELECT DISTINCT(actor.name)
FROM casting
  JOIN actor
    ON casting.actorid=actor.id
  JOIN (SELECT movieid
       FROM casting JOIN actor ON casting.actorid=actor.id
       WHERE name='Art Garfunkel') as ag_movies
    ON ag_movies.movieid = casting.movieid
WHERE actor.name != 'Art Garfunkel'
