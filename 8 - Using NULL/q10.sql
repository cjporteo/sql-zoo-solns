SELECT name,
  CASE
    WHEN dept=1 OR dept=2 THEN 'Sci'
    WHEN dept=3 THEN 'Art'
    ELSE 'None'
  END
FROM teacher
