USE [TourCompany]
GO
/****** Object:  Trigger [dbo].[ToplamFiyatHesapla]    Script Date: 1/14/2023 02:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[ToplamFiyatHesapla]
ON [dbo].[Faturalar]
AFTER INSERT
AS
BEGIN
    EXEC FaturaToplamFiyatHesapla
END
