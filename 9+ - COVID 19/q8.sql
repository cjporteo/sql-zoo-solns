SELECT nc_ranked.name, DATE_FORMAT(nc_ranked.whn, '%Y-%m-%d'), nc_ranked.new_cases
FROM
(SELECT name, whn, new_cases, RANK() OVER (PARTITION BY name ORDER BY new_cases DESC) as nc_rank
FROM
(SELECT name, whn, 
  confirmed - LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn) as new_cases
FROM covid) as nc
) as nc_ranked
WHERE nc_ranked.nc_rank=1 AND nc_ranked.new_cases>=1000
ORDER BY nc_ranked.whn
