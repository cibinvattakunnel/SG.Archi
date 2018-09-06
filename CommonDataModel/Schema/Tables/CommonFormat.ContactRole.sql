CREATE TABLE [CommonFormat].[ContactRole]
(
[ContactRoleId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RoleType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EntityId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EntityType] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPrimary] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[ContactRole] ADD CONSTRAINT [PK_ContactRole] PRIMARY KEY CLUSTERED  ([ContactRoleId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[ContactRole] ADD CONSTRAINT [FK__ContactRo__Conta__44FF419A] FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contact role ', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system contact id ', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', 'COLUMN', N'ContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system contact role id /unique id', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', 'COLUMN', N'ContactRoleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Id related to contact role type Sample Data :Payroll(AccountInvoiceCycleId), FBT Contact(AccountId),HR(AccountId)', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', 'COLUMN', N'EntityId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Entity type:  Sample data : Account,SalaryPackage,AccountInvoiceCycle', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', 'COLUMN', N'EntityType'
GO
EXEC sp_addextendedproperty N'MS_Description', N'contact role type :  Sample Data : Payroll, FBT Contact,Creditor ,HR,Finance', 'SCHEMA', N'CommonFormat', 'TABLE', N'ContactRole', 'COLUMN', N'RoleType'
GO
