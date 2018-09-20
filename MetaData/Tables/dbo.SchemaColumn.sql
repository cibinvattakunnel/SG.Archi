CREATE TABLE [dbo].[SchemaColumn]
(
[TABLE_CATALOG] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[TABLE_SCHEMA] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[TABLE_NAME] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[COLUMN_NAME] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[ORDINAL_POSITION] [int] NULL,
[COLUMN_DEFAULT] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[IS_NULLABLE] [nvarchar] (3) COLLATE Latin1_General_CI_AS NULL,
[DATA_TYPE] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[CHARACTER_MAXIMUM_LENGTH] [int] NULL,
[CHARACTER_OCTET_LENGTH] [int] NULL,
[NUMERIC_PRECISION] [smallint] NULL,
[NUMERIC_PRECISION_RADIX] [smallint] NULL,
[NUMERIC_SCALE] [int] NULL,
[DATETIME_PRECISION] [smallint] NULL,
[CHARACTER_SET_CATALOG] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[CHARACTER_SET_SCHEMA] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[CHARACTER_SET_NAME] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[COLLATION_CATALOG] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[COLLATION_SCHEMA] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[COLLATION_NAME] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DOMAIN_CATALOG] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DOMAIN_SCHEMA] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DOMAIN_NAME] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[COLUMN_DESCRIPTION] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[IS_PRIMARY_KEY] [bit] NULL
) ON [PRIMARY]
GO