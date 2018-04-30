CREATE TABLE [CommonFormat].[SalaryPackageBenefit] (
    [SalaryPackageBenefitId]      NVARCHAR (128)  NOT NULL,
    [SalaryPackageId]             NVARCHAR (128)  NOT NULL,
    [BenefitType]                 NVARCHAR (128)  NOT NULL,
    [PaymentMethod]               VARCHAR (50)    NOT NULL,
    [CreditorId]                  NVARCHAR (128)  NULL,
    [BankBSB]                     VARCHAR (6)     NOT NULL,
    [BankAccountNumber]           VARCHAR (9)     NOT NULL,
    [BankAccountName]             VARCHAR (32)    NOT NULL,
    [TaxType]                     NVARCHAR (128)  NULL,
    [CustomerReference]           VARCHAR (18)    NULL,
    [CurrentStartPayNumber]       INT             NULL,
    [CurrentNumberOfPays]         INT             NULL,
    [NextStartPayNumber]          INT             NULL,
    [NextNumberOfPays]            INT             NULL,
    [NextFBTAnnualAmount]         DECIMAL (16, 2) NOT NULL,
    [ThisFBTAnnualAmount]         DECIMAL (16, 2) NOT NULL,
    [EffectiveStartDate]          DATE            NOT NULL,
    [EffectiveEndDate]            DATE            NULL,
    [SuperAbn]                    VARCHAR (MAX)   NULL,
    [PolicyNumber]                VARCHAR (80)    NULL,
    [GstYear]                     DECIMAL (16, 2) NULL,
    [OrganisationSharePercent]    DECIMAL (16, 2) NULL,
    [GrossUp]                     DECIMAL (16, 2) NULL,
    [FixedSubstantiationRequired] VARCHAR (MAX)   NULL,
    [SubstantiationAmount]        DECIMAL (16, 2) NULL,
    [OutstandingAmount]           DECIMAL (16, 2) NULL,
    [NextNumberOfPaysOffset]      INT             NULL,
    [BankAccountId]               INT             NULL,
    [IsPaymentMethodId]           BIT             NULL,
    [FBTTaxLiability]             BIT             NULL,
    [IsRecurringSubs]             BIT             NULL,
    [IsBalance]                   BIT             NULL,
    [FBTBalance]                  BIT             NULL,
    [IsPOE]                       BIT             NULL,
    [POESupportingDocAmt]         BIT             NULL,
    [POETaxInvoiceHeld]           BIT             NULL,
    [IsVehicleManagement]         BIT             NULL,
    [IsDeleted]                   BIT             NULL,
    [LastUpdatedTimeStamp]        DATETIME        NOT NULL,
    [Description]                 VARCHAR (200)   NULL,
    [NextPayAmount]               DECIMAL (16, 2) NULL,
    [P1_CN]                       VARCHAR (200)   NULL,
    [P1_C]                        VARCHAR (200)   NULL,
    [ThisFBTpa]                   DECIMAL (16, 2) NULL,
    [NextFBTpa]                   DECIMAL (16, 2) NULL,
    [ThisFBTpp]                   DECIMAL (16, 2) NULL,
    [NextFBTpp]                   DECIMAL (16, 2) NULL,
    CONSTRAINT [PK_Benefit] PRIMARY KEY CLUSTERED ([SalaryPackageBenefitId] ASC),
    CONSTRAINT [SalaryPackageBenefit_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Benefits provided by employers include: fringe benefits, exempt benefits, and super.
Data rows to include:Benefit which have been active in the past 7yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for benefit ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/employee ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'SalaryPackageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Packaging benefits  Sample Data :fringe benefits, exempt benefits, and super. ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'BenefitType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Payment method used eg {EFT,BPay} etc..', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'PaymentMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for Creditor ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'CreditorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB which the system can credit funds to /Sample Data :025-658', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'BankBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank Account number which the system can credit funds to', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'BankAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank Account name which the system can credit funds to ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'BankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Category of the Benefit /Sample Data : Pretax, Post tax, refund tec', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'TaxType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reference used for the transaction ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'CustomerReference';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current FBT Year Paycycle pay number (eg {Fortnightly:1- 26} )', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'CurrentStartPayNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current FBT Year remaining pays (eg 24)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'CurrentNumberOfPays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next FBT Year Paycycle pay number (eg {Fortnightly:1- 26} )', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextStartPayNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'NextFBT Year remaining pays (eg 24)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextNumberOfPays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBTAnnualAmount for next fbt year', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextFBTAnnualAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBTAnnualAmount for next fbt year', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'ThisFBTAnnualAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start Date of the benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'EffectiveStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'End Date of the benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'EffectiveEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ABN for super fund when benefit is private super', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'SuperAbn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'PolicyNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total GST for current Year', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'GstYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Organisation Share Percent(save share)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'OrganisationSharePercent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'GrossUp rate used ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'GrossUp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Substantiation Amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'SubstantiationAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unpaid payment for FBT year', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'OutstandingAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'When creating a schedule item the number of pays allowed = Number of pays in a year NextNumberOfPaysOffset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextNumberOfPaysOffset';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Benefit current status indicator (active or in-active)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'IsDeleted';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'P1/CN Calculated field made of current start pay number + CurrentNumberOfPays', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'P1_CN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'P1/C Calculated field made of virtual start pay number + NextnumberOfPays', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'P1_C';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This FBT (per year) amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'ThisFBTpa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next FBT (per year) amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextFBTpa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' This FBT (per pay) amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'ThisFBTpp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next FBT (per pay) amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefit', @level2type = N'COLUMN', @level2name = N'NextFBTpp';

