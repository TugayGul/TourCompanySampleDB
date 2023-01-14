ALTER TABLE Faturalar
ADD CONSTRAINT CK_Indirim
CHECK (dbo.Indirim(MüşteriID) = Indirim);