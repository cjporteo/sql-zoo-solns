SELECT movie.title, num_actors.total
FROM
movie JOIN
(SELECT id, COUNT(1) as total
FROM movie JOIN casting ON movie.id=casting.movieid
GROUP BY id) AS num_actors 
  ON movie.id = num_actors.id AND movie.yr=1978
ORDER BY num_actors.total DESC, movie.title
