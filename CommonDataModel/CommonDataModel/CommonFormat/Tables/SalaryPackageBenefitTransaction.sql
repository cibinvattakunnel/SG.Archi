CREATE TABLE [CommonFormat].[SalaryPackageBenefitTransaction] (
    [SalaryPackageBenefitTransactionId] NVARCHAR (128)  NOT NULL,
    [SalaryPackageBenefitId]            NVARCHAR (128)  NOT NULL,
    [TransactionDate]                   DATE            NOT NULL,
    [CreateDate]                        DATE            NOT NULL,
    [Description]                       NVARCHAR (128)  NOT NULL,
    [TransactionCategory]               NVARCHAR (128)  NOT NULL,
    [TransactionStatus]                 NVARCHAR (128)  NULL,
    [PaymentDate]                       NVARCHAR (128)  NULL,
    [PaymentBSB]                        NVARCHAR (128)  NULL,
    [PaymentAccountNumber]              NVARCHAR (128)  NULL,
    [CreditorName]                      NVARCHAR (128)  NULL,
    [CreditorABN]                       NVARCHAR (128)  NULL,
    [FromDate]                          DATE            NULL,
    [ToDate]                            DATE            NULL,
    [AmountExGst]                       DECIMAL (18, 4) NOT NULL,
    [AmountGst]                         DECIMAL (18, 4) NOT NULL,
    [SupplierId]                        NVARCHAR (128)  NULL,
    [LastUpdatedTimestamp]              DATETIME        NULL,
    CONSTRAINT [PK_BenefitTransaction] PRIMARY KEY CLUSTERED ([SalaryPackageBenefitTransactionId] ASC),
    FOREIGN KEY ([SalaryPackageBenefitId]) REFERENCES [CommonFormat].[SalaryPackageBenefit] ([SalaryPackageBenefitId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Benefit transactions. This includes all employer deductions and payment.
Data rows to include:Benefit which have been active in the past 7yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Package Transaction ID ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitTransactionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Benefit ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the transaction is related to. Eg: if the employee pays for super,mortgage on the 15/6/2017 then this date would be included in this field ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'TransactionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date that the transaction was created in the source system. ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Text description of this transaction (eg payment ,deduction)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Category of the transaction   Sample Data :Fuel, Pretax, Post tax, insurance refund ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'TransactionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Status of the transaction  Sample Data :Paid, Unpaid, payment in progres….. ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'TransactionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date payment occurred ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'PaymentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Target/Source bank account BSB  ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'PaymentBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Target/Source bank account Account Number ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'PaymentAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the merchant ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'CreditorName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ABN of the merchant ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'CreditorABN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'From date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'FromDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'To date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'ToDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Amount exgst ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'AmountExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Amount gst  ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'AmountGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique identifier of the transaction as provided by the supplier ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'SupplierId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the BenefitTransaction record was last updated in the source system ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitTransaction', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';

