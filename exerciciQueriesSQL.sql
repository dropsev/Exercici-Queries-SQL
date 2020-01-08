-- Quantitat de registres de la taula de vols:

SELECT COUNT(*) FROM flights;

-- Retard promig de sortida i arribada segons l’aeroport origen:

SELECT origin, AVG(ArrDelay), AVG(DepDelay) 
FROM flights
GROUP BY origin;

-- Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen:

SELECT origin, colYear, colMonth, AVG(ArrDelay)
FROM flights
GROUP BY origin, colYear, colMonth, ArrDelay;

-- Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen (amb el nom de la ciutat):

SELECT usairports.City, colYear, colMonth, AVG(ArrDelay)
FROM flights
INNER JOIN usairports
ON flights.Origin = usairports.IATA
GROUP BY City, colYear, colMonth, ArrDelay;

-- Les companyies amb més vols cancelats, per mesos i any (ordenades per més cancel·lacions):

SELECT UniqueCarrier, colYear, colMonth, Cancelled
FROM flights
ORDER BY Cancelled DESC;

-- L’identificador dels 10 avions que més distància han recorregut fent vols:

SELECT TailNum, Distance
FROM flights
WHERE TailNum IS NOT NULL
ORDER BY Distance DESC
LIMIT 10;

-- Companyies amb el seu retard promig (retràs promig major de 10 minuts):

SELECT UniqueCarrier, AVG(ArrDelay)
FROM flights
WHERE ArrDelay > 10
GROUP BY UniqueCarrier
ORDER BY ArrDelay DESC;







