CREATE TABLE [CommonFormat].[SalaryPackage]
(
[SalaryPackageId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmployeeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [date] NULL,
[EndDate] [date] NULL,
[AccountInvoiceCycleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentBalanceExGst] [decimal] (18, 4) NULL,
[Salary] [decimal] (18, 4) NOT NULL,
[CreatedDate] [datetime] NULL,
[LastUpdatedTimestamp] [datetime] NULL,
[CurrentStatus] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmploymentStatus] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstDeductionDate] [date] NOT NULL,
[LastDeductionDate] [date] NOT NULL,
[LastRolloverDate] [date] NULL,
[NextRolloverDate] [date] NULL,
[IsInvoiceFee] [bit] NULL,
[HasLeaveWithOutPay] [bit] NULL,
[HasAllowOverThreshold] [bit] NULL,
[SalaryPercentage] [int] NULL,
[HasNoEmployerShare] [bit] NULL,
[PercentExemptHousing] [bit] NULL,
[Occupation] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CostCentre] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hasNoFBTLimitOverride] [bit] NULL,
[WorkSiteName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hasReachedThresholdLimit] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackage] ADD CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED  ([SalaryPackageId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[SalaryPackage] ADD CONSTRAINT [SalaryPackage_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
GO
ALTER TABLE [CommonFormat].[SalaryPackage] ADD CONSTRAINT [SalaryPackage_AccountInvoiceCycleId_FK] FOREIGN KEY ([AccountInvoiceCycleId]) REFERENCES [CommonFormat].[AccountInvoiceCycle] ([AccountInvoiceCycleId])
GO
ALTER TABLE [CommonFormat].[SalaryPackage] ADD CONSTRAINT [SalaryPackage_ContactId_FK] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Description: Details of employee payroll
Data rows to include:Employee which have been active in the past 7yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company of the employee ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Id of the Invoice/Paygroup/Paycycle', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'AccountInvoiceCycleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver of the employee ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'ContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'CostCentre', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'CostCentre'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the Package record was created in the source system  ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance of the package ex gst ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'CurrentBalanceExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current status of the package  Sample Data :Active, Closed, Closure in Progress ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'CurrentStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Department', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee Id used by the employer to identify the employee eg: payroll number ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'EmployeeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employment type eg: Full time,Casual,Part time,Contract', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'EmploymentStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employment end date', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First deduction date for the package', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'FirstDeductionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow over threshold limit', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'HasAllowOverThreshold'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allow leave without pay', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'HasLeaveWithOutPay'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has no employer share', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'HasNoEmployerShare'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has No FBT Limit Override', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'hasNoFBTLimitOverride'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fee invoiced ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'IsInvoiceFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last deduction made ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'LastDeductionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last rollover date', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'LastRolloverDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the package record was last updated in the source system', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next roll over date ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'NextRolloverDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Occupation', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'Occupation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Percent Exempt Housing', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'PercentExemptHousing'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Salary excluding superannuation', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'Salary'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for package ', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'SalaryPackageId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Percentage allowed for salary package', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'SalaryPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employment start date', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'StartDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work Site Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'SalaryPackage', 'COLUMN', N'WorkSiteName'
GO
