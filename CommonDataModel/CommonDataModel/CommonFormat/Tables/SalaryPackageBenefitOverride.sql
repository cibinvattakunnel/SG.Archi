CREATE TABLE [CommonFormat].[SalaryPackageBenefitOverride] (
    [SalaryPackageBenefitOverrideId] NVARCHAR (128)  NOT NULL,
    [SalaryPackageBenefitId]         NVARCHAR (128)  NOT NULL,
    [PayNumber]                      INT             NOT NULL,
    [FBTYearDetailId]                INT             NOT NULL,
    [NumberOfPays]                   INT             NOT NULL,
    [Amount]                         DECIMAL (16, 2) NOT NULL,
    [Description]                    VARCHAR (60)    NOT NULL,
    [LastUpdatedTimestamp]           DATETIME        NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'List of benefit items where override required ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system id for benefit override', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitOverrideId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salary Package Benefit Id', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'SalaryPackageBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start pay number for over ride ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'PayNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT Year details (eg 2018)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'FBTYearDetailId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'No of pays override occurs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'NumberOfPays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'over ride amount', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'override description', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'last record updated date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackageBenefitOverride', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';

