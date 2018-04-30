CREATE TABLE [CommonFormat].[Account] (
    [AccountId]                              NVARCHAR (128)  NOT NULL,
    [Name]                                   NVARCHAR (128)  NOT NULL,
    [ABN]                                    NVARCHAR (128)  NOT NULL,
    [ACN]                                    NVARCHAR (128)  NULL,
    [ParentAccountId]                        NVARCHAR (128)  NULL,
    [PrimaryContactId]                       NVARCHAR (128)  NULL,
    [CanSellNovated]                         BIT             NOT NULL,
    [RelationshipStatus]                     NVARCHAR (36)   NULL,
    [PhoneNumber]                            NVARCHAR (128)  NOT NULL,
    [Website]                                NVARCHAR (128)  NOT NULL,
    [AddressStreet]                          NVARCHAR (128)  NOT NULL,
    [AddressSuburb]                          NVARCHAR (128)  NOT NULL,
    [AddressState]                           NVARCHAR (128)  NOT NULL,
    [AddressPostCode]                        NVARCHAR (128)  NOT NULL,
    [MailingAddressStreet]                   NVARCHAR (128)  NULL,
    [MailingAddressSuburb]                   NVARCHAR (128)  NULL,
    [MailingAddressState]                    NVARCHAR (128)  NULL,
    [MailingAddressPostCode]                 NVARCHAR (128)  NULL,
    [NumberOfEmployees]                      INT             NULL,
    [NumberOfEligibleEmployees]              INT             NULL,
    [AgreementTerms]                         NVARCHAR (36)   NULL,
    [AgreementStart]                         DATE            NULL,
    [AgreementEnd]                           DATE            NULL,
    [BankAccountCreditName]                  NVARCHAR (128)  NULL,
    [BankAccountCreditBank]                  NVARCHAR (128)  NULL,
    [BankAccountCreditBSB]                   NVARCHAR (128)  NULL,
    [BankAccountCreditAccountNumber]         NVARCHAR (128)  NULL,
    [BankAccountDebitName]                   NVARCHAR (128)  NULL,
    [BankAccountDebitBank]                   NVARCHAR (128)  NULL,
    [BankAccountDebitBSB]                    NVARCHAR (128)  NULL,
    [BankAccountDebitAccountNumber]          NVARCHAR (128)  NULL,
    [UseCustomTemplate]                      BIT             NULL,
    [DefaultFBTCalculationMethod]            NVARCHAR (36)   NULL,
    [GSTRebate]                              DECIMAL (18, 4) NULL,
    [DefaultPackageTermInMonths]             DECIMAL (18, 4) NULL,
    [AllowStatutoryFBVMethod]                BIT             NULL,
    [AllowOpCostFBVMethod]                   BIT             NULL,
    [AllowExemptBenefitFBVMethod]            BIT             NULL,
    [NonDeductibleCalculationMethod]         NVARCHAR (36)   NULL,
    [DefaultInsurer]                         NVARCHAR (36)   NULL,
    [DefaultSuperannuation]                  NVARCHAR (36)   NULL,
    [DefaultPayrollFrequency]                NVARCHAR (36)   NULL,
    [DefaultAddOnLeaseProtection]            NVARCHAR (36)   NULL,
    [DefaultAddOnSmartMembership]            NVARCHAR (36)   NULL,
    [DefaultAddOnExtendedWarranty]           NVARCHAR (36)   NULL,
    [DefaultAddOnGapCover]                   NVARCHAR (36)   NULL,
    [DefaultAddOnResidualProtection]         NVARCHAR (36)   NULL,
    [DefaultAddOnTyreWheelInsurance]         NVARCHAR (36)   NULL,
    [MonthlyManagementFee]                   DECIMAL (18, 4) NULL,
    [MonthlyAdministrationFee]               DECIMAL (18, 4) NULL,
    [MonthlyReportingFee]                    DECIMAL (18, 4) NULL,
    [MarginNewSetupFee]                      DECIMAL (18, 4) NULL,
    [MarginRenovationFee]                    DECIMAL (18, 4) NULL,
    [MarginExternalFinancierSetupFee]        DECIMAL (18, 4) NULL,
    [MarginFinanceMargin]                    DECIMAL (18, 4) NULL,
    [MarginFinanceInterestRateDiscount]      DECIMAL (18, 4) NULL,
    [InvoiceEmployeeContributionSeparately]  BIT             NULL,
    [InvoiceLuxuryNonDeductibleSeparately]   BIT             NULL,
    [InvoiceLuxuryDisposalSeparately]        BIT             NULL,
    [AllowLuxuryVehicles]                    BIT             NULL,
    [DefaultLuxuryVehicleDepreciationMethod] NVARCHAR (36)   NULL,
    [LastUpdatedTimestamp]                   DATETIME        NULL,
    [AccountGroupId]                         NVARCHAR (128)  NULL,
    [AccountGroupName]                       NVARCHAR (128)  NULL,
    [BusinessSectorName]                     VARCHAR (128)   NULL,
    [BusinessCategoryName]                   VARCHAR (128)   NULL,
    [GstProcessingMethod]                    VARCHAR (128)   NULL,
    [AgreementExtensionEndDate]              DATE            NULL,
    [AgreementRollover]                      BIT             NULL,
    [AccountTerminatedDate]                  DATE            NULL,
    [TransferredSource]                      VARCHAR (128)   NULL,
    [TransferredDate]                        DATE            NULL,
    [LeaseType]                              VARCHAR (128)   NULL,
    [AllowDaysUnavailble]                    BIT             NULL,
    [DaysUnavailablePolicy]                  VARCHAR (258)   NULL,
    [NovatedLeaseProvider]                   VARCHAR (258)   NULL,
    [OperatingCostMethodPercentage]          VARCHAR (128)   NULL,
    [CollectContributionGst]                 BIT             NULL,
    [AllowCasualEmployee]                    BIT             NULL,
    [JSON]                                   NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([AccountId] ASC),
    CONSTRAINT [Account_AccountGroupId_FK] FOREIGN KEY ([AccountGroupId]) REFERENCES [CommonFormat].[AccountGroup] ([AccountGroupId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Details of employers/company/partner/supplier
Data rows to include:Accounts that have active vehicles
Data rows to exclude:Employer that are not in include and last updated date is > 7 yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer/company /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of employer/company /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ABN', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'ABN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ACN', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'ACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for parent employer/company ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'ParentAccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'PrimaryContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Is the account setup to allow the initiation of a new novated vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'CanSellNovated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relationship Status', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'RelationshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phone Number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'PhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Website', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'Website';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Street', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AddressStreet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Suburb', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AddressSuburb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Suburb', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AddressState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address PostCode', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AddressPostCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mailing Address Street', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MailingAddressStreet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mailing Address Suburb', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MailingAddressSuburb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mailing Address State', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MailingAddressState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mailing Address PostCode', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MailingAddressPostCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total number of employees in the employer /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'NumberOfEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total number of employees that are eligible to package a vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'NumberOfEligibleEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Agreement terms with the employer /Sample Data : Exclusive, Panel', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AgreementTerms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start date of the contract ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AgreementStart';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'End date of the contract ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AgreementEnd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account name which the system can credit funds to. Eg: credit notes /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountCreditName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank name which the system can credit funds to /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountCreditBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB which the system can credit funds to /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountCreditBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account number which the system can credit funds to /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountCreditAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account name which the system can direct debit funds from. Eg: scheduled invoices /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountDebitName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank name which the system can direct debit funds from /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountDebitBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB which the system can direct debit funds from /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountDebitBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account number which the system can direct debit funds from /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BankAccountDebitAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Does the employer have specific pricing and setup which is different from the default employer setup. ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'UseCustomTemplate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default FBT calculation method /Sample Data : FBT, Employee Contribution', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultFBTCalculationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'How much of the GST rebate is passed onto the employee /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'GSTRebate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default term for novated lease /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultPackageTermInMonths';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allow Statutory FBV calculation method on novated lease in employer ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowStatutoryFBVMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allow Operating Cost FBV calculation method on novated lease in employer ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowOpCostFBVMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allow Exempt Benefit FBV calculation method on novated lease in employer', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowExemptBenefitFBVMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Luxury Lease Calculation method to be used for luxury leases in the employer /Sample Data : Use Employee Contribution, No employee contribution', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'NonDeductibleCalculationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default insurer for novated leases in company /Sample Data : Autopia Fleet, Client sourced insurance, No insurance budget', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultInsurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Superannuation calculation used when salary is reduced /Sample Data : Fixed, Reducible', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultSuperannuation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default payroll frequency for employees in the company /Sample Data : Weekly, Fortnightly, Monthly', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultPayrollFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default LPI on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnLeaseProtection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default Smart membership on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnSmartMembership';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default Extended Warranty membership on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnExtendedWarranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default GAP on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnGapCover';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default Residual Protection on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnResidualProtection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default Tyre and Wheel Insurance on new novated lease scenarios /Sample Data : Not Allowed, Yes - Optional, No - Optional, Mandatory', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultAddOnTyreWheelInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Monthly vechile Management Fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MonthlyManagementFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' Monthly administration fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MonthlyAdministrationFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Monthly Reporting Fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MonthlyReportingFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Margin New Setup Fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MarginNewSetupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Margin Renovation Fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MarginRenovationFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Margin External Financier Setup Fee', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MarginExternalFinancierSetupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Margin Finance Margin', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MarginFinanceMargin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Margin Finance Interest Rate Discount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'MarginFinanceInterestRateDiscount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Invoice Employee Contribution Separately', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'InvoiceEmployeeContributionSeparately';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Invoice Luxury Non Deductible Separately', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'InvoiceLuxuryNonDeductibleSeparately';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Invoice Luxury Disposal Separately', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'InvoiceLuxuryDisposalSeparately';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Invoice Luxury Disposal Separately', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowLuxuryVehicles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default Luxury Vehicle Depreciation Method', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DefaultLuxuryVehicleDepreciationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last date time the account/employer record has been updated ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer group/company group', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AccountGroupId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system description for employer group/company group', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AccountGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Business Sector Name Eg: Charity,Health', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BusinessSectorName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Business Category Name Eg: Health/Hospital,Education,Research etc', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'BusinessCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'GST processing method. when on Net employer pays GST when Gross employee pays gst {options Net/Gross}', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'GstProcessingMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Agreement Extension Date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AgreementExtensionEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has contract rollover ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AgreementRollover';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Account terminated Date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AccountTerminatedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Account source ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'TransferredSource';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Transferred date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'TransferredDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allowed lease type eg : Novated ,Associated,Both', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'LeaseType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowDaysUnavailble';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Days unavailable policy allowed by employer{
Vehicle in workshop undergoing repairs ,               
Vehicle locked at my employers premises and keys left with my employer,  
Vehicle locked at a safe storage away from my place of residence, and keys left with my employer ,               
Vehicle in workshop undergoing repairs (you will need to provide substantiation such as receipt from workshop showing car drop off and pick up time) ,               
Tax Free Zone}', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'DaysUnavailablePolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'List of lease providers used by source ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'NovatedLeaseProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'What is the maximum business use % allowed if employer allows operating cost method', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'OperatingCostMethodPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employer collect contribution gst eg:Yes/No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'CollectContributionGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Casuals allowed to package or not ; Yes/No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Account', @level2type = N'COLUMN', @level2name = N'AllowCasualEmployee';

