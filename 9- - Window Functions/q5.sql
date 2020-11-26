SELECT constituency, party
FROM
(SELECT constituency, party, votes,
  RANK() OVER (PARTITION BY constituency ORDER BY votes DESC) as posn
FROM ge
WHERE constituency in ('S14000021', 'S14000022', 'S14000023',
                       'S14000024', 'S14000025', 'S14000026')
  AND yr=2017
ORDER BY posn, constituency) as edin
WHERE posn=1
