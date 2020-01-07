-- Quantitat de registres de la taula de vols:

SELECT COUNT(*) FROM flights;

-- Retard promig de sortida i arribada segons l’aeroport origen:

SELECT origin, AVG(ArrDelay), AVG(DepDelay) 
FROM flights
GROUP BY origin;

-- Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen:

SELECT origin, Year, Month, DayOfMonth 
FROM flights
GROUP BY origin;




SELECT month,
  COUNT(*) AS 'subscribers'
FROM newspaper
CROSS JOIN months
WHERE start_month <= month
AND end_month >= month
GROUP BY month;
