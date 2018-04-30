CREATE TABLE [CommonFormat].[AccountInvoiceCycle] (
    [AccountInvoiceCycleId]                  NVARCHAR (128)  NOT NULL,
    [AccountId]                              NVARCHAR (128)  NOT NULL,
    [Name]                                   NVARCHAR (128)  NOT NULL,
    [Frequency]                              NVARCHAR (128)  NOT NULL,
    [LastDeductionFileDate]                  DATE            NOT NULL,
    [LastDeductionFileCutOffDate]            DATE            NOT NULL,
    [LastDeductionCashTransferDate]          DATE            NOT NULL,
    [PaymentMethod]                          NVARCHAR (128)  NOT NULL,
    [BankAccountOverrideName]                NVARCHAR (128)  NULL,
    [BankAccountOverrideBank]                NVARCHAR (128)  NULL,
    [BankAccountOverrideBSB]                 NVARCHAR (128)  NULL,
    [BankAccountOverrideAccountNumber]       NVARCHAR (128)  NULL,
    [PaymentIdentifier]                      VARCHAR (128)   NULL,
    [FirstPaymentDate]                       DATE            NULL,
    [LastPaymentDate]                        DATE            NULL,
    [NextDeductionDate]                      DATE            NULL,
    [PaymentDelayOffset]                     BIT             NULL,
    [PaymentDelayOnceOff]                    BIT             NULL,
    [PayrollFileFormat]                      NVARCHAR (256)  NULL,
    [PermanentPaymentOffset]                 INT             NULL,
    [OnceOffPaymentOffset]                   INT             NULL,
    [PayrollExportGenerationDataOffset]      INT             NULL,
    [AllowAllBenefits]                       BIT             NULL,
    [AllowMaximise]                          BIT             NULL,
    [IsOriginalReceiptsRequired]             BIT             NULL,
    [AllowPackagePercentageOfIncomeOverride] BIT             NULL,
    [AllowPermitAdminFeeMaximising]          BIT             NULL,
    [AllowNoFBTLimitOverride]                BIT             NULL,
    [AllowCasualsSalaryPackage]              BIT             NULL,
    [AllowAutoMaximiseFee]                   BIT             NULL,
    [AllowAllowOverThreshold]                BIT             NULL,
    [MaxPackagePercentage]                   INT             NULL,
    [MaxPackagePercentageCalculationType]    INT             NULL,
    [InputTaxCreditCollectionType]           INT             NULL,
    [AllowEmployerShare]                     BIT             NULL,
    [EmployerSharePercentage]                INT             NULL,
    [IsEmployerShareDoubleFee]               BIT             NULL,
    [AllowPermitDripFeed]                    BIT             NULL,
    [DripFeedBufferAmount]                   DECIMAL (16, 2) NULL,
    [NovatedLeaseRestriction]                INT             NULL,
    [SmartLeasingCode]                       VARCHAR (12)    NULL,
    [VehicleNote]                            VARCHAR (250)   NULL,
    [IsPostTaxDeductionsAllowed]             BIT             NULL,
    [IsDefaultSetupEcm]                      BIT             NULL,
    [IsDefaultSetupWithThreshold]            BIT             NULL,
    [IsPostTaxMethodFull]                    BIT             NULL,
    [IsPostTaxMethodPartial]                 BIT             NULL,
    [FleetCurrentProvider]                   VARCHAR (50)    NULL,
    [FleetNumberOfCars]                      INT             NULL,
    [FleetNote]                              VARCHAR (250)   NULL,
    [VehicleDefaultGrossTaxableValue]        INT             NULL,
    [JSON]                                   NVARCHAR (MAX)  NULL,
    [FeeName]                                NVARCHAR (128)  NULL,
    [FeeType]                                NVARCHAR (128)  NULL,
    [FeeFrequency]                           NVARCHAR (128)  NULL,
    [FeeAmountPerPay]                        DECIMAL (16, 2) NULL,
    [FeeAmountPerAnnum]                      DECIMAL (16, 2) NULL,
    [FeeAmountPercent]                       NVARCHAR (128)  NULL,
    CONSTRAINT [PK_AccountInvoiceCycle] PRIMARY KEY CLUSTERED ([AccountInvoiceCycleId] ASC),
    FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Paycycle/Paygroup details
Data rows to include: Paycycle that have active vehicles/package
Data rows to exclude:Paycycle that are not in include and last updated date is > 7 yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Account Invoice Cycle ID', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AccountInvoiceCycleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Account', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Paycycle description ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' Payment Frequency', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'Frequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last time the deductions file was sent to the employer', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'LastDeductionFileDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last time the deductions file was sent, what was the cut off date of what vehicles were included. Ie: if the LastDeductionsFileDate = 15/3/2017 LastDeductionsFileCutOffDate =14/3/2017. This means that any leases settled on the 15/3/2017 would not be included in that file', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'LastDeductionFileCutOffDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Once the deductions file is uploaded into the packaging system, when is the cash to be transferred. Eg: once we get the deductions file when can the system direct debit the target bank account ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'LastDeductionCashTransferDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Direct Debit, EFT,Payroll Deduction', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PaymentMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specific bank account for this payroll cycle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'BankAccountOverrideName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank Account Override Bank', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'BankAccountOverrideBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank Account Override BSB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'BankAccountOverrideBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank Account Override AccountNumber', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'BankAccountOverrideAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'User preferred specification for payment files eg ABA Identifier ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PaymentIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First Payment Date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'FirstPaymentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last Payment Date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'LastPaymentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next Deduction Date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'NextDeductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payment Delay Offset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PaymentDelayOffset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payment Delay Once Off', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PaymentDelayOnceOff';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payroll system name used upload deduction file ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PayrollFileFormat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Permanent offset for payment day', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PermanentPaymentOffset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Once of offset for payment day. This take precidance over PermanatPaymentOffset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'OnceOffPaymentOffset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payroll Export data generation offset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'PayrollExportGenerationDataOffset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Flag to allow all benefits for that paygroup', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowAllBenefits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if employee can maximise.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowMaximise';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to remind operator if, for physical documentation has been received for holiday/accomodation type benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'IsOriginalReceiptsRequired';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if a package would have a % of income override', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowPackagePercentageOfIncomeOverride';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if a package can maximise admin fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowPermitAdminFeeMaximising';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if a package would have the No FBT limit override', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowNoFBTLimitOverride';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if casuals can salary package', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowCasualsSalaryPackage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if a package can maximise admin fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowAutoMaximiseFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if a package would have Allow over threshold override', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowAllowOverThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominates a % figure to which an employee''s salary can be packaged.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'MaxPackagePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominate items that will be calculated as part of the "Max Package %" rule', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'MaxPackagePercentageCalculationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominates for which benefits ITC is required to be collected', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'InputTaxCreditCollectionType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if there is an Employer Share arrangement', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowEmployerShare';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominates the % of the Employer Share arrangement', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'EmployerSharePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'if ticked, the Employer is paying a portion of the employees admin fee via the Employer Share amount.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'IsEmployerShareDoubleFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox to nominate if this Employer is of "drip-feed" type (eg. Release funds only upon receival of substantiation)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'AllowPermitDripFeed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nominates the $ amount up to which substantitation is not required', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'DripFeedBufferAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key relationship to Novated Lease Restriction table', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'NovatedLeaseRestriction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The Smart leasing code which identifies the employer in the leasing system', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'SmartLeasingCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Additional notes or explanations of the vehicle restrictions', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'VehicleNote';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checkbox  to nominate if employer allow post tax deductions for vehicles', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountInvoiceCycle', @level2type = N'COLUMN', @level2name = N'IsPostTaxDeductionsAllowed';

