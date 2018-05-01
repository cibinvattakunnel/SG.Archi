CREATE TABLE [CommonFormat].[Contact]
(
[ContactId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GivenName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Surname] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email1] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email2] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountEmail] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HomePhone] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BusinessPhone] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MobilePhone] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressStreet] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressSuburb] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPostCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CanSendMarketingMaterials] [bit] NULL,
[CanSendCorporateMarketing] [bit] NULL,
[CanSendConsumerMarketing] [bit] NULL,
[BankAccountCreditName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountCreditAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitBank] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitBSB] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountDebitAccountNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedTimestamp] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Salutation] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateofBirth] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MiddleName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PreferredName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalStreet] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalSuburb] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalPostcode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxFileNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasHELP] [bit] NULL,
[HasSupplement] [bit] NULL,
[HasChildSupport] [bit] NULL,
[HasNoMarketing] [bit] NULL,
[PreviouslyKnownName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RelationshipToEmployee] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PermissionDate] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceiveReport] [bit] NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Contact] ADD CONSTRAINT [PK_Contact_1] PRIMARY KEY CLUSTERED  ([ContactId]) ON [PRIMARY]
GO
ALTER TABLE [CommonFormat].[Contact] ADD CONSTRAINT [Contact_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contact details of individuals employees,drivers,payroll contact etc..
 Contacts that:Have/had active vehicle/package,Have an account/employer role
 Contacts that are not in include and last updated date is > 7 yr', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'email address to be used for communications related to any account roles held by the contact. Eg: if this email has a value and the individual is a payroll contact then payroll advices would be sent to this email address by the system /Sample Data : xxxxxx@xxxxxxxx', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AccountEmail'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for employer/company DO NOT Populate if contact have multiple contact role ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AccountId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Post Code  /Sample Data : 2000', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AddressPostCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address State / Sample Data : NSW, VIC', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AddressState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Street /Sample Data :5 Phoenix Ave {Comma separated for multiple address line }', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AddressStreet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address Suburb /Sample Data :Concord West', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'AddressSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account number which the system can credit funds to /Sample Data :123456789', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountCreditAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank name which the system can credit funds to /Sample Data : St George Bank', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountCreditBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB which the system can credit funds to /Sample Data :025-658', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountCreditBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account name which the system can credit funds to. Eg: vehicle expenses reimbursements /Sample Data : Jane Citizen Offset', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountCreditName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account number which the system can direct debit funds from /Sample Data : 123456789', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountDebitAccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank name which the system can direct debit funds from /Sample Data : St George Bank', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountDebitBank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank BSB which the system can direct debit funds from /Sample Data :  :025-658', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountDebitBSB'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bank account name which the system can direct debit funds from Eg: package balance shortfall recovery /Sample Data : Jane Citizen Offset', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BankAccountDebitName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business Phone', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'BusinessPhone'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has the user consented to receive consumer marketing materials. No emails will be sent if the CanSendMarketingMaterials = False.This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'CanSendConsumerMarketing'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has the user consented to receive corporate marketing materials. No emails will be sent if the CanSendMarketingMaterials = False.This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'CanSendCorporateMarketing'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has the user consented to receive marketing materials. This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'CanSendMarketingMaterials'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source system ID for contact/driver ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'ContactId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date of birth /Sample Data : 1900-01-01', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'DateofBirth'
GO
EXEC sp_addextendedproperty N'MS_Description', N'primary email address /Sample Data : xxxxxx@xxxxxxxx', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'Email1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'secondary email address /Sample Data : xxxxxx@xxxxxxxx', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'Email2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Gender /Sample Data : Male, Female…..', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'Gender'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Driver/Individual First name  ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'GivenName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has Child Support', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'HasChildSupport'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has HELP', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'HasHELP'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has No Marketing', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'HasNoMarketing'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Has Supplement', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'HasSupplement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Home Phone', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'HomePhone'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Any additional values to populate /Sample data :{"name":"value"}', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'JSON'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last date time the contact record has been updated /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'LastUpdatedTimestamp'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Middle Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mobile Phone', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'MobilePhone'
GO
EXEC sp_addextendedproperty N'MS_Description', N'EmployeeAuthorisation.PermissionDate', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PermissionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal address postcode if different to address /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PostalPostcode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal address state if different to address /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PostalState'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal address street if different to address /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PostalStreet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal address suburb if different to address /Sample Data : ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PostalSuburb'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Preferred name if different to given name ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PreferredName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Previously Known Name', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'PreviouslyKnownName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Flag  nominate if default receive report', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'ReceiveReport'
GO
EXEC sp_addextendedproperty N'MS_Description', N'EmployeeAuthorisation.RelationshipToEmployee /Sample data:Financial Planner', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'RelationshipToEmployee'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Individual salutation /Sample Data : Mr, Mrs, Ms, Dr….', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'Salutation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Driver/Individual Surname  ', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'Surname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tax File Number', 'SCHEMA', N'CommonFormat', 'TABLE', N'Contact', 'COLUMN', N'TaxFileNumber'
GO
