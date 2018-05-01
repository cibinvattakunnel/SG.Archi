CREATE TABLE [CommonFormat].[NovatedVehicleAddOns]
(
[NovatedVehicleAddOnId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddonType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [date] NULL,
[EndDate] [date] NULL,
[BuyExGst] [decimal] (18, 4) NULL,
[BuyGst] [decimal] (18, 4) NULL,
[SellExGST] [decimal] (18, 4) NULL,
[SellGst] [decimal] (18, 4) NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleAddOns] ADD CONSTRAINT [PK_NovatedVehicleAddOns] PRIMARY KEY CLUSTERED  ([NovatedVehicleAddOnId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleAddOns] ADD CONSTRAINT [FK__NovatedVe__Novat__4AB81AF0] FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vehicle Products/Insurances which have been purchased on this vehicle. Eg: LPI, Tyre and Wheel, TAI, GAP', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source System Type of insurance  eg:  Extended warranty 3 Yr', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'AddonType'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'BuyExGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'BuyGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Addon product description/provider Sample Data : ABC Insurance - Extended warranty', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'NovatedVehicleAddOnId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'SellExGST'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'SellGst'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleAddOns', 'COLUMN', N'StartDate'
GO
