CREATE TABLE [CommonFormat].[SalaryPackageBenefit_Phoenix]
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
[IsDeleted] [bit] NULL CONSTRAINT [DF_SalaryPackageBenefit_Phoenix_IsDeleted] DEFAULT ((0)),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[UpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UpdatedDate] [datetime] NOT NULL,
[sp_CreditorId_cf] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_Description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_BankBSB] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_CustomerReference] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_NextPayAmount] [decimal] (16, 2) NULL,
[sp_PaymentMethod] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_P1_CN] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_P1_C] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_SuperAbn] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_PolicyNumber] [bit] NULL,
[sp_GstYear] [bit] NULL,
[sp_OrganisationSharePercent] [bit] NULL,
[sp_GrossUp] [bit] NULL,
[sp_FixedSubstantiationRequired] [bit] NULL,
[sp_SubstantiationAmount] [bit] NULL,
[sp_CurrentStartPayNumber] [int] NULL,
[sp_NextNumberOfPays] [int] NULL,
[sp_BankAccountNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_BankAccountName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_NextStartPayNumber] [int] NULL,
[sp_OutstandingAmount] [decimal] (16, 2) NULL,
[sp_ThisFBTpa] [decimal] (16, 2) NULL,
[sp_NextFBTpa] [decimal] (16, 2) NULL,
[sp_ThisFBTpp] [decimal] (16, 2) NULL,
[sp_NextFBTpp] [decimal] (16, 2) NULL,
[sp_FBTTaxLiability] [bit] NULL,
[sp_IsRecurringSubs] [bit] NULL,
[sp_FBTBalance] [bit] NULL,
[sp_POESupportingDocAmt] [bit] NULL,
[sp_POETaxInvoiceHeld] [bit] NULL,
[sp_WCTitle] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCFirstName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCLastName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCGender] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCDOB] [date] NULL,
[sp_WCOccupationCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCBSB] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCAccountNumber] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCHasSecondaryCard] [bit] NULL,
[sp_WCInfoOrgProcessed] [date] NULL,
[sp_WCTokenNumber] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCCustNumber] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCOpenReqToWBC] [datetime] NULL,
[sp_WCOpenConfirmed] [datetime] NULL,
[sp_WCCloseInitiated] [datetime] NULL,
[sp_WCCloseRequested] [datetime] NULL,
[sp_WCCloseConfirmed] [datetime] NULL,
[sp_WCSecondaryTitle] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryFirstName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryLastName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryGender] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryDOB] [date] NULL,
[sp_WCSecondaryOccupationCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryBSB] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryAccountNumber] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryCustNumber] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sp_WCSecondaryOpenReqToWBC] [datetime] NULL,
[sp_WCSecondaryOpenConfirmed] [datetime] NULL,
[sp_WCSecondaryCloseInitiated] [datetime] NULL,
[sp_WCSecondaryCloseRequested] [datetime] NULL,
[sp_WCSecondaryCloseConfirmed] [datetime] NULL,
[EPBEndDate] [date] NULL,
[EPBExcludeFromCap] [bit] NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageBenefit_Phoenix] ADD CONSTRAINT [PK_SalaryPackageBenefit] PRIMARY KEY CLUSTERED  ([SalaryPackageBenefitId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'sp_Creditor', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'CreditorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_BankBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Creditor', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_CreditorId_cf'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Customer Ref', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_CustomerReference'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Description', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT Balance', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_FBTBalance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT Tax liability', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_FBTTaxLiability'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Recurring subs required?', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_IsRecurringSubs'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT Next Year (pa)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_NextFBTpa'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT Next Year (pp)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_NextFBTpp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next Pay Amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_NextPayAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'POE.Supporting Doc Amt. (GST)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_POESupportingDocAmt'
GO
EXEC sp_addextendedproperty N'MS_Description', N'POE.Tax Invoice Held?', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_POETaxInvoiceHeld'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT This Year (pa)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_ThisFBTpa'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT This Year (pp)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_ThisFBTpp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCFirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCLastName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryCloseConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Initiated', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryCloseInitiated'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Requested', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryCloseRequested'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Westpac Cust No', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryCustNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary DOB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryDOB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Open Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryOpenConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Open Req to WBC', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefit_Phoenix', 'COLUMN', N'sp_WCSecondaryOpenReqToWBC'
GO
