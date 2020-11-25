SELECT name,
  CASE
    WHEN dept=1 OR dept=2 THEN 'Sci'
    ELSE 'Art'
  END
FROM teacher
