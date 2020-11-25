SELECT subject, SUM(0.01*response*A_STRONGLY_AGREE)
FROM nss
WHERE question='Q22'
AND subject IN ('(8) Computer Science', '(H) Creative Arts and Design')
GROUP BY subject
