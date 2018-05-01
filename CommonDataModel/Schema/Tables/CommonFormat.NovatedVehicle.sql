CREATE TABLE [CommonFormat].[NovatedVehicle]
(
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PurchaseType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [date] NOT NULL,
[EndDate] [date] NOT NULL,
[AccountInvoiceCycleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvoiceFrequency] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InvoiceCorporateContributionDeduction] [decimal] (18, 4) NOT NULL,
[InvoiceEmployeeContributionDeduction] [decimal] (18, 4) NOT NULL,
[InvoiceLuxuryNonDeductibleDeduction] [decimal] (18, 4) NULL,
[InvoiceLuxuryDisposalDeduction] [decimal] (18, 4) NULL,
[InvoiceFBTDeduction] [decimal] (18, 4) NULL,
[InvoicedUpTo] [date] NOT NULL,
[EmployeeCostCentreCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentBalanceExGst] [decimal] (18, 4) NULL,
[Financier] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinanceNextPaymentDue] [date] NOT NULL,
[FinancePaymentFrequency] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinancePaymentAmount] [decimal] (18, 4) NOT NULL,
[FinanceContractId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinanceBankAccountName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinanceBankAccountBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinanceBankAccountBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FinanceBankAccountAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InitialCompanyVehicleDiscoveryDate] [date] NOT NULL,
[InitialCompanyCostPrice] [decimal] (18, 4) NOT NULL,
[CurrentFBTCalculationMethod] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InitialFBTCapitalValue] [decimal] (18, 4) NOT NULL,
[CurrentFBTCapitalValue] [decimal] (18, 4) NOT NULL,
[CurrentFBVCalculationMethod] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AnnualPersonalKilometres] [int] NULL,
[CurrentResidualBenefitCentsPerKilometre] [int] NULL,
[VehiclePurchaseState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VehicleRegistrationState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VehicleRegistrationNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AnnualKilometres] [int] NOT NULL,
[BusinessUsePercentage] [decimal] (18, 4) NOT NULL,
[FinanceTermInMonths] [int] NOT NULL,
[FinancePaymentsMonthsDeferred] [int] NOT NULL,
[ResidualPercentage] [decimal] (18, 4) NOT NULL,
[ResidualPayoutAmount] [decimal] (18, 4) NOT NULL,
[VehicleKey] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VehicleDescription] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrentInsurer] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FuelBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaintenanceBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TyresBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegoBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherRunningCostBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTPBudgetAnnualExGST] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AnnualComphensiveVehicleInsuranceExGst] [decimal] (18, 4) NULL,
[AnnualComphensiveVehicleInsuranceGst] [decimal] (18, 4) NULL,
[Salary] [decimal] (18, 4) NOT NULL,
[Superannuation] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasHecsOrFeeDebt] [bit] NULL,
[HasPrivateHealthInsurance] [bit] NULL,
[MonthlyManagementFee] [decimal] (18, 4) NOT NULL,
[MonthlyAdministrationFee] [decimal] (18, 4) NOT NULL,
[MonthlyReportingFee] [decimal] (18, 4) NOT NULL,
[AnnualComphensiveVehicleInsuranceBudgetExGst] [decimal] (18, 4) NOT NULL,
[AnnualComphensiveVehicleInsuranceBudgetGst] [decimal] (18, 4) NULL,
[VehiclePurchasePriceOnroad] [decimal] (18, 4) NULL,
[CreatedDate] [datetime] NULL,
[LastUpdatedTimestamp] [datetime] NULL,
[CurrentStatus] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VIN] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EngineNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentFinanceStartDate] [datetime] NULL,
[RegoExpiryDate] [date] NULL,
[FinancePaymentAmountIncGST] [decimal] (18, 4) NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicle] ADD CONSTRAINT [PK_NovatedVehicle] PRIMARY KEY CLUSTERED  ([NovatedVehicleId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicle] ADD CONSTRAINT [FK__NovatedVe__Accou__48CFD27E] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
GO
ALTER TABLE [CommonFormat].[NovatedVehicle] ADD CONSTRAINT [FK__NovatedVe__Conta__49C3F6B7] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Details of novated vehicles
Data rows to include:Novated Vehicles which have been active in the past 7yrs', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company of the Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Id of the Invoice/Paygroup /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AccountInvoiceCycleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual comprehensive insurance budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualComphensiveVehicleInsuranceBudgetExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual comprehensive insurance budget GST /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualComphensiveVehicleInsuranceBudgetGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual actual comprehensive vehicle insurance exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualComphensiveVehicleInsuranceExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual actual comprehensive vehicle insurance gst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualComphensiveVehicleInsuranceGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Budgeted annual kms /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualKilometres'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Personal kms used to determine FBV for exempt benefit vehicles /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'AnnualPersonalKilometres'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Budgeted business usage percentage for usage in operating cost calculations /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'BusinessUsePercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver of the Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'ContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the NovatedVehicle record was created in the source system /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CreatedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual CTP budget Exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CTPBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance of the package exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentBalanceExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary calculation method for FBT /Sample Data : Gross Up, Employee Contribution', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentFBTCalculationMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current FBT capital value /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentFBTCapitalValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current Fringe Benefit Value calculation method /Sample Data : Statutory, Operating Cost, Exempt Benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentFBVCalculationMethod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date of the current finance. In the case of a refinance it would include the start date of the latest finance.', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentFinanceStartDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current comprehensive insurance provider /Sample Data : Fleet, Client insurance, not budgeted…..', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentInsurer'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cents per km applicable to personal kms for exempt benefit vehicles /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentResidualBenefitCentsPerKilometre'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current status of the Novated Vehicle /Sample Data : Active, Closed, Closure in Progress', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'CurrentStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cost centre code used by the employer to identify the employee /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'EmployeeCostCentreCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee Id used by the employer to identify the employee /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'EmployeeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N' The expected management end date (typically the date the residual is due) ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vehicle Engine Number /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'EngineNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier target account number where finance payments are to be paid /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceBankAccountAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier target bank where finance payments are to be paid /Sample Data : CBA, Westpac', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceBankAccountBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier target bank BSB where finance payments are to be paid /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceBankAccountBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier target bank account name /Sample Data : Jane Citizen', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceBankAccountName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier contract ID. This is used to identify the finance with the financier /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceContractId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the next finance payment is due to be paid /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceNextPaymentDue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Finance payment amount exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinancePaymentAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Finance payment amount inclusive GST/Sample Data :$550.00', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinancePaymentAmountIncGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Finance payment frequency /Sample Data : Weekly, Monthly', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinancePaymentFrequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of months the finance payments are deferred /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinancePaymentsMonthsDeferred'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Finance term in months /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FinanceTermInMonths'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Financier  /Sample Data : St George, Macquarie, BOQ,….', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'Financier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual fuel budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'FuelBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Does the driver have a hecs or fee help debt /Sample Data : TRUE, FALSE', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'HasHecsOrFeeDebt'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Does the driver have private health insurance /Sample Data : TRUE, FALSE', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'HasPrivateHealthInsurance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The initial cost of acquisition of the vehicle by the employer. Usually Onroad - Claimable GST /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InitialCompanyCostPrice'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First date this employer had knowledge of this vehicle. This is used for luxury leases. /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InitialCompanyVehicleDiscoveryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Initial FBT capital value. This is the FBT capital value that was initially applied to the vehicle prior to any reductions (e.g. one third reduction after 4 years) /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InitialFBTCapitalValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Corporate contribution pre tax payroll deduction amount for the invoice frequency. This is the actual pre tax deduction excluding InvoiceLuxuryNonDeductibleDeduction, InvoiceLuxuryDisposalDeduction, InvoiceFBTDeduction. /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceCorporateContributionDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last time scheduled deductions were processed on this NovatedVehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoicedUpTo'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee Contribution payroll deduction amount for the invoice frequency. This is the amount of Employee contribution that is credited as an FBV offset. /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceEmployeeContributionDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT payroll deduction for the invoice frequency /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceFBTDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Invoice/Paygroup Frequency /Sample Data : Weekly, Fortnightly, Monthly', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceFrequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Luxury Disposal payroll deduction for the invoice frequency /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceLuxuryDisposalDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Luxury Non Deductible payroll deduction amount for the invoice frequency /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'InvoiceLuxuryNonDeductibleDeduction'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the NovatedVehicle record was last updated in the source system /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual maintenance/servicing budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'MaintenanceBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Monthly administration fee exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'MonthlyAdministrationFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Monthly management fee exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'MonthlyManagementFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'monthly reporting fee exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'MonthlyReportingFee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual micellaneous running cost budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'OtherRunningCostBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Purchase type /Sample Data : New, Refinance, External Financier Takeover, Renovation', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'PurchaseType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual vehicle registration budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'RegoBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vehicle registration expiry date', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'RegoExpiryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Residual amount ex gst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'ResidualPayoutAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Residual percentage of the finance  /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'ResidualPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Salary excluding superannuation /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'Salary'
GO
EXEC sp_addextendedproperty N'MS_Description', N' When the vehicle started being managed by the source provider (typically the start date of the lease for new vehicles) ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'StartDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Superannuation /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'Superannuation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Annual tyre budget exgst /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'TyresBudgetAnnualExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Full description of the vehicle as provided by redbook /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehicleDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redbook key (if using the old 8 key format, advise destination system owner that 15 key remapping will be required) /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehicleKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Onroad price of the vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehiclePurchasePriceOnroad'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State the vehicle was purchased in /Sample Data : NSW, VIC……', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehiclePurchaseState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vehicle Registration number /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehicleRegistrationNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State the vehicle is currently registered in /Sample Data : NSW, VIC……', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VehicleRegistrationState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vehicle VIN /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicle', 'COLUMN', N'VIN'
GO
