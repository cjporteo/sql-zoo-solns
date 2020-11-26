SELECT 
   world.name,
   ROUND(100000*confirmed/population,0) as inf_rate,
   RANK() OVER(ORDER BY inf_rate) as irr
  FROM covid JOIN world ON covid.name=world.name
WHERE whn = '2020-04-20' AND population >= 10000000
ORDER BY population DESC
