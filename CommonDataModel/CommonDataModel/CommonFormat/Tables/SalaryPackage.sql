CREATE TABLE [CommonFormat].[SalaryPackage] (
    [SalaryPackageId]       NVARCHAR (128)  NOT NULL,
    [AccountId]             NVARCHAR (128)  NOT NULL,
    [ContactId]             NVARCHAR (128)  NOT NULL,
    [EmployeeId]            NVARCHAR (128)  NULL,
    [StartDate]             DATE            NULL,
    [EndDate]               DATE            NULL,
    [AccountInvoiceCycleId] NVARCHAR (128)  NULL,
    [CurrentBalanceExGst]   DECIMAL (18, 4) NULL,
    [Salary]                DECIMAL (18, 4) NOT NULL,
    [CreatedDate]           DATETIME        NULL,
    [LastUpdatedTimestamp]  DATETIME        NULL,
    [CurrentStatus]         NVARCHAR (128)  NULL,
    [EmploymentStatus]      NVARCHAR (128)  NULL,
    [FirstDeductionDate]    DATE            NOT NULL,
    [LastDeductionDate]     DATE            NOT NULL,
    [LastRolloverDate]      DATE            NULL,
    [NextRolloverDate]      DATE            NULL,
    [IsInvoiceFee]          BIT             NULL,
    [HasLeaveWithOutPay]    BIT             NULL,
    [HasAllowOverThreshold] BIT             NULL,
    [SalaryPercentage]      INT             NULL,
    [HasNoEmployerShare]    BIT             NULL,
    [PercentExemptHousing]  BIT             NULL,
    [Occupation]            NVARCHAR (128)  NULL,
    [Department]            NVARCHAR (128)  NULL,
    [CostCentre]            NVARCHAR (128)  NULL,
    [hasNoFBTLimitOverride] BIT             NULL,
    [WorkSiteName]          NVARCHAR (128)  NULL,
    CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED ([SalaryPackageId] ASC),
    CONSTRAINT [SalaryPackage_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId]),
    CONSTRAINT [SalaryPackage_AccountInvoiceCycleId_FK] FOREIGN KEY ([AccountInvoiceCycleId]) REFERENCES [CommonFormat].[AccountInvoiceCycle] ([AccountInvoiceCycleId]),
    CONSTRAINT [SalaryPackage_ContactId_FK] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description: Details of employee payroll
Data rows to include:Employee which have been active in the past 7yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for package ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'SalaryPackageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer/company of the employee ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver of the employee ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'ContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee Id used by the employer to identify the employee eg: payroll number ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'EmployeeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employment start date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employment end date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Id of the Invoice/Paygroup/Paycycle', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'AccountInvoiceCycleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current balance of the package ex gst ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'CurrentBalanceExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salary excluding superannuation', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'Salary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the Package record was created in the source system  ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'CreatedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the package record was last updated in the source system', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current status of the package  Sample Data :Active, Closed, Closure in Progress ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'CurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employment type eg: Full time,Casual,Part time,Contract', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'EmploymentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First deduction date for the package', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'FirstDeductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last deduction made ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'LastDeductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last rollover date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'LastRolloverDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Next roll over date ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'NextRolloverDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fee invoiced ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'IsInvoiceFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allow leave without pay', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'HasLeaveWithOutPay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allow over threshold limit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'HasAllowOverThreshold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Percentage allowed for salary package', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'SalaryPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has no employer share', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'HasNoEmployerShare';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Percent Exempt Housing', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'PercentExemptHousing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Occupation', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'Occupation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Department', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'CostCentre', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'CostCentre';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has No FBT Limit Override', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'hasNoFBTLimitOverride';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work Site Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'SalaryPackage', @level2type = N'COLUMN', @level2name = N'WorkSiteName';

