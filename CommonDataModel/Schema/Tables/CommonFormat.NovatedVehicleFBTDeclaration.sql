CREATE TABLE [CommonFormat].[NovatedVehicleFBTDeclaration]
(
[NovatedVehicleFBTDeclarationId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FbtStartDate] [date] NOT NULL,
[FbtEndDate] [date] NOT NULL,
[FbtYear] [int] NOT NULL,
[FbtCapitalValue] [decimal] (18, 4) NOT NULL,
[FbvMethodUsed] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OdometerStartReading] [int] NOT NULL,
[OdometerEndReading] [int] NOT NULL,
[LogbookBusinessUsagePercentage] [decimal] (18, 4) NULL,
[TotalDaysUnavailable] [int] NOT NULL,
[TotalDaysAvailable] [int] NULL,
[ResidualBenefitCentsPerKilometre] [decimal] (18, 4) NOT NULL,
[PersonalKilometres] [int] NOT NULL,
[DeclarationCompletedbyDriver] [bit] NOT NULL,
[DeclarationCompletedbyDriverDate] [date] NULL,
[LastUpdatedTimestamp] [datetime] NULL,
[FBVValue] [decimal] (18, 4) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFBTDeclaration] ADD CONSTRAINT [PK_NovatedVehicleFBTDeclaration] PRIMARY KEY CLUSTERED  ([NovatedVehicleFBTDeclarationId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFBTDeclaration] ADD CONSTRAINT [FK__NovatedVe__Novat__4BAC3F29] FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'NovatedVehicleFBTDeclaration
Data rows to include:HistoricalFBT declarations', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'has the driver completed an FBT declaration for this FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'DeclarationCompletedbyDriver'
GO
EXEC sp_addextendedproperty N'MS_Description', N'date the driver completed an fbt declaration /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'DeclarationCompletedbyDriverDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'FBT capital value applicable in the FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FbtCapitalValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End date for fringe benefit calculations for the FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FbtEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date for fringe benefit calculations for the FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FbtStartDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Year the FBT year ended in. ie: 2017 is 1/4/2016 to 31/3/2017  /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FbtYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fringe benefit value calculation method used /Sample Data : Statutory, Operating Cost, Exempt Benefit', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FbvMethodUsed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Fringe Benefit Value for the fbt year prior to any employee contribution offset.  /Sample Data : Ie: Capital Value = $20kStat Fract = 20% Employee contribution collected = $3500 FBVValue = $4k', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'FBVValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the NovatedVehicleFBTDeclaration record was last updated in the source system /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Logbook business percentage for FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'LogbookBusinessUsagePercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'NovatedVehicleFBTDeclarationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Odo end reading as at the FbtEndDate /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'OdometerEndReading'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Odo start reading as at the FbtStartDate /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'OdometerStartReading'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Personal kms assocated with exempt benefit vehices in the fbt year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'PersonalKilometres'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Exempt benefit vehicle cents per km applicable in the fbt year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'ResidualBenefitCentsPerKilometre'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total days available in the FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'TotalDaysAvailable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total days unavailable in the FBT year /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclaration', 'COLUMN', N'TotalDaysUnavailable'
GO
