CREATE VIEW İtalyanTuristler AS
SELECT TOP 1000 B.BölgeAdı, COUNT(TS.TurID) as VisitCount
FROM TurSatislari TS
JOIN Turlar T ON TS.TurID = T.TurID
JOIN Bolgeler B ON T.TurID = B.TurID
JOIN Musteriler M ON TS.MüşteriID = M.MüşteriID
WHERE M.Ülke = 'Italya'
GROUP BY B.BölgeAdı
ORDER BY VisitCount DESC
