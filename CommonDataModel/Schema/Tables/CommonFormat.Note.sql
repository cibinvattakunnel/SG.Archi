CREATE TABLE [CommonFormat].[Note]
(
[NoteId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountInvoiceCycleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalaryPackageId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoteType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Message] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NoteDate] [datetime] NULL,
[Priority] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Note] ADD CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED  ([NoteId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Note] ADD CONSTRAINT [Note_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
GO
ALTER TABLE [CommonFormat].[Note] ADD CONSTRAINT [Note_AccountInvoiceCycleId_FK] FOREIGN KEY ([AccountInvoiceCycleId]) REFERENCES [CommonFormat].[AccountInvoiceCycle] ([AccountInvoiceCycleId])
GO
ALTER TABLE [CommonFormat].[Note] ADD CONSTRAINT [Note_ContactId_FK] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
GO
ALTER TABLE [CommonFormat].[Note] ADD CONSTRAINT [Note_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal Notes', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID Account Invoice Cycle ID', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'AccountInvoiceCycleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'ContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Message', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'Message'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Note entered date in source system', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'NoteDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for Note', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'NoteId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of note eg :Special Notes,Quote Internal Note,Vehicle Policy Information', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'NoteType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Priority indicator {eg : 1, 0}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'Priority'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for package ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Note', 'COLUMN', N'SalaryPackageId'
GO
