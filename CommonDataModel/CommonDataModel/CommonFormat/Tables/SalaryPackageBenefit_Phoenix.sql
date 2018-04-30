CREATE TABLE [CommonFormat].[SalaryPackageBenefit_Phoenix] (
    [SalaryPackageBenefitId]         NVARCHAR (128)  NOT NULL,
    [SalaryPackageId]                NVARCHAR (128)  NOT NULL,
    [BenefitType]                    NVARCHAR (128)  NOT NULL,
    [PaymentMethod]                  VARCHAR (50)    NOT NULL,
    [CreditorId]                     NVARCHAR (128)  NULL,
    [BankBSB]                        VARCHAR (6)     NOT NULL,
    [BankAccountNumber]              VARCHAR (9)     NOT NULL,
    [BankAccountName]                VARCHAR (32)    NOT NULL,
    [TaxType]                        NVARCHAR (128)  NULL,
    [CustomerReference]              VARCHAR (18)    NULL,
    [CurrentStartPayNumber]          INT             NULL,
    [CurrentNumberOfPays]            INT             NULL,
    [NextStartPayNumber]             INT             NULL,
    [NextNumberOfPays]               INT             NULL,
    [NextFBTAnnualAmount]            DECIMAL (16, 2) NOT NULL,
    [ThisFBTAnnualAmount]            DECIMAL (16, 2) NOT NULL,
    [EffectiveStartDate]             DATE            NOT NULL,
    [EffectiveEndDate]               DATE            NULL,
    [SuperAbn]                       VARCHAR (MAX)   NULL,
    [PolicyNumber]                   VARCHAR (80)    NULL,
    [GstYear]                        DECIMAL (16, 2) NULL,
    [OrganisationSharePercent]       DECIMAL (16, 2) NULL,
    [GrossUp]                        DECIMAL (16, 2) NULL,
    [FixedSubstantiationRequired]    VARCHAR (MAX)   NULL,
    [SubstantiationAmount]           DECIMAL (16, 2) NULL,
    [OutstandingAmount]              DECIMAL (16, 2) NULL,
    [NextNumberOfPaysOffset]         INT             NULL,
    [BankAccountId]                  INT             NULL,
    [IsPaymentMethodId]              BIT             NULL,
    [FBTTaxLiability]                BIT             NULL,
    [IsRecurringSubs]                BIT             NULL,
    [IsBalance]                      BIT             NULL,
    [FBTBalance]                     BIT             NULL,
    [IsPOE]                          BIT             NULL,
    [POESupportingDocAmt]            BIT             NULL,
    [POETaxInvoiceHeld]              BIT             NULL,
    [IsVehicleManagement]            BIT             NULL,
    [IsDeleted]                      BIT             CONSTRAINT [DF_SalaryPackageBenefit_Phoenix_IsDeleted] DEFAULT ((0)) NULL,
    [CreatedBy]                      VARCHAR (50)    NOT NULL,
    [CreatedDate]                    DATETIME        NOT NULL,
    [UpdatedBy]                      VARCHAR (50)    NOT NULL,
    [UpdatedDate]                    DATETIME        NOT NULL,
    [sp_CreditorId_cf]               VARCHAR (50)    NULL,
    [sp_Description]                 VARCHAR (200)   NULL,
    [sp_BankBSB]                     VARCHAR (6)     NULL,
    [sp_CustomerReference]           VARCHAR (200)   NULL,
    [sp_NextPayAmount]               DECIMAL (16, 2) NULL,
    [sp_PaymentMethod]               VARCHAR (20)    NULL,
    [sp_P1_CN]                       VARCHAR (200)   NULL,
    [sp_P1_C]                        VARCHAR (200)   NULL,
    [sp_SuperAbn]                    VARCHAR (200)   NULL,
    [sp_PolicyNumber]                BIT             NULL,
    [sp_GstYear]                     BIT             NULL,
    [sp_OrganisationSharePercent]    BIT             NULL,
    [sp_GrossUp]                     BIT             NULL,
    [sp_FixedSubstantiationRequired] BIT             NULL,
    [sp_SubstantiationAmount]        BIT             NULL,
    [sp_CurrentStartPayNumber]       INT             NULL,
    [sp_NextNumberOfPays]            INT             NULL,
    [sp_BankAccountNumber]           VARCHAR (9)     NULL,
    [sp_BankAccountName]             VARCHAR (200)   NULL,
    [sp_NextStartPayNumber]          INT             NULL,
    [sp_OutstandingAmount]           DECIMAL (16, 2) NULL,
    [sp_ThisFBTpa]                   DECIMAL (16, 2) NULL,
    [sp_NextFBTpa]                   DECIMAL (16, 2) NULL,
    [sp_ThisFBTpp]                   DECIMAL (16, 2) NULL,
    [sp_NextFBTpp]                   DECIMAL (16, 2) NULL,
    [sp_FBTTaxLiability]             BIT             NULL,
    [sp_IsRecurringSubs]             BIT             NULL,
    [sp_FBTBalance]                  BIT             NULL,
    [sp_POESupportingDocAmt]         BIT             NULL,
    [sp_POETaxInvoiceHeld]           BIT             NULL,
    [sp_WCTitle]                     VARCHAR (4)     NULL,
    [sp_WCFirstName]                 VARCHAR (19)    NULL,
    [sp_WCLastName]                  VARCHAR (19)    NULL,
    [sp_WCGender]                    VARCHAR (4)     NULL,
    [sp_WCDOB]                       DATE            NULL,
    [sp_WCOccupationCode]            VARCHAR (5)     NULL,
    [sp_WCBSB]                       VARCHAR (200)   NULL,
    [sp_WCAccountNumber]             VARCHAR (200)   NULL,
    [sp_WCHasSecondaryCard]          BIT             NULL,
    [sp_WCInfoOrgProcessed]          DATE            NULL,
    [sp_WCTokenNumber]               VARCHAR (16)    NULL,
    [sp_WCCustNumber]                VARCHAR (8)     NULL,
    [sp_WCOpenReqToWBC]              DATETIME        NULL,
    [sp_WCOpenConfirmed]             DATETIME        NULL,
    [sp_WCCloseInitiated]            DATETIME        NULL,
    [sp_WCCloseRequested]            DATETIME        NULL,
    [sp_WCCloseConfirmed]            DATETIME        NULL,
    [sp_WCSecondaryTitle]            VARCHAR (4)     NULL,
    [sp_WCSecondaryFirstName]        VARCHAR (19)    NULL,
    [sp_WCSecondaryLastName]         VARCHAR (19)    NULL,
    [sp_WCSecondaryGender]           VARCHAR (4)     NULL,
    [sp_WCSecondaryDOB]              DATE            NULL,
    [sp_WCSecondaryOccupationCode]   VARCHAR (5)     NULL,
    [sp_WCSecondaryBSB]              VARCHAR (200)   NULL,
    [sp_WCSecondaryAccountNumber]    VARCHAR (200)   NULL,
    [sp_WCSecondaryCustNumber]       VARCHAR (8)     NULL,
    [sp_WCSecondaryOpenReqToWBC]     DATETIME        NULL,
    [sp_WCSecondaryOpenConfirmed]    DATETIME        NULL,
    [sp_WCSecondaryCloseInitiated]   DATETIME        NULL,
    [sp_WCSecondaryCloseRequested]   DATETIME        NULL,
    [sp_WCSecondaryCloseConfirmed]   DATETIME        NULL,
    [EPBEndDate]                     DATE            NULL,
    [EPBExcludeFromCap]              BIT             NULL,
    [JSON]                           NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_SalaryPackageBenefit] PRIMARY KEY CLUSTERED ([SalaryPackageBenefitId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'sp_Creditor', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'CreditorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Creditor', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_CreditorId_cf';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_BankBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer Ref', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_CustomerReference';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next Pay Amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_NextPayAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT This Year (pa)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_ThisFBTpa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT Next Year (pa)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_NextFBTpa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT This Year (pp)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_ThisFBTpp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT Next Year (pp)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_NextFBTpp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT Tax liability', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_FBTTaxLiability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Recurring subs required?', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_IsRecurringSubs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT Balance', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_FBTBalance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'POE.Supporting Doc Amt. (GST)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_POESupportingDocAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'POE.Tax Invoice Held?', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_POETaxInvoiceHeld';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary DOB', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Westpac Cust No', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryCustNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Open Req to WBC', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryOpenReqToWBC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Open Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryOpenConfirmed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Initiated', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryCloseInitiated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Requested', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryCloseRequested';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary Close Confirmed', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit_Phoenix', @level2type = N'COLUMN', @level2name = N'sp_WCSecondaryCloseConfirmed';

