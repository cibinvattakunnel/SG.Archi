CREATE TABLE [CommonFormat].[Creditor] (
    [CreditorId]              VARCHAR (128)  NOT NULL,
    [Name]                    VARCHAR (128)  NOT NULL,
    [ABN]                     VARCHAR (128)  NULL,
    [PaymentMethod]           VARCHAR (128)  NULL,
    [PaymentRefFormat]        VARCHAR (128)  NULL,
    [PaymentConsolidation]    BIT            NOT NULL,
    [BankReference]           VARCHAR (128)  NULL,
    [ConsolidationRemittance] BIT            NOT NULL,
    [CreditorType]            VARCHAR (20)   NULL,
    [SuperUSI]                VARCHAR (128)  NULL,
    [FromDate]                DATETIME       NULL,
    [ToDate]                  DATETIME       NULL,
    [BankAccountName]         NVARCHAR (128) NULL,
    [BankBsb]                 NVARCHAR (128) NULL,
    [BankAccountNumber]       NVARCHAR (128) NULL,
    [LinkedCreditorId]        VARCHAR (128)  NULL,
    [JSON]                    NVARCHAR (MAX) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'List of shared/global creditor ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for creditor', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'CreditorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the creditor ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ABN', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'ABN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payment method credit accepts eg BPAY,EFT', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'PaymentMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reference for payments ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'PaymentRefFormat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Consolidate all payment', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'PaymentConsolidation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shows the bank reference number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'BankReference';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominate if the creditor would receive ONE or MULTIPLE remittance report if the creditor is "linked" to multiple benefits', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'ConsolidationRemittance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clearing house used ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'CreditorType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique Idenfifer for that super company in the clearing house', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'SuperUSI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start date ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'FromDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'End date ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'ToDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the bank account', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'BankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'BankBsb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The account number for the bank account', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'BankAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Parent creditor id where its linked to ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'LinkedCreditorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Any additional data in JSON format', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Creditor', @level2type = N'COLUMN', @level2name = N'JSON';

