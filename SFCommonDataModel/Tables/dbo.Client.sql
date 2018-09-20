CREATE TABLE [dbo].[Client]
(
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[Acquired] [datetime] NOT NULL,
[RegisteredName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[BusinessName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ABN] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[ACN] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Comments] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[Phone] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Fax] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[ContactAddress] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Suburb] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Postcode] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[State] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PostalAddress] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PostalSuburb] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PostalPostcode] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PostalState] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PayViaDirectDebit] [bit] NULL,
[InstitutionName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[BSBNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[AccountNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[AccountHolder(s)Name] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[AccountManager] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[PreviousName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DefaultDirectDebitDayofMonth] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Finance] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[E58Text] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client] ADD CONSTRAINT [PK__Client__E67E1A042E636FD4] PRIMARY KEY CLUSTERED  ([ClientID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'ABN', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'ABN'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Bank account name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'AccountHolder(s)Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Fleet West Account Manager Name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'AccountManager'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Bank account no', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'AccountNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ACN', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'ACN'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Fleet West Client Start Date', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Acquired'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Active'
GO
EXEC sp_addextendedproperty N'MS_Description', 'BSB No', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'BSBNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Business Trading As Name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'BusinessName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'ClientID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Comments', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Comments'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Contact Address', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'ContactAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Default Direct Debit Day of Month', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'DefaultDirectDebitDayofMonth'
GO
EXEC sp_addextendedproperty N'MS_Description', 'E58 Text', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'E58Text'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Fax', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Fax'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Finance Method', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Finance'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Bank name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'InstitutionName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'LastUpdatedTimeStamp'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Pay Via Direct Debit', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PayViaDirectDebit'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Phone', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Address', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PostalAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Postcode', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PostalPostcode'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal State', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PostalState'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Suburb', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PostalSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postcode', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Postcode'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Clients previous name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'PreviousName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Business Entity Name', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'RegisteredName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'State', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Suburb', 'SCHEMA', N'dbo', 'TABLE', N'Client', 'COLUMN', N'Suburb'
GO
