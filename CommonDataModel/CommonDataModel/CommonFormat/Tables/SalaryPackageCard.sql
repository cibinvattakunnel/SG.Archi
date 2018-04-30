CREATE TABLE [CommonFormat].[SalaryPackageCard] (
    [SalaryPackageCardId]         NVARCHAR (128)  NOT NULL,
    [CardProvider]                NVARCHAR (128)  NOT NULL,
    [SalaryPackageId]             NVARCHAR (128)  NOT NULL,
    [SalaryPackageBenefitId]      NVARCHAR (128)  NOT NULL,
    [CardType]                    NVARCHAR (128)  NOT NULL,
    [CardSubType]                 NVARCHAR (128)  NOT NULL,
    [CardProviderReference]       NVARCHAR (128)  NULL,
    [CurrentBalance]              DECIMAL (16, 2) NULL,
    [CardTitle]                   VARCHAR (4)     NULL,
    [CardFirstName]               VARCHAR (19)    NULL,
    [CardLastName]                VARCHAR (19)    NULL,
    [CardGender]                  VARCHAR (4)     NULL,
    [CardDOB]                     DATE            NULL,
    [CardOccupationCode]          VARCHAR (5)     NULL,
    [CardBSB]                     VARCHAR (200)   NULL,
    [CardAccountNumber]           VARCHAR (200)   NULL,
    [CardHasSecondaryCard]        BIT             NULL,
    [CardInfoOrgProcessed]        DATE            NULL,
    [CardTokenNumber]             VARCHAR (16)    NULL,
    [CardCustNumber]              VARCHAR (8)     NULL,
    [CardOpenReqToWBC]            DATETIME        NULL,
    [CardOpenConfirmed]           DATETIME        NULL,
    [CardCloseInitiated]          DATETIME        NULL,
    [CardCloseRequested]          DATETIME        NULL,
    [CardCloseConfirmed]          DATETIME        NULL,
    [IsPreTaxDeduction]           BIT             NULL,
    [PostTaxDeduction]            BIT             NULL,
    [IsEmployerProvidedBenefit]   BIT             NULL,
    [WestpacFacilityId]           INT             NULL,
    [CardSecondaryTitle]          VARCHAR (4)     NULL,
    [CardSecondaryFirstName]      VARCHAR (19)    NULL,
    [CardSecondaryLastName]       VARCHAR (19)    NULL,
    [CardSecondaryGender]         VARCHAR (4)     NULL,
    [CardSecondaryDOB]            DATE            NULL,
    [CardSecondaryOccupationCode] VARCHAR (5)     NULL,
    [CardSecondaryBSB]            VARCHAR (200)   NULL,
    [CardSecondaryAccountNumber]  VARCHAR (200)   NULL,
    [CardSecondaryCustNumber]     VARCHAR (8)     NULL,
    [CardSecondaryOpenReqToWBC]   DATETIME        NULL,
    [CardSecondaryOpenConfirmed]  DATETIME        NULL,
    [CardSecondaryCloseInitiated] DATETIME        NULL,
    [CardSecondaryCloseRequested] DATETIME        NULL,
    [CardSecondaryCloseConfirmed] DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([SalaryPackageCardId] ASC),
    CONSTRAINT [SalaryPackageCard_SalaryPackageBenefitId_FK] FOREIGN KEY ([SalaryPackageBenefitId]) REFERENCES [CommonFormat].[SalaryPackageBenefit] ([SalaryPackageBenefitId]),
    CONSTRAINT [SalaryPackageCard_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salary package card details (westpac)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system id for salary package card', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'SalaryPackageCardId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Provider detail (Westpac,EML)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system id for salary package benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'SalaryPackageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system id for salary package benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Type of the card (Living expense /Meal)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current balance on the card', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CurrentBalance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Title', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' DOB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Occupation', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardOccupationCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'BSB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Card Has SecondaryCard', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardHasSecondaryCard';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' Info Org Processed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardInfoOrgProcessed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TokenNumber', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardTokenNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cust Number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardCustNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date Open Req To WBC', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardOpenReqToWBC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date Open Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardOpenConfirmed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date Close Initiated', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardCloseInitiated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date Close Requested', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardCloseRequested';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date Close Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardCloseConfirmed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Is Pre Tax Deduction', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'IsPreTaxDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Is POST Tax Deduction', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'PostTaxDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'IsEmployerProvidedBenefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'IsEmployerProvidedBenefit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Westpac Facility Number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'WestpacFacilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Title', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary First Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Last Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Gender', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary DOB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Occupation', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryOccupationCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary BSB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Account No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Westpac Cust No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryCustNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Open Req to WBC', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryOpenReqToWBC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Open Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryOpenConfirmed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Initiated', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryCloseInitiated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Requested', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryCloseRequested';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageCard', @level2type = N'COLUMN', @level2name = N'CardSecondaryCloseConfirmed';

