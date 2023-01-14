SELECT BölgeAdı
FROM TurSatislari
JOIN Musteriler ON TurSatislari.MüşteriID = Musteriler.MüşteriID
JOIN Bolgeler ON TurSatislari.TurID = Bolgeler.TurID
WHERE Musteriler.Ülke = 'Finlandiya' AND Musteriler.SonGeldigiYer = 'Yunanistan'
