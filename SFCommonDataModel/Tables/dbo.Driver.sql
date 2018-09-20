CREATE TABLE [dbo].[Driver]
(
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[FirstName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[LastName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Department] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Email] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[FuelCard] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Comment] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Active] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Driver] ADD CONSTRAINT [PK__Driver__E67E1A046753A3EA] PRIMARY KEY CLUSTERED  ([ClientID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'Active', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'Active'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'ClientID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Comment', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'Comment'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Department', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'FirstName', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'FuelCard', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'FuelCard'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastName', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'LastName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'Driver', 'COLUMN', N'LastUpdatedTimeStamp'
GO
