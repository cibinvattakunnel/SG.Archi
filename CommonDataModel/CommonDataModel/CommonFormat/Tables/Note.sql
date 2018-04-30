CREATE TABLE [CommonFormat].[Note] (
    [NoteId]                NVARCHAR (128) NOT NULL,
    [AccountId]             NVARCHAR (128) NULL,
    [AccountInvoiceCycleId] NVARCHAR (128) NULL,
    [ContactId]             NVARCHAR (128) NULL,
    [SalaryPackageId]       NVARCHAR (128) NULL,
    [NoteType]              NVARCHAR (128) NULL,
    [Message]               NVARCHAR (500) NOT NULL,
    [NoteDate]              DATETIME       NULL,
    [Priority]              BIT            NULL,
    CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED ([NoteId] ASC),
    CONSTRAINT [Note_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId]),
    CONSTRAINT [Note_AccountInvoiceCycleId_FK] FOREIGN KEY ([AccountInvoiceCycleId]) REFERENCES [CommonFormat].[AccountInvoiceCycle] ([AccountInvoiceCycleId]),
    CONSTRAINT [Note_ContactId_FK] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId]),
    CONSTRAINT [Note_SalaryPackageId_FK] FOREIGN KEY ([SalaryPackageId]) REFERENCES [CommonFormat].[SalaryPackage] ([SalaryPackageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Internal Notes', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for Note', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'NoteId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer/company', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID Account Invoice Cycle ID', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'AccountInvoiceCycleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'ContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for package ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'SalaryPackageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Type of note eg :Special Notes,Quote Internal Note,Vehicle Policy Information', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'NoteType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Message', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'Message';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Note entered date in source system', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'NoteDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Priority indicator {eg : 1, 0}', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Note', @level2type = N'COLUMN', @level2name = N'Priority';

