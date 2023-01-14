CREATE TRIGGER TurFiyati
ON Bolgeler
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
  SET NOCOUNT ON;

  UPDATE Turlar
  SET TurFiyatı = (SELECT SUM(Fiyat) FROM Bolgeler WHERE Turlar.TurID = Bolgeler.TurID)
  FROM inserted
  WHERE Turlar.TurID = inserted.TurID;
END
