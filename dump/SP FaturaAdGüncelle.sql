CREATE PROCEDURE dbo.FaturaMusteriAdGuncelle
AS
BEGIN
    UPDATE F
    SET F.MusteriAdi = M.MüşteriAdSoyad
    FROM Faturalar F
    JOIN Musteriler M ON F.MüşteriID = M.MüşteriID
END
