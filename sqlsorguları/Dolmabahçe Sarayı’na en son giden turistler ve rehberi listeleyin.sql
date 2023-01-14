SELECT TOP 1 Musteriler.MüşteriAdSoyad as 'Turist/Müsteri', Rehberler.RehberAd as 'Rehber'
FROM Musteriler 
JOIN TurSatislari ON Musteriler.MüşteriID = TurSatislari.MüşteriID 
JOIN Turlar ON TurSatislari.TurID = Turlar.TurID 
JOIN Rehberler ON Turlar.[RehberKimlikNo(TC/Yabancı)] = Rehberler.[RehberKimlikNo(TC/Yabancı)]
WHERE Turlar.TurAdı = 'Dolmabahçe Sarayı'
ORDER BY TurSatislari.SatışTarihi DESC