CREATE TABLE [CommonFormat].[Creditor]
(
[CreditorId] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABN] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentMethod] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentRefFormat] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentConsolidation] [bit] NOT NULL,
[BankReference] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ConsolidationRemittance] [bit] NOT NULL,
[CreditorType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SuperUSI] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromDate] [datetime] NULL,
[ToDate] [datetime] NULL,
[BankAccountName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankBsb] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LinkedCreditorId] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'List of shared/global creditor ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Government ABN Identifier of the creditor', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'ABN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the bank account', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'BankAccountName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The account number for the bank account', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'BankAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB number', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'BankBsb'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shows the bank reference number', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'BankReference'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominate if the creditor would receive ONE or MULTIPLE remittance report if the creditor is "linked" to multiple benefits', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'ConsolidationRemittance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for creditor', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'CreditorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sample Data /:Superannuation,Clearing House,Revenue Account,Westpac Card Account,Smartleasing etc ..', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'CreditorType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'FromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Parent creditor id where its linked to ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'LinkedCreditorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the creditor ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominates if payments made towards this creditor should be grouped, at an Employer level', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'PaymentConsolidation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Payment method credit accepts eg BPAY,EFT', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'PaymentMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reference for payments Sample data :{"Format":"Macquarie Leasing","Regex":"(\d{3}-\d{7}-\d{3})|(^EAN\d{7})|(^IAN\d{7})|(^ELN\d{7})"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'PaymentRefFormat'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique Idenfifer for that super company in the clearing house', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'SuperUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End date ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Creditor', 'COLUMN', N'ToDate'
GO
