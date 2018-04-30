CREATE TABLE [CommonFormat].[NovatedVehicleFBTDeclaration] (
    [NovatedVehicleFBTDeclarationId]   NVARCHAR (128)  NOT NULL,
    [NovatedVehicleId]                 NVARCHAR (128)  NOT NULL,
    [FbtStartDate]                     DATE            NOT NULL,
    [FbtEndDate]                       DATE            NOT NULL,
    [FbtYear]                          INT             NOT NULL,
    [FbtCapitalValue]                  DECIMAL (18, 4) NOT NULL,
    [FbvMethodUsed]                    NVARCHAR (128)  NOT NULL,
    [OdometerStartReading]             INT             NOT NULL,
    [OdometerEndReading]               INT             NOT NULL,
    [LogbookBusinessUsagePercentage]   DECIMAL (18, 4) NULL,
    [TotalDaysUnavailable]             INT             NOT NULL,
    [TotalDaysAvailable]               INT             NULL,
    [ResidualBenefitCentsPerKilometre] DECIMAL (18, 4) NOT NULL,
    [PersonalKilometres]               INT             NOT NULL,
    [DeclarationCompletedbyDriver]     BIT             NOT NULL,
    [DeclarationCompletedbyDriverDate] DATE            NULL,
    [LastUpdatedTimestamp]             DATETIME        NULL,
    [FBVValue]                         DECIMAL (18, 4) NOT NULL,
    CONSTRAINT [PK_NovatedVehicleFBTDeclaration] PRIMARY KEY CLUSTERED ([NovatedVehicleFBTDeclarationId] ASC),
    FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'NovatedVehicleFBTDeclaration
Data rows to include:HistoricalFBT declarations', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'NovatedVehicleFBTDeclarationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Novated Vehicle /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'NovatedVehicleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Start date for fringe benefit calculations for the FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FbtStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'End date for fringe benefit calculations for the FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FbtEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year the FBT year ended in. ie: 2017 is 1/4/2016 to 31/3/2017  /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FbtYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FBT capital value applicable in the FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FbtCapitalValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fringe benefit value calculation method used /Sample Data : Statutory, Operating Cost, Exempt Benefit', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FbvMethodUsed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Odo start reading as at the FbtStartDate /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'OdometerStartReading';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Odo end reading as at the FbtEndDate /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'OdometerEndReading';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Logbook business percentage for FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'LogbookBusinessUsagePercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total days unavailable in the FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'TotalDaysUnavailable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total days available in the FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'TotalDaysAvailable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Exempt benefit vehicle cents per km applicable in the fbt year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'ResidualBenefitCentsPerKilometre';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Personal kms assocated with exempt benefit vehices in the fbt year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'PersonalKilometres';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'has the driver completed an FBT declaration for this FBT year /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'DeclarationCompletedbyDriver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'date the driver completed an fbt declaration /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'DeclarationCompletedbyDriverDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the NovatedVehicleFBTDeclaration record was last updated in the source system /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fringe Benefit Value for the fbt year prior to any employee contribution offset.  /Sample Data : Ie: Capital Value = $20kStat Fract = 20% Employee contribution collected = $3500 FBVValue = $4k', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'NovatedVehicleFBTDeclaration', @level2type = N'COLUMN', @level2name = N'FBVValue';

