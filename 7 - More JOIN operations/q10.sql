SELECT title, actor.name
FROM casting JOIN actor ON casting.actorid=actor.id AND ord=1
JOIN movie ON casting.movieid=movie.id AND yr=1962
