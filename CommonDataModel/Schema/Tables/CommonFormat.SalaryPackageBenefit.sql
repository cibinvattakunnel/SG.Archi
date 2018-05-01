CREATE TABLE [CommonFormat].[SalaryPackageBenefit]
(
[SalaryPackageBenefitId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalaryPackageId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BenefitType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PaymentMethod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreditorId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankBSB] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankAccountNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankAccountName] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TaxType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerReference] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentStartPayNumber] [int] NULL,
[CurrentNumberOfPays] [int] NULL,
[NextStartPayNumber] [int] NULL,
[NextNumberOfPays] [int] NULL,
[NextFBTAnnualAmount] [decimal] (16, 2) NOT NULL,
[ThisFBTAnnualAmount] [decimal] (16, 2) NOT NULL,
[EffectiveStartDate] [date] NOT NULL,
[EffectiveEndDate] [date] NULL,
[SuperAbn] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PolicyNumber] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GstYear] [decimal] (16, 2) NULL,
[OrganisationSharePercent] [decimal] (16, 2) NULL,
[GrossUp] [decimal] (16, 2) NULL,
[FixedSubstantiationRequired] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubstantiationAmount] [decimal] (16, 2) NULL,
[OutstandingAmount] [decimal] (16, 2) NULL,
[NextNumberOfPaysOffset] [int] NULL,
[BankAccountId] [int] NULL,
[IsPaymentMethodId] [bit] NULL,
[FBTTaxLiability] [bit] NULL,
[IsRecurringSubs] [bit] NULL,
[IsBalance] [bit] NULL,
[FBTBalance] [bit] NULL,
[IsPOE] [bit] NULL,
[POESupportingDocAmt] [bit] NULL,
[POETaxInvoiceHeld] [bit] NULL,
[IsVehicleManagement] [bit] NULL,
[IsDeleted] [bit] NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL,
[Description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextPayAmount] [decimal] (16, 2) NULL,
[P1_CN] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P1_C] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ThisFBTpa] [decimal] (16, 2) NULL,
[NextFBTpa] [decimal] (16, 2) NULL,
[ThisFBTpp] [decimal] (16, 2) NULL,
[NextFBTpp] [decimal] (16, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageBenefit] ADD CONSTRAINT [PK_Benefit] PRIMARY KEY CLUSTERED  ([SalaryPackageBenefitId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageBenefit] ADD CONSTRAINT [SalaryPackageBenefit_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Benefits provided by employers include: fringe benefits, exempt benefits, and super.
Data rows to include:Benefit which have been active in the past 7yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank Account name which the system can credit funds to ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'BankAccountName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank Account number which the system can credit funds to', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'BankAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB which the system can credit funds to /Sample Data :025-658', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'BankBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Packaging benefits  Sample Data :fringe benefits, exempt benefits, and super. ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'BenefitType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for Creditor ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'CreditorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sets the number of pays associated with the customised pay (for current period)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'CurrentNumberOfPays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allows the user to decide when the first payments needs to start for this benefit (for current FBT year) /Sample data :3 {Fortnightly:1- 26} )', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'CurrentStartPayNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reference used for the transaction ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'CustomerReference'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End Date of the benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'EffectiveEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start Date of the benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'EffectiveStartDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'GrossUp rate used ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'GrossUp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total GST for current Year', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'GstYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Benefit current status indicator (active or in-active)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBTAnnualAmount for next fbt year', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextFBTAnnualAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next FBT (per year) amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextFBTpa'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next FBT (per pay) amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextFBTpp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allows the user to decide when the first payments needs to start for this benefit (for next FBT year) (eg 24)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextNumberOfPays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When creating a schedule item the number of pays allowed = Number of pays in a year NextNumberOfPaysOffset', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextNumberOfPaysOffset'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next Pay amount to be paid for the schedule amount.', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextPayAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next FBT Year Paycycle pay number (eg {Fortnightly:1- 26} )', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'NextStartPayNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Organisation Share Percent(save share)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'OrganisationSharePercent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unpaid payment for FBT year', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'OutstandingAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'P1/C Calculated field made of virtual start pay number + NextnumberOfPays', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'P1_C'
GO
EXEC sp_addextendedproperty N'MS_Description', N'P1/CN Calculated field made of current start pay number + CurrentNumberOfPays', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'P1_CN'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Payment method used eg {EFT,BPay} etc..', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'PaymentMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Policy Number', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'PolicyNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for benefit ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'SalaryPackageBenefitId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/employee ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'SalaryPackageId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Substantiation Amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'SubstantiationAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ABN for super fund when benefit is private super', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'SuperAbn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category of the Benefit /Sample Data : Pretax, Post tax, refund tec', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'TaxType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBTAnnualAmount for next fbt year', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'ThisFBTAnnualAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This FBT (per year) amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'ThisFBTpa'
GO
EXEC sp_addextendedproperty N'MS_Description', N' This FBT (per pay) amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit', 'COLUMN', N'ThisFBTpp'
GO
