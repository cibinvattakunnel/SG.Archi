CREATE TABLE [CommonFormat].[NovatedVehicleFBTDeclarationPeriodUnavailable]
(
[NovatedVehicleFBTDeclarationId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NovatedVehicleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UnavailableStartDate] [date] NOT NULL,
[UnavailableEndDate] [date] NOT NULL,
[FbtYear] [int] NOT NULL,
[UnavailableReason] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalDaysUnavailable] [int] NOT NULL,
[LastUpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFBTDeclarationPeriodUnavailable] ADD CONSTRAINT [PK_NovatedVehicleFBTDeclarationPeriodUnavailable] PRIMARY KEY CLUSTERED  ([NovatedVehicleFBTDeclarationId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[NovatedVehicleFBTDeclarationPeriodUnavailable] ADD CONSTRAINT [FK__NovatedVe__Novat__4CA06362] FOREIGN KEY ([NovatedVehicleId]) REFERENCES [CommonFormat].[NovatedVehicle] ([NovatedVehicleId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Description:Periods of days unavailable during an FBT period.', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Year the FBT year ended in. ie: 2017 is 1/4/2016 to 31/3/2017', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'FbtYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last datetime this record was updated', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle FBT Declaration ID /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'NovatedVehicleFBTDeclarationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Novated Vehicle /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'NovatedVehicleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total full days the vehicle is unavailable', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'TotalDaysUnavailable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End Date of the period unavailable. This is the last full day the vehicle was unavailable. This excludes the date of pickup  /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'UnavailableEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reason why the vehicle was unavailable', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'UnavailableReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start Date of the period unavailable. This is the first full day the vehicle was unavailable. This excludes the date of drop off  /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'NovatedVehicleFBTDeclarationPeriodUnavailable', 'COLUMN', N'UnavailableStartDate'
GO
