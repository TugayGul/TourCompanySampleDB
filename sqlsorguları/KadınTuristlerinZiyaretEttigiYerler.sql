CREATE VIEW FemaleTouristPlaces AS
SELECT TOP 1000 B.BölgeAdı, COUNT(*) as ToplamZiyaret
FROM Bolgeler B
JOIN TurSatislari TS ON B.TurID = TS.TurID
JOIN Musteriler M ON TS.MüşteriID = M.MüşteriID
WHERE M.Cinsiyet = 'K'
GROUP BY B.BölgeAdı
ORDER BY ToplamZiyaret DESC
