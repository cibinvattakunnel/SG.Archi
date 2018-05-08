CREATE TABLE [CommonFormat].[AccountInvoiceCycle]
(
[AccountInvoiceCycleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Frequency] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastDeductionFileDate] [date] NOT NULL,
[LastDeductionFileCutOffDate] [date] NOT NULL,
[LastDeductionCashTransferDate] [date] NOT NULL,
[PaymentMethod] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankAccountOverrideName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountOverrideBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountOverrideBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountOverrideAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentIdentifier] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstPaymentDate] [date] NULL,
[LastPaymentDate] [date] NULL,
[NextDeductionDate] [date] NULL,
[PaymentDelayOffset] [bit] NULL,
[PaymentDelayOnceOff] [bit] NULL,
[PayrollFileFormat] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PermanentPaymentOffset] [int] NULL,
[OnceOffPaymentOffset] [int] NULL,
[PayrollExportGenerationDataOffset] [int] NULL,
[AllowAllBenefits] [bit] NULL,
[AllowMaximise] [bit] NULL,
[IsOriginalReceiptsRequired] [bit] NULL,
[AllowPackagePercentageOfIncomeOverride] [bit] NULL,
[AllowPermitAdminFeeMaximising] [bit] NULL,
[AllowNoFBTLimitOverride] [bit] NULL,
[AllowCasualsSalaryPackage] [bit] NULL,
[AllowAutoMaximiseFee] [bit] NULL,
[AllowAllowOverThreshold] [bit] NULL,
[MaxPackagePercentage] [int] NULL,
[MaxPackagePercentageCalculationType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InputTaxCreditCollectionType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AllowEmployerShare] [bit] NULL,
[EmployerSharePercentage] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsEmployerShareDoubleFee] [bit] NULL,
[AllowPermitDripFeed] [bit] NULL,
[DripFeedBufferAmount] [decimal] (16, 2) NULL,
[NovatedLeaseRestriction] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SmartLeasingCode] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VehicleNote] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPostTaxDeductionsAllowed] [bit] NULL,
[IsDefaultSetupEcm] [bit] NULL,
[IsDefaultSetupWithThreshold] [bit] NULL,
[IsPostTaxMethodFull] [bit] NULL,
[IsPostTaxMethodPartial] [bit] NULL,
[FleetCurrentProvider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FleetNumberOfCars] [int] NULL,
[FleetNote] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VehicleDefaultGrossTaxableValue] [int] NULL,
[IsPayrollUploadFile] [bit] NULL,
[IsAgreementMustBeSent] [bit] NULL,
[IsEmployeeSignOffRequired] [bit] NULL,
[IsPackageInternally] [bit] NULL,
[PayrollSystemUsed] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PackageLeaveEntitlementsOnTermination] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminationNote] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayrollNoFixedLength] [int] NULL,
[PaygroupLoyaltyProgram] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[AccountInvoiceCycle] ADD CONSTRAINT [PK_AccountInvoiceCycle] PRIMARY KEY CLUSTERED  ([AccountInvoiceCycleId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[AccountInvoiceCycle] ADD CONSTRAINT [FK__AccountIn__Accou__2180FB33] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Paycycle/Paygroup details
Data rows to include: Paycycle that have active vehicles/package
Data rows to exclude:Paycycle that are not in include and last updated date is > 7 yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Account', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Account Invoice Cycle ID', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AccountInvoiceCycleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag to allow all benefits for that paygroup', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowAllBenefits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if a package would have Allow over threshold override', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowAllowOverThreshold'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if a package can maximise admin fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowAutoMaximiseFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if casuals can salary package', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowCasualsSalaryPackage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if there is an Employer Share arrangement', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowEmployerShare'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if employee can maximise.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowMaximise'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if a package would have the No FBT limit override', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowNoFBTLimitOverride'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if a package would have a % of income override', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowPackagePercentageOfIncomeOverride'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if a package can maximise admin fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowPermitAdminFeeMaximising'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to nominate if this Employer is of "drip-feed" type (eg. Release funds only upon receival of substantiation)', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'AllowPermitDripFeed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank Account Override AccountNumber', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'BankAccountOverrideAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank Account Override Bank', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'BankAccountOverrideBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank Account Override BSB', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'BankAccountOverrideBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Specific bank account for this payroll cycle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'BankAccountOverrideName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominates the $ amount up to which substantitation is not required', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'DripFeedBufferAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominates the % of the Employer Share arrangement', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'EmployerSharePercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Paygroup''s first payment date.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'FirstPaymentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current fleet provider', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'FleetCurrentProvider'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Note regarding fleet', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'FleetNote'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fleet car numbers', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'FleetNumberOfCars'
GO
EXEC sp_addextendedproperty N'MS_Description', N' Payment Frequency', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'Frequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominates for which benefits ITC is required to be collected', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'InputTaxCreditCollectionType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field records if an agreement  needs to be sent; the field does not have an impact on any system function sent to payroll. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsAgreementMustBeSent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag to nominate if default setup method', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsDefaultSetupEcm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag to nominate if default setup with Threshold', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsDefaultSetupWithThreshold'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field records if an employee need to sign off; the field does not have an impact on any system function sent to payroll. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsEmployeeSignOffRequired'
GO
EXEC sp_addextendedproperty N'MS_Description', N'if ticked, the Employer is paying a portion of the employees admin fee via the Employer Share amount.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsEmployerShareDoubleFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox to remind operator if, for physical documentation has been received for holiday/accomodation type benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsOriginalReceiptsRequired'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field allows a user to record if an employer does some salary packaging by themselves ; the field does not have an impact on any system function but allows a user to note an employee can exceed their FBT threshold even the system does not show it.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsPackageInternally'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field records if an employer upload their payrol files through portal ( eg. not through email.) the field does not have an impact on any system function', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsPayrollUploadFile'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Checkbox  to nominate if employer allow post tax deductions for vehicles', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsPostTaxDeductionsAllowed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag to nominate default Vechicle post tax method Full', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsPostTaxMethodFull'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag to nominate default Vechicle post tax method Partial', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'IsPostTaxMethodPartial'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Once the deductions file is uploaded into the packaging system, when is the cash to be transferred. Eg: once we get the deductions file when can the system direct debit the target bank account ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'LastDeductionCashTransferDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last time the deductions file was sent, what was the cut off date of what vehicles were included. Ie: if the LastDeductionsFileDate = 15/3/2017 LastDeductionsFileCutOffDate =14/3/2017. This means that any leases settled on the 15/3/2017 would not be included in that file', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'LastDeductionFileCutOffDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last time the deductions file was sent to the employer', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'LastDeductionFileDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date as to when the paygroup was last paid.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'LastPaymentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominates a % figure to which an employee''s salary can be packaged.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'MaxPackagePercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nominate items that will be calculated as part of the "Max Package %" rule', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'MaxPackagePercentageCalculationType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Paycycle description ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Paygroup''s next payment date calculate on paycycle.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'NextDeductionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Novated Lease Restriction table if any', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'NovatedLeaseRestriction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Once of offset for payment day. This take precidance over PermanatPaymentOffset', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'OnceOffPaymentOffset'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field allows a user if an employee can use their leave entitlements for packaging benefits on Termination ; the field does not have an impact on any system function. /Sample Data : No,Yes,Unsure', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PackageLeaveEntitlementsOnTermination'
GO
EXEC sp_addextendedproperty N'MS_Description', N'/Sample data : No,All Employees,Cardholder only,Card holder & Requested', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PaygroupLoyaltyProgram'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow payment delay offset', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PaymentDelayOffset'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow payment delay once off', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PaymentDelayOnceOff'
GO
EXEC sp_addextendedproperty N'MS_Description', N'User preferred specification for payment files eg ABA Identifier ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PaymentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Direct Debit, EFT,Payroll Deduction', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PaymentMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Payroll Export data generation offset', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PayrollExportGenerationDataOffset'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Payroll system name used upload deduction file ', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PayrollFileFormat'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Phoenix system will adjust the payroll ID to max digits by inserting 0 before numbers', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PayrollNoFixedLength'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field allows a user to record which payroll system an employer is using; the field does not have an impact on any system function.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PayrollSystemUsed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Permanent offset for payment day', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'PermanentPaymentOffset'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Smart leasing code which identifies the employer in the SMART leasing system', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'SmartLeasingCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field allows a user leave a note about if an employee can use their leave entitlements for packaging benefit on Termination ; the field does not have an impact on any system function.', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'TerminationNote'
GO
EXEC sp_addextendedproperty N'MS_Description', N'default gross taxable value', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'VehicleDefaultGrossTaxableValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Additional notes or explanations of the vehicle restrictions', 'SCHEMA', N'CommonFormat', 'TABLE', N'AccountInvoiceCycle', 'COLUMN', N'VehicleNote'
GO
