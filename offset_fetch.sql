USE [Blog]
GO
/****** Object:  StoredProcedure [dbo].[SelectPassagesByPage]    Script Date: 2019/7/22 18:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SelectPassagesByPage]
	-- Add the parameters for the stored procedure here
	@PageIndex int,
	@CountPerPage int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Declare @PageLastIndex int;

	Set @PageLastIndex = @PageIndex -1;

    -- Insert statements for procedure here
	SELECT * from passages order by id desc offset @PageLastIndex*@CountPerPage  rows fetch first @CountPerPage rows only;
END
