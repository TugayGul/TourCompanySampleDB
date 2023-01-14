CREATE TRIGGER SatıslarıGuncelle
ON Faturalar
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE F
    SET Satıslar = (
        SELECT CAST(TurID as varchar(20)) + ', ' 
        FROM TurSatislari TS
        WHERE TS.MüşteriID = F.MüşteriID
        FOR XML PATH('')
    )
    FROM Faturalar F
    JOIN inserted i ON F.MüşteriID = i.MüşteriID
END
