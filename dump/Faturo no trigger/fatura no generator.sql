CREATE TRIGGER FaturaNoGenerator
ON Faturalar
AFTER INSERT 
AS
BEGIN
  DECLARE @count INT;
  SELECT @count = COUNT(*) FROM Faturalar;
  UPDATE Faturalar SET FaturaNO = 'FTR' + CONVERT(NVARCHAR(8), GETDATE(), 112) + RIGHT('000' + CONVERT(NVARCHAR(4), @count), 3)
  WHERE FaturaNO = (SELECT MAX(FaturaNO) FROM Faturalar);
END
