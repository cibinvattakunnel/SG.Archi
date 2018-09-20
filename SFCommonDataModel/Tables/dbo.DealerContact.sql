CREATE TABLE [dbo].[DealerContact]
(
[DealerContactId] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[DealerID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[DealerName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[FirstName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Surname] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Position] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Primary] [bit] NOT NULL,
[WorkNo] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[MobileNo] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[IsBillingContact] [bit] NOT NULL,
[IsDisposalContact] [bit] NOT NULL,
[IsSettlementContact] [bit] NOT NULL,
[IsBuy-BackagreementContact] [bit] NOT NULL,
[Comment] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DealerContact] ADD CONSTRAINT [PK__DealerCo__0128C422581A28CB] PRIMARY KEY CLUSTERED  ([DealerContactId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'Comment', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'Comment'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Dealer Contact', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'DealerContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Dealer', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'DealerID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Dealer Trading As', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'DealerName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'First Name', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Is Billing Contact(yes/no)', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'IsBillingContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Is Buy-Back agreement Contact(yes/no)', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'IsBuy-BackagreementContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Is Disposal Contact(yes/no)', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'IsDisposalContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Is Settlement Contact(yes/no)', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'IsSettlementContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'LastUpdatedTimeStamp'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Mobile No', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'MobileNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Position', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'Position'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Primary(yes/no)', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'Primary'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surname', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'Surname'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Work No', 'SCHEMA', N'dbo', 'TABLE', N'DealerContact', 'COLUMN', N'WorkNo'
GO
