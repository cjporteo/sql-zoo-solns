SELECT first_leg.num, first_leg.company, first_leg.transfer,
       second_leg.num, second_leg.company 

FROM

(SELECT a.num, a.company, b.stop AS end, stopb.name AS transfer
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart') AS first_leg

JOIN

(SELECT c.stop AS start, c.num, c.company
FROM route c JOIN route d ON
  (c.company=d.company AND c.num=d.num)
  JOIN stops stopc ON (c.stop=stopc.id)
  JOIN stops stopd ON (d.stop=stopd.id)
WHERE stopd.name='Lochend') AS second_leg

ON first_leg.end=second_leg.start

ORDER BY first_leg.num, first_leg.transfer, second_leg.num
