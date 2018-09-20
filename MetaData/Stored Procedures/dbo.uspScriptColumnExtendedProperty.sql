SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[uspScriptColumnExtendedProperty] @schemaName [VARCHAR](50),@databaseName [VARCHAR](255)
AS
BEGIN
	SELECT 
	'EXEC sp_addextendedproperty ' +   
	'@name = N'''+'MS_Description'', ' +  
	'@value = '''+ COLUMN_DESCRIPTION +''',' +   
	'@level0type = N'+'''Schema'', @level0name ='''  +TABLE_SCHEMA+''',' +  
	'@level1type = N'+'''Table'',  @level1name ='''  +TABLE_NAME+''','+ 
	'@level2type = N'+'''Column'', @level2name ='''  + COLUMN_NAME+''''
	FROM dbo.SchemaColumn
	WHERE TABLE_SCHEMA = @schemaName
	AND TABLE_CATALOG = @databaseName
END
GO
