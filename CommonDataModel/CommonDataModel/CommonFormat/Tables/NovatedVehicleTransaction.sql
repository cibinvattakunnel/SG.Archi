CREATE TABLE [CommonFormat].[NovatedVehicleTransaction] (
    [NovatedVehicleTransactionId] NVARCHAR (128)  NOT NULL,
    [NovatedVehicleId]            NVARCHAR (128)  NOT NULL,
    [TransactionDate]             DATE            NOT NULL,
    [CreateDate]                  DATE            NOT NULL,
    [Description]                 NVARCHAR (128)  NOT NULL,
    [TransactionCategory]         NVARCHAR (128)  NOT NULL,
    [OdoReading]                  NVARCHAR (128)  NULL,
    [TransactionStatus]           NVARCHAR (128)  NULL,
    [PaymentDate]                 NVARCHAR (128)  NULL,
    [PaymentBSB]                  NVARCHAR (128)  NULL,
    [PaymentAccountNumber]        NVARCHAR (128)  NULL,
    [MerchantName]                NVARCHAR (128)  NULL,
    [MerchantABN]                 NVARCHAR (128)  NULL,
    [FromDate]                    DATE            NULL,
    [ToDate]                      DATE            NULL,
    [Litres]                      DECIMAL (18, 4) NULL,
    [AmountExGst]                 DECIMAL (18, 4) NOT NULL,
    [AmountGst]                   DECIMAL (18, 4) NOT NULL,
    [SupplierId]                  NVARCHAR (128)  NULL,
    [SupplierAccountId]           NVARCHAR (128)  NULL,
    [LastUpdatedTimestamp]        DATETIME        NULL,
    CONSTRAINT [PK_NovatedVehicleTransaction] PRIMARY KEY CLUSTERED ([NovatedVehicleTransactionId] ASC),
    FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description: Novated vehicle transactions. This includes all employer deductions, reimbursements, fuel servicing fees.
Data rows to include:Novated transactions for vehicles which were active the the past 7 yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle Transaction ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'NovatedVehicleTransactionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the transaction is related to. Eg: if the driver pays for fuel on the 15/6/2017 then this date would be included in this field /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'TransactionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date that the transaction was created in the source system. Ie: if the driver fills up fuel on the 15/6/2017 and the fuel supplier provides the transaction listing to the source system and it is loaded on 2/7/2017 then the 2/7/2017 would be in this field /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Text description of this transaction /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Category of the transaction  /Sample Data : Fuel, Pretax, Post tax, insurance refund', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'TransactionCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Odometer reading at the time of the transaction /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'OdoReading';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Status of the transaction /Sample Data : Paid, Unpaid, payment in progres…..', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'TransactionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date payment occurred /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'PaymentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Target/Source bank account BSB /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'PaymentBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Target/Source bank account Account Number /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'PaymentAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the merchant /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'MerchantName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ABN of the merchant /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'MerchantABN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'From date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'FromDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'To date if the transaction applies to a date range. Eg: insurance would have a from and to date of coverage /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'ToDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Litres of fuel /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'Litres';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Amount exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'AmountExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Amount gst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'AmountGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique identifier of the transaction as provided by the supplier /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'SupplierId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Supplier account id eg fuel card ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'SupplierAccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the NovatedVehicleTransaction record was last updated in the source system /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleTransaction', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';

