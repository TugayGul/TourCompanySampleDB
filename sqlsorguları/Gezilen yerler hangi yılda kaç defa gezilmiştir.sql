SELECT B.BölgeAdı, COUNT(TS.TurID) as VisitCount, YEAR(TS.SatışTarihi) as Year
FROM TurSatislari TS
JOIN Turlar T ON TS.TurID = T.TurID
JOIN Bolgeler B ON T.TurID = B.TurID
GROUP BY B.BölgeAdı, YEAR(TS.SatışTarihi)
ORDER BY Year, VisitCount DESC

-- Remove Group By and Order By add 'WHERE YEAR(TS.SatışTarihi) = 2022' to see spesific year.