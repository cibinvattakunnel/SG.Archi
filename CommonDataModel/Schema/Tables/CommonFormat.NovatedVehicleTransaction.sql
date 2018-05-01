CREATE TABLE [CommonFormat].[NovatedVehicleTransaction]
(
[NovatedVehicleTransactionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionDate] [date] NOT NULL,
[CreateDate] [date] NOT NULL,
[Description] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionCategory] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OdoReading] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransactionStatus] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentDate] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchantName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchantABN] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromDate] [date] NULL,
[ToDate] [date] NULL,
[Litres] [decimal] (18, 4) NULL,
[AmountExGst] [decimal] (18, 4) NOT NULL,
[AmountGst] [decimal] (18, 4) NOT NULL,
[SupplierId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SupplierAccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleTransaction] ADD CONSTRAINT [PK_NovatedVehicleTransaction] PRIMARY KEY CLUSTERED  ([NovatedVehicleTransactionId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleTransaction] ADD CONSTRAINT [FK__NovatedVe__Novat__4E88ABD4] FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Description: Novated vehicle transactions. This includes all employer deductions, reimbursements, fuel servicing fees.
Data rows to include:Novated transactions for vehicles which were active the the past 7 yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'AmountExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount gst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'AmountGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date that the transaction was created in the source system. Ie: if the driver fills up fuel on the 15/6/2017 and the fuel supplier provides the transaction listing to the source system and it is loaded on 2/7/2017 then the 2/7/2017 would be in this field /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Text description of this transaction /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'From date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'FromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the NovatedVehicleTransaction record was last updated in the source system /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Litres of fuel /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'Litres'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ABN of the merchant /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'MerchantABN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the merchant /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'MerchantName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle Transaction ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'NovatedVehicleTransactionId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Odometer reading at the time of the transaction /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'OdoReading'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Target/Source bank account Account Number /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'PaymentAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Target/Source bank account BSB /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'PaymentBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date payment occurred /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'PaymentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Supplier account id eg fuel card ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'SupplierAccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique identifier of the transaction as provided by the supplier /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'SupplierId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'To date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'ToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category of the transaction  /Sample Data : Fuel, Pretax, Post tax, insurance refund', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'TransactionCategory'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the transaction is related to. Eg: if the driver pays for fuel on the 15/6/2017 then this date would be included in this field /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'TransactionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Status of the transaction /Sample Data : Paid, Unpaid, payment in progres…..', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleTransaction', 'COLUMN', N'TransactionStatus'
GO
