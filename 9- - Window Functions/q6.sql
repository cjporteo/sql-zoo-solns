SELECT party, COUNT(1)
FROM
(SELECT constituency, party, votes,
  RANK() OVER (PARTITION BY constituency ORDER BY votes DESC) as posn
FROM ge
WHERE LEFT(constituency, 1)='S'
  AND yr=2017
ORDER BY posn, constituency) as edin
WHERE posn=1
GROUP BY party
