SELECT institution, ROUND(SUM(score*response)/SUM(response))
  FROM nss
 WHERE question='Q22'
   AND (institution LIKE '%Manchester%')
GROUP BY institution
