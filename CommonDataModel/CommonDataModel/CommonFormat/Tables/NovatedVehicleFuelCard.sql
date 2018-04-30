CREATE TABLE [CommonFormat].[NovatedVehicleFuelCard] (
    [NovatedFuelCardId] NVARCHAR (128) NOT NULL,
    [NovatedVehicleId]  NVARCHAR (128) NOT NULL,
    [FuelcardSupplier]  NVARCHAR (128) NOT NULL,
    [StartDate]         DATE           NULL,
    [OrderedDate]       DATE           NULL,
    [ExpiryDate]        DATE           NULL,
    [NewCardRequired]   BIT            NULL,
    [CostCentre]        NVARCHAR (128) NULL,
    [CardNumber]        NVARCHAR (128) NULL,
    [AccountNumber]     NVARCHAR (128) NULL,
    CONSTRAINT [PK_NovatedVehicleFuelCard] PRIMARY KEY CLUSTERED ([NovatedFuelCardId] ASC),
    FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description: Each row represents a relationship with a suppoer to the package. Some examples are: BP, Shell, Caltex, NRMA roadside, Repair Authorisation…', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'NovatedFuelCardId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : Shell,BP,Caltex,Motorpass….', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'FuelcardSupplier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'start date the fuel card was active /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the fuel card was ordered /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'OrderedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date the fuel card expires /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'ExpiryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Does a new fuel card need to be ordered on import? /Sample Data : TRUE, FALSE', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'NewCardRequired';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cost centre which has been noted in the fuel supplier system /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'CostCentre';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'fuel card number /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'CardNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'fuel account number. Fuel providers support multiple fuel account. /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFuelCard', @level2type = N'COLUMN', @level2name = N'AccountNumber';

