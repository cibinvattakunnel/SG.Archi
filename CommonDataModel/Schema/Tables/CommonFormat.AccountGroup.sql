CREATE TABLE [CommonFormat].[AccountGroup]
(
[AccountGroupId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PayfileUploadPassword] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InternalContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[AccountGroup] ADD CONSTRAINT [PK_AccountGroup] PRIMARY KEY CLUSTERED  ([AccountGroupId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Details of employers group', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer group/company group  /Sample Data : NSW Health', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', 'COLUMN', N'AccountGroupId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', 'COLUMN', N'InternalContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Group name ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'leave this blank ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroup', 'COLUMN', N'PayfileUploadPassword'
GO
