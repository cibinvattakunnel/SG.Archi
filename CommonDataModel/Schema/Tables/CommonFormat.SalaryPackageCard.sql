CREATE TABLE [CommonFormat].[SalaryPackageCard]
(
[SalaryPackageCardId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CardProvider] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalaryPackageId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalaryPackageBenefitId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CardType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CardSubType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CardProviderReference] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentBalance] [decimal] (16, 2) NULL,
[CardTitle] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardFirstName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardLastName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardGender] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardDOB] [date] NULL,
[CardOccupationCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardBSB] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardAccountNumber] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardHasSecondaryCard] [bit] NULL,
[CardInfoOrgProcessed] [date] NULL,
[CardTokenNumber] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardCustNumber] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardOpenReqToWBC] [datetime] NULL,
[CardOpenConfirmed] [datetime] NULL,
[CardCloseInitiated] [datetime] NULL,
[CardCloseRequested] [datetime] NULL,
[CardCloseConfirmed] [datetime] NULL,
[IsPreTaxDeduction] [bit] NULL,
[PostTaxDeduction] [bit] NULL,
[IsEmployerProvidedBenefit] [bit] NULL,
[WestpacFacilityId] [int] NULL,
[CardSecondaryTitle] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryFirstName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryLastName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryGender] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryDOB] [date] NULL,
[CardSecondaryOccupationCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryBSB] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryAccountNumber] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryCustNumber] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardSecondaryOpenReqToWBC] [datetime] NULL,
[CardSecondaryOpenConfirmed] [datetime] NULL,
[CardSecondaryCloseInitiated] [datetime] NULL,
[CardSecondaryCloseRequested] [datetime] NULL,
[CardSecondaryCloseConfirmed] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageCard] ADD CONSTRAINT [PK__SalaryPa__974425E645348530] PRIMARY KEY CLUSTERED  ([SalaryPackageCardId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackageCard] ADD CONSTRAINT [SalaryPackageCard_SalaryPackageBenefitId_FK] FOREIGN KEY ([SalaryPackageBenefitId]) REFERENCES [CommonFormat].[SalaryPackageBenefit] ([SalaryPackageBenefitId])
GO
ALTER TABLE [CommonFormat].[SalaryPackageCard] ADD CONSTRAINT [SalaryPackageCard_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Salary package card details (westpac)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'AccountNumber', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'BSB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date Close Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardCloseConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date Close Initiated', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardCloseInitiated'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date Close Requested', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardCloseRequested'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cust Number', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardCustNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N' DOB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardDOB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardFirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Gender', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardGender'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Card Has SecondaryCard', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardHasSecondaryCard'
GO
EXEC sp_addextendedproperty N'MS_Description', N' Info Org Processed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardInfoOrgProcessed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardLastName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Occupation', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardOccupationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date Open Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardOpenConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date Open Req To WBC', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardOpenReqToWBC'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Provider detail (Westpac,EML)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardProvider'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Card provider reference', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardProviderReference'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Account No', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary BSB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryCloseConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Initiated', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryCloseInitiated'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Close Requested', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryCloseRequested'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Westpac Cust No', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryCustNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary DOB', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryDOB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary First Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryFirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Gender', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryGender'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Last Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryLastName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Occupation', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryOccupationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Open Confirmed', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryOpenConfirmed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Open Req to WBC', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryOpenReqToWBC'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary Title', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSecondaryTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Card sub type if any', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardSubType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Title', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'TokenNumber', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardTokenNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of the card (Living expense /Meal)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CardType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance on the card', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'CurrentBalance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'IsEmployerProvidedBenefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'IsEmployerProvidedBenefit'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Is Pre Tax Deduction', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'IsPreTaxDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Is POST Tax Deduction', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'PostTaxDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system id for salary package benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'SalaryPackageBenefitId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system id for salary package card', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'SalaryPackageCardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system id for salary package benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'SalaryPackageId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Westpac Facility Number', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageCard', 'COLUMN', N'WestpacFacilityId'
GO
