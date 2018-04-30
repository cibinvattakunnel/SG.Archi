CREATE TABLE [CommonFormat].[StringLookup] (
    [SourceCode]     NVARCHAR (128) NOT NULL,
    [SourceCodeName] NVARCHAR (128) NOT NULL,
    [CodeType]       NVARCHAR (128) NOT NULL,
    [TargetCode]     NVARCHAR (128) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup values from the source system.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'StringLookup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Code value in the source system /Sample Data : 7', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'StringLookup', @level2type = N'COLUMN', @level2name = N'SourceCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'User friendly name for the code in the source system /Sample Data : Fuel, Tyres', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'StringLookup', @level2type = N'COLUMN', @level2name = N'SourceCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Type of code lookup. Use the table qualified column name to allow cross referenceing. /Sample Data : NovatedVehicleTransaction.TransactionCategory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'StringLookup', @level2type = N'COLUMN', @level2name = N'CodeType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'StringLookup', @level2type = N'COLUMN', @level2name = N'TargetCode';

