CREATE TABLE [dbo].[Vehicle]
(
[VehicleID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ClientName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[RegistrationPlate] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[BuildYear] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Make] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Model] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Transmission] [bit] NULL,
[TypeCode] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Variant] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Mnemonic] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[Description] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[Colour] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[EngineNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[VIN] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DepartmentID] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Department] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DriverID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[DriverName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[PurchaseDate] [date] NOT NULL,
[DealerID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[DealerName] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[TotalPurchasePriceGSTInc] [decimal] (18, 0) NULL,
[RegistrationFee] [decimal] (18, 0) NULL,
[StampDuty] [decimal] (18, 0) NULL,
[CTP] [decimal] (18, 0) NULL,
[Finance] [bit] NULL,
[Financier] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[MaxAge] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[MaxKMs] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[MonthlyPaymentexGST] [decimal] (18, 0) NULL,
[LastReadingAmount] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[SaleDate] [date] NULL,
[BuyBack] [bit] NULL,
[Trade(NewVehicle)] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[RBC] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[FinanceType] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[StockNo] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[BasePurchasePriceGSTIncl] [decimal] (18, 0) NULL,
[Accessories] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[AccessoriesPriceGSTInc] [decimal] (18, 0) NULL,
[OtherCostGSTInc] [decimal] (18, 0) NULL,
[ReferralFee] [decimal] (18, 0) NULL,
[DealerContact] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[ReservedRego] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[ETADeliveryDate] [date] NULL,
[OrderActiveDate] [date] NULL,
[PriceLessRegoCTPAndStampDuty] [decimal] (18, 0) NULL,
[E58ConcessionStatus] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[E58ConcessionDate] [date] NULL,
[DeliveryStatus] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Comments] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[ManagementFee] [decimal] (18, 0) NULL,
[AcquisitionFee] [decimal] (18, 0) NULL,
[EndDate] [date] NULL,
[MileageMonitoring] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[VehicleUse] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL,
[MaxAgedealer] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[MAXKMdealer] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[DisposalFee] [decimal] (18, 0) NULL,
[BuyBackAmount] [decimal] (18, 0) NULL,
[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [PK__Vehicle__476B54B2586DCD6F] PRIMARY KEY CLUSTERED  ([VehicleID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'Accessories', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Accessories'
GO
EXEC sp_addextendedproperty N'MS_Description', 'AccessoriesPriceGSTInc', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'AccessoriesPriceGSTInc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'AcquisitionFee', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'AcquisitionFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Active', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Active'
GO
EXEC sp_addextendedproperty N'MS_Description', 'BasePurchasePriceGSTIncl', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'BasePurchasePriceGSTIncl'
GO
EXEC sp_addextendedproperty N'MS_Description', 'BuildYear', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'BuildYear'
GO
EXEC sp_addextendedproperty N'MS_Description', 'BuyBack', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'BuyBack'
GO
EXEC sp_addextendedproperty N'MS_Description', 'BuyBackAmount', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'BuyBackAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Client', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ClientID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ClientName', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ClientName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Colour', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Colour'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Comments', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Comments'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CTP', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'CTP'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DealerContact', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DealerContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Dealer', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DealerID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DealerName', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DealerName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DeliveryStatus', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DeliveryStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Department', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Department', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DepartmentID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Description', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DisposalFee', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DisposalFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Driver', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DriverID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DriverName', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'DriverName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'E58ConcessionDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'E58ConcessionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'E58ConcessionStatus', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'E58ConcessionStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', 'EndDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'EngineNo', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'EngineNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ETADeliveryDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ETADeliveryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Finance', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Finance'
GO
EXEC sp_addextendedproperty N'MS_Description', 'FinanceType', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'FinanceType'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Financier', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Financier'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastReadingAmount', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'LastReadingAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'LastUpdatedTimeStamp'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Make', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Make'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ManagementFee', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ManagementFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MaxAge', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MaxAge'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MaxAgedealer', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MaxAgedealer'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MAXKMdealer', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MAXKMdealer'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MaxKMs', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MaxKMs'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MileageMonitoring', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MileageMonitoring'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Mnemonic', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Mnemonic'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Model', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Model'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MonthlyPaymentexGST', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'MonthlyPaymentexGST'
GO
EXEC sp_addextendedproperty N'MS_Description', 'OrderActiveDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'OrderActiveDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'OtherCostGSTInc', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'OtherCostGSTInc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'PriceLessRegoCTPAndStampDuty', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'PriceLessRegoCTPAndStampDuty'
GO
EXEC sp_addextendedproperty N'MS_Description', 'PurchaseDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'PurchaseDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'RBC', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'RBC'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ReferralFee', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ReferralFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'RegistrationFee', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'RegistrationFee'
GO
EXEC sp_addextendedproperty N'MS_Description', 'RegistrationPlate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'RegistrationPlate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ReservedRego', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'ReservedRego'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SaleDate', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'SaleDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'StampDuty', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'StampDuty'
GO
EXEC sp_addextendedproperty N'MS_Description', 'StockNo', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'StockNo'
GO
EXEC sp_addextendedproperty N'MS_Description', 'TotalPurchasePriceGSTInc', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'TotalPurchasePriceGSTInc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Trade(NewVehicle)', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Trade(NewVehicle)'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Transmission', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Transmission'
GO
EXEC sp_addextendedproperty N'MS_Description', 'TypeCode', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'TypeCode'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Variant', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'Variant'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Source system ID for Vehicle', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'VehicleID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'VehicleUse', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'VehicleUse'
GO
EXEC sp_addextendedproperty N'MS_Description', 'VIN', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle', 'COLUMN', N'VIN'
GO
