CREATE TABLE [CommonFormat].[AccountGroup] (
    [AccountGroupId]        NVARCHAR (128) NOT NULL,
    [Name]                  NVARCHAR (128) NOT NULL,
    [PayfileUploadPassword] NVARCHAR (128) NULL,
    [InternalContactId]     NVARCHAR (128) NULL,
    [JSON]                  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_AccountGroup] PRIMARY KEY CLUSTERED ([AccountGroupId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Details of employers group', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer group/company group  /Sample Data : NSW Health', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroup', @level2type = N'COLUMN', @level2name = N'AccountGroupId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Group name ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroup', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'AccountGroup', @level2type = N'COLUMN', @level2name = N'InternalContactId';

