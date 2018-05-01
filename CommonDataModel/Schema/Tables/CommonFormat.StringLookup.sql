CREATE TABLE [CommonFormat].[StringLookup]
(
[SourceCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SourceCodeName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodeType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TargetCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup values from the source system.', 'SCHEMA', N'CommonFormat', 'TABLE', N'StringLookup', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of code lookup. Use the table qualified column name to allow cross referenceing. /Sample Data : NovatedVehicleTransaction.TransactionCategory', 'SCHEMA', N'CommonFormat', 'TABLE', N'StringLookup', 'COLUMN', N'CodeType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Code value in the source system /Sample Data : 7', 'SCHEMA', N'CommonFormat', 'TABLE', N'StringLookup', 'COLUMN', N'SourceCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'User friendly name for the code in the source system /Sample Data : Fuel, Tyres', 'SCHEMA', N'CommonFormat', 'TABLE', N'StringLookup', 'COLUMN', N'SourceCodeName'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'StringLookup', 'COLUMN', N'TargetCode'
GO
