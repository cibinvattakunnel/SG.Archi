CREATE TABLE [dbo].[Dealer]
(
[DealerID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[RegisteredName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DealerName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ABN] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[ACN] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[Phone] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[Fax] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ContactAddress] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Suburb] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[Postcode] [varchar] (4) COLLATE Latin1_General_CI_AS NOT NULL,
[State] [varchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalAddress] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalSuburb] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalPostcode] [varchar] (4) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalState] [varchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[ReferralFee] [decimal] (16, 2) NULL,
[Comments] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[Parent] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [PK__Dealer__CA2F8E92F4FDE004] PRIMARY KEY CLUSTERED  ([DealerID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'ABN', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'ABN'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ACN', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'ACN'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Comments', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Comments'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Contact Address', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'ContactAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Dealer', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DealerID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Dealer Trading As', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DealerName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Fax', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Fax'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Last date time the record has been updated ', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'LastUpdatedTimeStamp'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Dealer Parentl Group Name', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Parent'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Phone', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Address', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'PostalAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Postcode', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'PostalPostcode'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal State', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'PostalState'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postal Suburb', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'PostalSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Postcode', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Postcode'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Referral Fee', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'ReferralFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Dealer Business Entitiey Name', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'RegisteredName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'State', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Suburb', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'Suburb'
GO
