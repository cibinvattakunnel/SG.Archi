CREATE TABLE [dbo].[ClientContact]
(
[ClientContactId] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[BusinessName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[FirstName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Surname] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Position] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[WorkNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[MobileNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[IsPrimaryContact] [bit] NOT NULL,
[IsOdometerReadingContact] [bit] NULL,
[IsE58Contact] [bit] NULL,
[IsBillingContact] [bit] NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientContact] ADD CONSTRAINT [PK__ClientCo__421FAD8866EF9C41] PRIMARY KEY CLUSTERED  ([ClientContactId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'Active'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Business Trading As Name', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'BusinessName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client Contact', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'ClientContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'ClientID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'First Name', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'IsBillingContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'IsE58Contact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'IsOdometerReadingContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'IsPrimaryContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'LastUpdatedTimeStamp'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MobileNo', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'MobileNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Position', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'Position'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last Name', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'Surname'
GO
EXEC sp_addextendedproperty N'MS_Description', 'WorkNo', 'SCHEMA', N'dbo', 'TABLE', N'ClientContact', 'COLUMN', N'WorkNo'
GO
