SELECT TOP (1000) R.RehberAd + ' ' + R.RehberSoyad AS RehberTamAd, COUNT(*) AS ToplamTur
FROM     dbo.Rehberler AS R INNER JOIN
                  dbo.Turlar AS T ON R.[RehberKimlikNo(TC/Yabancı)] = T.[RehberKimlikNo(TC/Yabancı)]
WHERE  (MONTH(T.EklenmeTarihi) = 8)
GROUP BY R.RehberAd, R.RehberSoyad
ORDER BY ToplamTur DESC