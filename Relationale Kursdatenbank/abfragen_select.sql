SELECT *
FROM Standorte

SELECT Standortname
FROM Standorte

SELECT s.Standortname, s.Straße, s.Hausnummer, s.PLZ, o.Ort
FROM Standorte s
INNER JOIN Orte o ON s.PLZ = o.PLZ;