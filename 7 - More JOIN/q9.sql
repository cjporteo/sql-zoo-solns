SELECT title
FROM casting 
JOIN actor ON casting.actorid=actor.id AND name='Harrison Ford' AND ord>1
JOIN movie ON movie.id=casting.movieid
