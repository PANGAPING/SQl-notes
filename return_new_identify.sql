
CREATE PROCEDURE UploadPassageLink
	-- Add the parameters for the stored procedure here
	@passageId int,
	@url char(200),
	@text char(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into passage_links(passage_id,url,text) values(@passageId,@url,@text);
	
	Declare @new_identity int;

	select @new_identity = SCOPE_IDENTITY();

	return @new_identity;

	return 
END
GO
