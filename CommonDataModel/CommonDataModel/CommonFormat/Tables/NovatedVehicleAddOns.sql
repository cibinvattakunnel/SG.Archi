CREATE TABLE [CommonFormat].[NovatedVehicleAddOns] (
    [NovatedVehicleAddOnId] NVARCHAR (128)  NOT NULL,
    [NovatedVehicleId]      NVARCHAR (128)  NOT NULL,
    [Name]                  NVARCHAR (128)  NOT NULL,
    [AddonType]             NVARCHAR (128)  NOT NULL,
    [StartDate]             DATE            NULL,
    [EndDate]               DATE            NULL,
    [BuyExGst]              DECIMAL (18, 4) NULL,
    [BuyGst]                DECIMAL (18, 4) NULL,
    [SellExGST]             DECIMAL (18, 4) NULL,
    [SellGst]               DECIMAL (18, 4) NULL,
    CONSTRAINT [PK_NovatedVehicleAddOns] PRIMARY KEY CLUSTERED ([NovatedVehicleAddOnId] ASC),
    FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle Products/Insurances which have been purchased on this vehicle. Eg: LPI, Tyre and Wheel, TAI, GAP', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'NovatedVehicleAddOnId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Addon product description/provider Sample Data : ABC Insurance - Extended warranty', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source System Type of insurance  eg:  Extended warranty 3 Yr', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'AddonType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'BuyExGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'BuyGst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'SellExGST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N' /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleAddOns', @level2type = N'COLUMN', @level2name = N'SellGst';

