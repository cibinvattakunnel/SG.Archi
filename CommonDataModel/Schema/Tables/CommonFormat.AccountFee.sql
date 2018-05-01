CREATE TABLE [CommonFormat].[AccountFee]
(
[AccountFeeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountInvoiceCycleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FeeName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeeType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeeFrequency] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeeAmountPerPay] [decimal] (16, 2) NULL,
[FeeAmountPerAnnum] [decimal] (16, 2) NULL,
[FeeAmountPercent] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedTimestamp] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[AccountFee] ADD CONSTRAINT [PK_AccountFee] PRIMARY KEY CLUSTERED  ([AccountFeeId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Details of employer/paygroup fee ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for fees', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'AccountFeeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Account Invoice Cycle ID', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'AccountInvoiceCycleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fee amount per annum', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeAmountPerAnnum'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fee amount percent', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeAmountPercent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Per pay fee amount ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeAmountPerPay'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FeeFrequency /Sample Data :Per PayCycle,Annual,Per claim,Upfront', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeFrequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N' Fee name /Sample Data : Admin Fee,Novated lease fee,westpac card,HA fee etc..', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fee type /Sample Data:Admin Fee,HA Fee,WP Fee,Other Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'FeeType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last date time the contact record has been updated /Sample Data :', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountFee', 'COLUMN', N'LastUpdatedTimestamp'
GO
