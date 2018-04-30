CREATE TABLE [CommonFormat].[ContactRole] (
    [ContactRoleId] NVARCHAR (128) NOT NULL,
    [ContactId]     NVARCHAR (128) NOT NULL,
    [RoleType]      NVARCHAR (128) NOT NULL,
    [EntityId]      NVARCHAR (128) NOT NULL,
    [EntityType]    VARCHAR (128)  NULL,
    CONSTRAINT [PK_ContactRole] PRIMARY KEY CLUSTERED ([ContactRoleId] ASC),
    FOREIGN KEY ([ContactId]) REFERENCES [CommonFormat].[Contact] ([ContactId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contact role ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system contact role id /unique id', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole', @level2type = N'COLUMN', @level2name = N'ContactRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system contact id ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole', @level2type = N'COLUMN', @level2name = N'ContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contact role type :  Sample Data : Payroll, FBT Contact,Creditor ,HR,Finance', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole', @level2type = N'COLUMN', @level2name = N'RoleType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Id related to contact role type Sample Data :Payroll(AccountInvoiceCycleId), FBT Contact(AccountId),HR(AccountId)', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole', @level2type = N'COLUMN', @level2name = N'EntityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Entity type:  Sample data : Account,SalaryPackage,AccountInvoiceCycle', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'ContactRole', @level2type = N'COLUMN', @level2name = N'EntityType';

