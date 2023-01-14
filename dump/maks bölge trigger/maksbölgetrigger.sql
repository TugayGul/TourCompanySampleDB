CREATE TRIGGER Bolgeler_TurID_limit
ON Bolgeler
AFTER INSERT, UPDATE
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @count INT;

  SELECT @count = COUNT(*)
  FROM Bolgeler
  WHERE TurID IN (SELECT TurID FROM inserted);

  IF (@count > 3)
  BEGIN
    RAISERROR('Maximum of 3 related rows allowed', 16, 1);
    ROLLBACK TRANSACTION;
  END
END
