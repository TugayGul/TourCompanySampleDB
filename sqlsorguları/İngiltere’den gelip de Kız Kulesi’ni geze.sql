CREATE VIEW IngiltereKizKulesi AS
SELECT M.MüşteriAdSoyad, M.Eposta, M.TelNo
FROM Musteriler M
JOIN TurSatislari TS ON M.MüşteriID = TS.MüşteriID
JOIN Turlar T ON TS.TurID = T.TurID
JOIN Bolgeler B ON T.TurID = B.TurID
WHERE B.BölgeAdı = 'Kiz Kulesi' AND M.Uyruk = 'İngiliz'
