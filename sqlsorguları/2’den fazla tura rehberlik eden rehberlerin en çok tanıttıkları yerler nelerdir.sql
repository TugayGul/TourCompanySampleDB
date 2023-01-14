SELECT B.BölgeAdı, COUNT(TS.TurID) as VisitCount
FROM TurSatislari TS
JOIN Turlar T ON TS.TurID = T.TurID
JOIN Bolgeler B ON T.TurID = B.TurID
WHERE T.[RehberKimlikNo(TC/Yabancı)] IN (SELECT [RehberKimlikNo(TC/Yabancı)] FROM Turlar GROUP BY [RehberKimlikNo(TC/Yabancı)] HAVING COUNT(*) > 2)
GROUP BY B.BölgeAdı
ORDER BY VisitCount DESC
