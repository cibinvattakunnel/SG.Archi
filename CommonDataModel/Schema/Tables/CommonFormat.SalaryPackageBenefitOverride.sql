CREATE TABLE [CommonFormat].[SalaryPackageBenefitOverride]
(
[SalaryPackageBenefitOverrideId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalaryPackageBenefitId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PayNumber] [int] NOT NULL,
[FBTYearDetailId] [int] NOT NULL,
[NumberOfPays] [int] NOT NULL,
[Amount] [decimal] (16, 2) NOT NULL,
[Description] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedTimestamp] [datetime] NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'List of benefit items where override required ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'over ride amount', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'Amount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'override description', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT Year details (eg 2018)', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'FBTYearDetailId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'last record updated date', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'No of pays override occurs', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'NumberOfPays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start pay number for over ride ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'PayNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Salary Package Benefit Id', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'SalaryPackageBenefitId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system id for benefit override', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackageBenefitOverride', 'COLUMN', N'SalaryPackageBenefitOverrideId'
GO
