CREATE TABLE [dbo].[ClientDepartment]
(
[ClientDepartmentId] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[BusinessName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[DepartmentName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientDepartment] ADD CONSTRAINT [PK__ClientDe__146CC385DABBB5E2] PRIMARY KEY CLUSTERED  ([ClientDepartmentId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'Business Trading As Name', 'SCHEMA', N'dbo', 'TABLE', N'ClientDepartment', 'COLUMN', N'BusinessName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client Department', 'SCHEMA', N'dbo', 'TABLE', N'ClientDepartment', 'COLUMN', N'ClientDepartmentId'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client', 'SCHEMA', N'dbo', 'TABLE', N'ClientDepartment', 'COLUMN', N'ClientID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Department Name', 'SCHEMA', N'dbo', 'TABLE', N'ClientDepartment', 'COLUMN', N'DepartmentName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'ClientDepartment', 'COLUMN', N'LastUpdatedTimeStamp'
GO
