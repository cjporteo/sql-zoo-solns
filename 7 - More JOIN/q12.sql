SELECT title, name
FROM
(SELECT DISTINCT(movie.id), title
FROM movie JOIN casting ON movie.id=casting.movieid
           JOIN actor ON actor.id=casting.actorid
WHERE NAME='Julie Andrews') AS ja_movies
JOIN casting ON ja_movies.id=casting.movieid AND ord=1
JOIN actor ON actor.id=casting.actorid
