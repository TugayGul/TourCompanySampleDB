CREATE TRIGGER ToplamFiyatHesapla
ON Faturalar
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    EXEC FaturaToplamFiyatHesapla
END
