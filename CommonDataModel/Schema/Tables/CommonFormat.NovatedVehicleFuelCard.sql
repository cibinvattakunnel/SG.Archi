CREATE TABLE [CommonFormat].[NovatedVehicleFuelCard]
(
[NovatedFuelCardId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FuelcardSupplier] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [date] NULL,
[OrderedDate] [date] NULL,
[ExpiryDate] [date] NULL,
[NewCardRequired] [bit] NULL,
[CostCentre] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFuelCard] ADD CONSTRAINT [PK_NovatedVehicleFuelCard] PRIMARY KEY CLUSTERED  ([NovatedFuelCardId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFuelCard] ADD CONSTRAINT [FK__NovatedVe__Novat__4D94879B] FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Description: Each row represents a relationship with a suppoer to the package. Some examples are: BP, Shell, Caltex, NRMA roadside, Repair Authorisation…', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'fuel account number. Fuel providers support multiple fuel account. /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'fuel card number /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'CardNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cost centre which has been noted in the fuel supplier system /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'CostCentre'
GO
EXEC sp_addextendedproperty N'MS_Description', N'date the fuel card expires /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'ExpiryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N' /Sample Data : Shell,BP,Caltex,Motorpass….', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'FuelcardSupplier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Does a new fuel card need to be ordered on import? /Sample Data : TRUE, FALSE', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'NewCardRequired'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'NovatedFuelCardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the fuel card was ordered /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'OrderedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'start date the fuel card was active /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFuelCard', 'COLUMN', N'StartDate'
GO
