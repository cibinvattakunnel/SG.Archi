SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[uspScriptDatabase] @schemaName [VARCHAR](50),@databaseName [VARCHAR](255)
AS
DECLARE @TableCursor CURSOR;
DECLARE @TableName VARCHAR(128);
BEGIN
    SET @TableCursor = CURSOR FOR
    SELECT TABLE_NAME
	FROM dbo.SchemaTable   
	WHERE TABLE_CATALOG =@databaseName
	AND TABLE_SCHEMA = @schemaName 

    OPEN @TableCursor 
    FETCH NEXT FROM @TableCursor 
    INTO @TableName

    WHILE @@FETCH_STATUS = 0
    BEGIN
      --PRINT @TableName

	  DECLARE @sqlCmd VARCHAR(8000);
		EXEC dbo.uspScriptTable @schemaName = 'dbo',        -- varchar(50)
								   @tableName = @TableName,         -- varchar(255)
								   @nameAppendix = '',      -- varchar(255)
								   @sqlCmd = @sqlCmd OUTPUT -- varchar(8000)
		PRINT @sqlCmd;


      FETCH NEXT FROM @TableCursor 
      INTO @TableName 
    END; 

    CLOSE @TableCursor ;
    DEALLOCATE @TableCursor;
END;
GO
