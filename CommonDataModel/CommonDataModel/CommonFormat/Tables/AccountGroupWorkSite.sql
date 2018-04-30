CREATE TABLE [CommonFormat].[AccountGroupWorkSite] (
    [AccountGroupWorkSiteId]    NVARCHAR (128) NOT NULL,
    [AccountGroupId]            NVARCHAR (128) NOT NULL,
    [Name]                      NVARCHAR (128) NOT NULL,
    [State]                     NVARCHAR (128) NULL,
    [InternalContactId]         NVARCHAR (128) NULL,
    [NumberOfFullTimeEmployees] INT            NULL,
    [NumberOfPartTimeEmployees] INT            NULL,
    [NumberOfCasualEmployees]   INT            NULL,
    CONSTRAINT [PK_AccountGroupWorkSite] PRIMARY KEY CLUSTERED ([AccountGroupWorkSiteId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Details of employers work sites ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer work site id', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'AccountGroupWorkSiteId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer group/company group', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'AccountGroupId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Site name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'InternalContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number Of Full TimeEmployees', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'NumberOfFullTimeEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number Of PartTime Employees', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'NumberOfPartTimeEmployees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number Of Casual Employees', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroupWorkSite', @level2type = N'COLUMN', @level2name = N'NumberOfCasualEmployees';

