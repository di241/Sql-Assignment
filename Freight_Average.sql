-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dishant Shiroya
-- Create date: 23-01-2024
-- Description:	Average of Fright
-- =============================================
CREATE PROCEDURE Freight_Average 
	-- Add the parameters for the stored procedure here
	@CustomerID nvarchar(5),
	@AverageFreight money output
AS
BEGIN
	SELECT @AverageFreight = AVG(Freight)
	from Orders
	where CustomerID = @CustomerID
END
GO
