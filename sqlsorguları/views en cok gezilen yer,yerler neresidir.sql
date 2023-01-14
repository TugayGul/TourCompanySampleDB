CREATE VIEW EnCokZiyaretEdilenYerler AS 
SELECT TOP 10 BölgeAdı, COUNT(*) as ZiyaretSayısı
FROM Bolgeler B
JOIN TurSatislari TS ON B.TurID = TS.TurID
GROUP BY BölgeAdı
ORDER BY ZiyaretSayısı DESC
