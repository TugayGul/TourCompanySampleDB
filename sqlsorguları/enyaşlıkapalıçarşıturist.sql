SELECT MAX(Yas) as EnYasliTurist, Musteriler.MüşteriAdSoyad
FROM Musteriler
JOIN TurSatislari ON TurSatislari.MüşteriID = Musteriler.MüşteriID
JOIN Turlar ON Turlar.TurID = TurSatislari.TurID
WHERE Turlar.TurAdı = 'Kapalı Çarşı'
GROUP BY Musteriler.MüşteriAdSoyad