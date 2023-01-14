CREATE TRIGGER RehberTamAdı
ON Turlar
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
  SET NOCOUNT ON;

  UPDATE Turlar
  SET RehberTamAdi = (SELECT RehberAd + ' ' + RehberSoyad FROM Rehberler WHERE [RehberKimlikNo(TC/Yabanci)] = Turlar.[RehberKimlikNo(TC/Yabanci)])
  FROM inserted
  WHERE Turlar.TurID = inserted.TurID;
END
