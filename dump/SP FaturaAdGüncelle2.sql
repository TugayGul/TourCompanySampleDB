CREATE TRIGGER FaturaMusteriAdGuncelletr
ON Faturalar
AFTER INSERT
AS
BEGIN
    EXEC dbo.FaturaMusteriAdGuncelle
END
