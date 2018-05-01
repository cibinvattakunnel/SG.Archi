CREATE TABLE [CommonFormat].[SalaryPackageBenefitTransaction]
(
[SalaryPackageBenefitTransactionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalaryPackageBenefitId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionDate] [date] NOT NULL,
[CreateDate] [date] NOT NULL,
[Description] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionCategory] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionStatus] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentDate] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditorName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditorABN] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromDate] [date] NULL,
[ToDate] [date] NULL,
[AmountExGst] [decimal] (18, 4) NOT NULL,
[AmountGst] [decimal] (18, 4) NOT NULL,
[SupplierId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageBenefitTransaction] ADD CONSTRAINT [PK_BenefitTransaction] PRIMARY KEY CLUSTERED  ([SalaryPackageBenefitTransactionId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageBenefitTransaction] ADD CONSTRAINT [FK__SalaryPac__Salar__3493CFA7] FOREIGN KEY ([SalaryPackageBenefitId]) REFERENCES [CommonFormat].[SalaryPackageBenefit] ([SalaryPackageBenefitId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Benefit transactions. This includes all employer deductions and payment.
Data rows to include:Benefit which have been active in the past 7yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount exgst ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'AmountExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount gst  ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'AmountGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date that the transaction was created in the source system. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ABN of the merchant ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'CreditorABN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the merchant ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'CreditorName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Text description of this transaction (eg payment ,deduction)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'From date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'FromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the BenefitTransaction record was last updated in the source system ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Target/Source bank account Account Number ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'PaymentAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Target/Source bank account BSB  ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'PaymentBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date payment occurred ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'PaymentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Benefit ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'SalaryPackageBenefitId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Package Transaction ID ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'SalaryPackageBenefitTransactionId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique identifier of the transaction as provided by the supplier ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'SupplierId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'To date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'ToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category of the transaction   Sample Data :Fuel, Pretax, Post tax, insurance refund ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'TransactionCategory'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the transaction is related to. Eg: if the employee pays for super,mortgage on the 15/6/2017 then this date would be included in this field ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'TransactionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Status of the transaction  Sample Data :Paid, Unpaid, payment in progres….. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitTransaction', 'COLUMN', N'TransactionStatus'
GO
