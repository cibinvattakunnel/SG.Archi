CREATE TABLE [CommonFormat].[NovatedVehicle] (
    [NovatedVehicleId]                             NVARCHAR (128)  NOT NULL,
    [AccountId]                                    NVARCHAR (128)  NOT NULL,
    [ContactId]                                    NVARCHAR (128)  NOT NULL,
    [PurchaseType]                                 NVARCHAR (128)  NOT NULL,
    [StartDate]                                    DATE            NOT NULL,
    [EndDate]                                      DATE            NOT NULL,
    [AccountInvoiceCycleId]                        NVARCHAR (128)  NULL,
    [InvoiceFrequency]                             NVARCHAR (128)  NOT NULL,
    [InvoiceCorporateContributionDeduction]        DECIMAL (18, 4) NOT NULL,
    [InvoiceEmployeeContributionDeduction]         DECIMAL (18, 4) NOT NULL,
    [InvoiceLuxuryNonDeductibleDeduction]          DECIMAL (18, 4) NULL,
    [InvoiceLuxuryDisposalDeduction]               DECIMAL (18, 4) NULL,
    [InvoiceFBTDeduction]                          DECIMAL (18, 4) NULL,
    [InvoicedUpTo]                                 DATE            NOT NULL,
    [EmployeeCostCentreCode]                       NVARCHAR (128)  NULL,
    [EmployeeId]                                   NVARCHAR (128)  NULL,
    [CurrentBalanceExGst]                          DECIMAL (18, 4) NULL,
    [Financier]                                    NVARCHAR (128)  NOT NULL,
    [FinanceNextPaymentDue]                        DATE            NOT NULL,
    [FinancePaymentFrequency]                      NVARCHAR (128)  NOT NULL,
    [FinancePaymentAmount]                         DECIMAL (18, 4) NOT NULL,
    [FinanceContractId]                            NVARCHAR (128)  NOT NULL,
    [FinanceBankAccountName]                       NVARCHAR (128)  NOT NULL,
    [FinanceBankAccountBank]                       NVARCHAR (128)  NOT NULL,
    [FinanceBankAccountBSB]                        NVARCHAR (128)  NOT NULL,
    [FinanceBankAccountAccountNumber]              NVARCHAR (128)  NOT NULL,
    [InitialCompanyVehicleDiscoveryDate]           DATE            NOT NULL,
    [InitialCompanyCostPrice]                      DECIMAL (18, 4) NOT NULL,
    [CurrentFBTCalculationMethod]                  NVARCHAR (128)  NULL,
    [InitialFBTCapitalValue]                       DECIMAL (18, 4) NOT NULL,
    [CurrentFBTCapitalValue]                       DECIMAL (18, 4) NOT NULL,
    [CurrentFBVCalculationMethod]                  NVARCHAR (128)  NULL,
    [AnnualPersonalKilometres]                     INT             NULL,
    [CurrentResidualBenefitCentsPerKilometre]      INT             NULL,
    [VehiclePurchaseState]                         NVARCHAR (128)  NULL,
    [VehicleRegistrationState]                     NVARCHAR (128)  NULL,
    [VehicleRegistrationNumber]                    NVARCHAR (128)  NULL,
    [AnnualKilometres]                             INT             NOT NULL,
    [BusinessUsePercentage]                        DECIMAL (18, 4) NOT NULL,
    [FinanceTermInMonths]                          INT             NOT NULL,
    [FinancePaymentsMonthsDeferred]                INT             NOT NULL,
    [ResidualPercentage]                           DECIMAL (18, 4) NOT NULL,
    [ResidualPayoutAmount]                         DECIMAL (18, 4) NOT NULL,
    [VehicleKey]                                   NVARCHAR (128)  NOT NULL,
    [VehicleDescription]                           NVARCHAR (128)  NOT NULL,
    [CurrentInsurer]                               NVARCHAR (128)  NOT NULL,
    [FuelBudgetAnnualExGST]                        NVARCHAR (128)  NULL,
    [MaintenanceBudgetAnnualExGST]                 NVARCHAR (128)  NULL,
    [TyresBudgetAnnualExGST]                       NVARCHAR (128)  NULL,
    [RegoBudgetAnnualExGST]                        NVARCHAR (128)  NULL,
    [OtherRunningCostBudgetAnnualExGST]            NVARCHAR (128)  NULL,
    [CTPBudgetAnnualExGST]                         NVARCHAR (128)  NULL,
    [AnnualComphensiveVehicleInsuranceExGst]       DECIMAL (18, 4) NULL,
    [AnnualComphensiveVehicleInsuranceGst]         DECIMAL (18, 4) NULL,
    [Salary]                                       DECIMAL (18, 4) NOT NULL,
    [Superannuation]                               NVARCHAR (128)  NULL,
    [HasHecsOrFeeDebt]                             BIT             NULL,
    [HasPrivateHealthInsurance]                    BIT             NULL,
    [MonthlyManagementFee]                         DECIMAL (18, 4) NOT NULL,
    [MonthlyAdministrationFee]                     DECIMAL (18, 4) NOT NULL,
    [MonthlyReportingFee]                          DECIMAL (18, 4) NOT NULL,
    [AnnualComphensiveVehicleInsuranceBudgetExGst] DECIMAL (18, 4) NOT NULL,
    [AnnualComphensiveVehicleInsuranceBudgetGst]   DECIMAL (18, 4) NULL,
    [VehiclePurchasePriceOnroad]                   DECIMAL (18, 4) NULL,
    [CreatedDate]                                  DATETIME        NULL,
    [LastUpdatedTimestamp]                         DATETIME        NULL,
    [CurrentStatus]                                NVARCHAR (128)  NULL,
    [VIN]                                          NVARCHAR (128)  NULL,
    [EngineNumber]                                 NVARCHAR (128)  NULL,
    [CurrentFinanceStartDate]                      DATETIME        NULL,
    [RegoExpiryDate]                               DATE            NULL,
    [FinancePaymentAmountIncGST]                   DECIMAL (18, 4) NULL,
    CONSTRAINT [PK_NovatedVehicle] PRIMARY KEY CLUSTERED ([NovatedVehicleId] ASC),
    FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId]),
    FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Details of novated vehicles
Data rows to include:Novated Vehicles which have been active in the past 7yrs', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer/company of the Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver of the Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'ContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase type /Sample Data : New, Refinance, External Financier Takeover, Renovation', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'PurchaseType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' When the vehicle started being managed by the source provider (typically the start date of the lease for new vehicles) ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' The expected management end date (typically the date the residual is due) ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Id of the Invoice/Paygroup /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AccountInvoiceCycleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Invoice/Paygroup Frequency /Sample Data : Weekly, Fortnightly, Monthly', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Corporate contribution pre tax payroll deduction amount for the invoice frequency. This is the actual pre tax deduction excluding InvoiceLuxuryNonDeductibleDeduction, InvoiceLuxuryDisposalDeduction, InvoiceFBTDeduction. /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceCorporateContributionDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee Contribution payroll deduction amount for the invoice frequency. This is the amount of Employee contribution that is credited as an FBV offset. /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceEmployeeContributionDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Luxury Non Deductible payroll deduction amount for the invoice frequency /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceLuxuryNonDeductibleDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Luxury Disposal payroll deduction for the invoice frequency /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceLuxuryDisposalDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT payroll deduction for the invoice frequency /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoiceFBTDeduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last time scheduled deductions were processed on this NovatedVehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InvoicedUpTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cost centre code used by the employer to identify the employee /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'EmployeeCostCentreCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee Id used by the employer to identify the employee /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'EmployeeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current balance of the package exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentBalanceExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier  /Sample Data : St George, Macquarie, BOQ,….', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'Financier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the next finance payment is due to be paid /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceNextPaymentDue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Finance payment frequency /Sample Data : Weekly, Monthly', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinancePaymentFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Finance payment amount exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinancePaymentAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier contract ID. This is used to identify the finance with the financier /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceContractId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier target bank account name /Sample Data : Jane Citizen', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier target bank where finance payments are to be paid /Sample Data : CBA, Westpac', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceBankAccountBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier target bank BSB where finance payments are to be paid /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceBankAccountBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financier target account number where finance payments are to be paid /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First date this employer had knowledge of this vehicle. This is used for luxury leases. /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InitialCompanyVehicleDiscoveryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The initial cost of acquisition of the vehicle by the employer. Usually Onroad - Claimable GST /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InitialCompanyCostPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary calculation method for FBT /Sample Data : Gross Up, Employee Contribution', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentFBTCalculationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Initial FBT capital value. This is the FBT capital value that was initially applied to the vehicle prior to any reductions (e.g. one third reduction after 4 years) /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'InitialFBTCapitalValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current FBT capital value /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentFBTCapitalValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current Fringe Benefit Value calculation method /Sample Data : Statutory, Operating Cost, Exempt Benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentFBVCalculationMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Personal kms used to determine FBV for exempt benefit vehicles /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualPersonalKilometres';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cents per km applicable to personal kms for exempt benefit vehicles /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentResidualBenefitCentsPerKilometre';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State the vehicle was purchased in /Sample Data : NSW, VIC……', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehiclePurchaseState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State the vehicle is currently registered in /Sample Data : NSW, VIC……', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehicleRegistrationState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle Registration number /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehicleRegistrationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Budgeted annual kms /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualKilometres';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Budgeted business usage percentage for usage in operating cost calculations /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'BusinessUsePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Finance term in months /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinanceTermInMonths';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of months the finance payments are deferred /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinancePaymentsMonthsDeferred';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Residual percentage of the finance  /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'ResidualPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Residual amount ex gst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'ResidualPayoutAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Redbook key (if using the old 8 key format, advise destination system owner that 15 key remapping will be required) /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehicleKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Full description of the vehicle as provided by redbook /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehicleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current comprehensive insurance provider /Sample Data : Fleet, Client insurance, not budgeted…..', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentInsurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual fuel budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FuelBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual maintenance/servicing budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'MaintenanceBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual tyre budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'TyresBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual vehicle registration budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'RegoBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual micellaneous running cost budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'OtherRunningCostBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual CTP budget Exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CTPBudgetAnnualExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual actual comprehensive vehicle insurance exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualComphensiveVehicleInsuranceExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual actual comprehensive vehicle insurance gst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualComphensiveVehicleInsuranceGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salary excluding superannuation /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'Salary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Superannuation /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'Superannuation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Does the driver have a hecs or fee help debt /Sample Data : TRUE, FALSE', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'HasHecsOrFeeDebt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Does the driver have private health insurance /Sample Data : TRUE, FALSE', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'HasPrivateHealthInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Monthly management fee exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'MonthlyManagementFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Monthly administration fee exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'MonthlyAdministrationFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'monthly reporting fee exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'MonthlyReportingFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual comprehensive insurance budget exgst /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualComphensiveVehicleInsuranceBudgetExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Annual comprehensive insurance budget GST /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'AnnualComphensiveVehicleInsuranceBudgetGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Onroad price of the vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VehiclePurchasePriceOnroad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the NovatedVehicle record was created in the source system /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CreatedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the NovatedVehicle record was last updated in the source system /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current status of the Novated Vehicle /Sample Data : Active, Closed, Closure in Progress', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle VIN /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle Engine Number /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'EngineNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start date of the current finance. In the case of a refinance it would include the start date of the latest finance.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'CurrentFinanceStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle registration expiry date', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'RegoExpiryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Finance payment amount inclusive GST/Sample Data :$550.00', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicle', @level2type = N'COLUMN', @level2name = N'FinancePaymentAmountIncGST';

