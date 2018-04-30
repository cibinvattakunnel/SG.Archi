CREATE TABLE [CommonFormat].[NovatedVehicleFBTDeclarationPeriodUnavailable] (
    [NovatedVehicleFBTDeclarationId] NVARCHAR (128) NOT NULL,
    [NovatedVehicleId]               NVARCHAR (128) NOT NULL,
    [UnavailableStartDate]           DATE           NOT NULL,
    [UnavailableEndDate]             DATE           NOT NULL,
    [FbtYear]                        INT            NOT NULL,
    [UnavailableReason]              NVARCHAR (128) NOT NULL,
    [TotalDaysUnavailable]           INT            NOT NULL,
    [LastUpdatedTimestamp]           DATETIME       NULL,
    CONSTRAINT [PK_NovatedVehicleFBTDeclarationPeriodUnavailable] PRIMARY KEY CLUSTERED ([NovatedVehicleFBTDeclarationId] ASC),
    FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description:Periods of days unavailable during an FBT period.', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'NovatedVehicleFBTDeclarationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start Date of the period unavailable. This is the first full day the vehicle was unavailable. This excludes the date of drop off  /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'UnavailableStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'End Date of the period unavailable. This is the last full day the vehicle was unavailable. This excludes the date of pickup  /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'UnavailableEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year the FBT year ended in. ie: 2017 is 1/4/2016 to 31/3/2017', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'FbtYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reason why the vehicle was unavailable', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'UnavailableReason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total full days the vehicle is unavailable', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'TotalDaysUnavailable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last datetime this record was updated', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclarationPeriodUnavailable', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';

