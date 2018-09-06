CREATE TABLE [CommonFormat].[Account]
(
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABN] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACN] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentAccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrimaryContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CanSellNovated] [bit] NOT NULL,
[RelationshipStatus] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Website] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressStreet] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressSuburb] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressPostCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MailingAddressStreet] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailingAddressSuburb] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailingAddressState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailingAddressPostCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NumberOfEmployees] [int] NULL,
[NumberOfEligibleEmployees] [int] NULL,
[AgreementTerms] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AgreementStart] [date] NULL,
[AgreementEnd] [date] NULL,
[BankAccountCreditName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UseCustomTemplate] [bit] NULL,
[DefaultFBTCalculationMethod] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GSTRebate] [decimal] (18, 4) NULL,
[DefaultPackageTermInMonths] [decimal] (18, 4) NULL,
[AllowStatutoryFBVMethod] [bit] NULL,
[AllowOpCostFBVMethod] [bit] NULL,
[AllowExemptBenefitFBVMethod] [bit] NULL,
[NonDeductibleCalculationMethod] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultInsurer] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultSuperannuation] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultPayrollFrequency] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnLeaseProtection] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnSmartMembership] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnExtendedWarranty] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnGapCover] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnResidualProtection] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAddOnTyreWheelInsurance] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MonthlyManagementFee] [decimal] (18, 4) NULL,
[MonthlyAdministrationFee] [decimal] (18, 4) NULL,
[MonthlyReportingFee] [decimal] (18, 4) NULL,
[MarginNewSetupFee] [decimal] (18, 4) NULL,
[MarginRenovationFee] [decimal] (18, 4) NULL,
[MarginExternalFinancierSetupFee] [decimal] (18, 4) NULL,
[MarginFinanceMargin] [decimal] (18, 4) NULL,
[MarginFinanceInterestRateDiscount] [decimal] (18, 4) NULL,
[InvoiceEmployeeContributionSeparately] [bit] NULL,
[InvoiceLuxuryNonDeductibleSeparately] [bit] NULL,
[InvoiceLuxuryDisposalSeparately] [bit] NULL,
[AllowLuxuryVehicles] [bit] NULL,
[DefaultLuxuryVehicleDepreciationMethod] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedTimestamp] [datetime] NULL,
[AccountGroupId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountGroupName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BusinessSectorName] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BusinessCategoryName] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GstProcessingMethod] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AgreementExtensionEndDate] [date] NULL,
[AgreementRollover] [bit] NULL,
[AccountTerminatedDate] [date] NULL,
[TransferredSource] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransferredDate] [date] NULL,
[LeaseType] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AllowDaysUnavailble] [bit] NULL,
[DaysUnavailablePolicy] [varchar] (258) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NovatedLeaseProvider] [varchar] (258) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperatingCostMethodPercentage] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CollectContributionGst] [bit] NULL,
[AllowCasualEmployee] [bit] NULL,
[FBTTreatment] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FBTRemittanceFreq] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isBPayAllowed] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Account] ADD CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED  ([AccountId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Account] ADD CONSTRAINT [Account_AccountGroupId_FK] FOREIGN KEY ([AccountGroupId]) REFERENCES [CommonFormat].[AccountGroup] ([AccountGroupId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Details of employers/company/partner/supplier
Data rows to include:Accounts that have active vehicles
Data rows to exclude:Employer that are not in include and last updated date is > 7 yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'ABN', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'ABN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer group/company group', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AccountGroupId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system description for employer group/company group', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AccountGroupName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Account terminated Date', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AccountTerminatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ACN', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'ACN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address PostCode', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AddressPostCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Suburb', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AddressState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Street', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AddressStreet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Suburb', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AddressSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End date of the contract ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AgreementEnd'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Agreement Extension Date', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AgreementExtensionEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has contract rollover ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AgreementRollover'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date of the contract ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AgreementStart'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Agreement terms with the employer /Sample Data : Exclusive, Panel', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AgreementTerms'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Casuals allowed to package or not ; Yes/No', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowCasualEmployee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Yes/No', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowDaysUnavailble'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow Exempt Benefit FBV calculation method on novated lease in employer', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowExemptBenefitFBVMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Invoice Luxury Disposal Separately', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowLuxuryVehicles'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow Operating Cost FBV calculation method on novated lease in employer ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowOpCostFBVMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow Statutory FBV calculation method on novated lease in employer ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'AllowStatutoryFBVMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account number which the system can credit funds to /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountCreditAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank name which the system can credit funds to /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountCreditBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB which the system can credit funds to /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountCreditBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account name which the system can credit funds to. Eg: credit notes /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountCreditName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account number which the system can direct debit funds from /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountDebitAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank name which the system can direct debit funds from /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountDebitBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB which the system can direct debit funds from /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountDebitBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account name which the system can direct debit funds from. Eg: scheduled invoices /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BankAccountDebitName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business Category Name Eg: Health/Hospital,Education,Research etc', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BusinessCategoryName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business Sector Name Eg: Charity,Health', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'BusinessSectorName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Is the account setup to allow the initiation of a new novated vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'CanSellNovated'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employer collect contribution gst eg:Yes/No', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'CollectContributionGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Days unavailable policy allowed by employer /Sample data :
Vehicle in workshop undergoing repairs ,               
Vehicle locked at my employers premises and keys left with my employer,  
Vehicle locked at a safe storage away from my place of residence, and keys left with my employer,             
Vehicle in workshop undergoing repairs (you will need to provide substantiation such as receipt from workshop showing car drop off and pick up time) ,               
Tax Free Zone', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DaysUnavailablePolicy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default Extended Warranty membership on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnExtendedWarranty'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default GAP on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnGapCover'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default LPI on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnLeaseProtection'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default Residual Protection on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnResidualProtection'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default Smart membership on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnSmartMembership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default Tyre and Wheel Insurance on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultAddOnTyreWheelInsurance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default FBT calculation method /Sample Data : FBT, Employee Contribution', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultFBTCalculationMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default insurer for novated leases in company /Sample Data : Autopia Fleet, Client sourced insurance, No insurance budget', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultInsurer'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default Luxury Vehicle Depreciation Method', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultLuxuryVehicleDepreciationMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default term for novated lease /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultPackageTermInMonths'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default payroll frequency for employees in the company /Sample Data : Weekly, Fortnightly, Monthly', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultPayrollFrequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Superannuation calculation used when salary is reduced /Sample Data : Fixed, Reducible', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'DefaultSuperannuation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'If the FBT Treatment = ''Sal Pack Held'' then must choose one of the 3 values. /Sample data :Quarterly, Half Yearly, Annually', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'FBTRemittanceFreq'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default treatment for the employer, however each package can override this treatment. /Sample data :No FBT,Employer Held,Sal Pack Held', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'FBTTreatment'
GO
EXEC sp_addextendedproperty N'MS_Description', N'GST processing method. when on Net employer pays GST when Gross employee pays gst {options Net/Gross}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'GstProcessingMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'How much of the GST rebate is passed onto the employee /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'GSTRebate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Invoice Employee Contribution Separately', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'InvoiceEmployeeContributionSeparately'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Invoice Luxury Disposal Separately', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'InvoiceLuxuryDisposalSeparately'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Invoice Luxury Non Deductible Separately', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'InvoiceLuxuryNonDeductibleSeparately'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow BPay payments ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'isBPayAllowed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last date time the account/employer record has been updated ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allowed lease type eg : Novated ,Associated,Both', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'LeaseType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mailing Address PostCode', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MailingAddressPostCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mailing Address State', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MailingAddressState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mailing Address Street', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MailingAddressStreet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mailing Address Suburb', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MailingAddressSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Margin External Financier Setup Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MarginExternalFinancierSetupFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Margin Finance Interest Rate Discount', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MarginFinanceInterestRateDiscount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Margin Finance Margin', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MarginFinanceMargin'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Margin New Setup Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MarginNewSetupFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Margin Renovation Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MarginRenovationFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N' Monthly administration fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MonthlyAdministrationFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Monthly vechile Management Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MonthlyManagementFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Monthly Reporting Fee', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'MonthlyReportingFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of employer/company /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Luxury Lease Calculation method to be used for luxury leases in the employer /Sample Data : Use Employee Contribution, No employee contribution', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'NonDeductibleCalculationMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'List of lease providers used by source ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'NovatedLeaseProvider'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total number of employees that are eligible to package a vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'NumberOfEligibleEmployees'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total number of employees in the employer /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'NumberOfEmployees'
GO
EXEC sp_addextendedproperty N'MS_Description', N'What is the maximum business use % allowed if employer allows operating cost method', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'OperatingCostMethodPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for parent employer/company ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'ParentAccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Phone Number', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'PhoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'PrimaryContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relationship Status', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'RelationshipStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Transferred date', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'TransferredDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Account source ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'TransferredSource'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Does the employer have specific pricing and setup which is different from the default employer setup. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'UseCustomTemplate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Website', 'SCHEMA', N'CommonFormat', 'TABLE', N'Account', 'COLUMN', N'Website'
GO
