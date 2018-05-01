CREATE TABLE [CommonFormat].[AccountGroupWorkSite]
(
[AccountGroupWorkSiteId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountGroupId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InternalContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NumberOfFullTimeEmployees] [int] NULL,
[NumberOfPartTimeEmployees] [int] NULL,
[NumberOfCasualEmployees] [int] NULL,
[LastUpdatedTimestamp] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[AccountGroupWorkSite] ADD CONSTRAINT [PK_AccountGroupWorkSite] PRIMARY KEY CLUSTERED  ([AccountGroupWorkSiteId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Details of employers work sites ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer group/company group', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'AccountGroupId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer work site id', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'AccountGroupWorkSiteId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'InternalContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last date time the contact record has been updated /Sample Data :', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Site name', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number Of Casual Employees', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'NumberOfCasualEmployees'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number Of Full TimeEmployees', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'NumberOfFullTimeEmployees'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number Of PartTime Employees', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'NumberOfPartTimeEmployees'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountGroupWorkSite', 'COLUMN', N'State'
GO
