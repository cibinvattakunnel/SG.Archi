CREATE SCHEMA [CommonFormat]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'common format schema', @level0type = N'SCHEMA', @level0name = N'CommonFormat';

