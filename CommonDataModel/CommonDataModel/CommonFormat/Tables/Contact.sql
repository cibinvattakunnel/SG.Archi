CREATE TABLE [CommonFormat].[Contact] (
    [ContactId]                      NVARCHAR (128) NOT NULL,
    [GivenName]                      NVARCHAR (128) NOT NULL,
    [AccountId]                      NVARCHAR (128) NULL,
    [Surname]                        NVARCHAR (128) NOT NULL,
    [Email1]                         NVARCHAR (128) NULL,
    [Email2]                         NVARCHAR (128) NULL,
    [AccountEmail]                   NVARCHAR (128) NULL,
    [HomePhone]                      NVARCHAR (128) NULL,
    [BusinessPhone]                  NVARCHAR (128) NULL,
    [MobilePhone]                    NVARCHAR (128) NULL,
    [AddressStreet]                  NVARCHAR (128) NULL,
    [AddressSuburb]                  NVARCHAR (128) NULL,
    [AddressState]                   NVARCHAR (128) NULL,
    [AddressPostCode]                NVARCHAR (128) NULL,
    [CanSendMarketingMaterials]      BIT            NULL,
    [CanSendCorporateMarketing]      BIT            NULL,
    [CanSendConsumerMarketing]       BIT            NULL,
    [BankAccountCreditName]          NVARCHAR (128) NULL,
    [BankAccountCreditBank]          NVARCHAR (128) NULL,
    [BankAccountCreditBSB]           NVARCHAR (128) NULL,
    [BankAccountCreditAccountNumber] NVARCHAR (128) NULL,
    [BankAccountDebitName]           NVARCHAR (128) NULL,
    [BankAccountDebitBank]           NVARCHAR (128) NULL,
    [BankAccountDebitBSB]            NVARCHAR (128) NULL,
    [BankAccountDebitAccountNumber]  NVARCHAR (128) NULL,
    [LastUpdatedTimestamp]           NVARCHAR (128) NULL,
    [Salutation]                     NVARCHAR (128) NULL,
    [Gender]                         NVARCHAR (128) NULL,
    [DateofBirth]                    NVARCHAR (128) NULL,
    [MiddleName]                     NVARCHAR (128) NULL,
    [PreferredName]                  NVARCHAR (128) NULL,
    [PostalStreet]                   NVARCHAR (128) NULL,
    [PostalSuburb]                   NVARCHAR (128) NULL,
    [PostalState]                    NVARCHAR (128) NULL,
    [PostalPostcode]                 NVARCHAR (128) NULL,
    [TaxFileNumber]                  NVARCHAR (128) NULL,
    [HasHELP]                        BIT            NULL,
    [HasSupplement]                  BIT            NULL,
    [HasChildSupport]                BIT            NULL,
    [HasNoMarketing]                 BIT            NULL,
    [PreviouslyKnownName]            NVARCHAR (128) NULL,
    [JSON]                           NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Contact_1] PRIMARY KEY CLUSTERED ([ContactId] ASC),
    CONSTRAINT [Contact_AccountId_FK] FOREIGN KEY ([AccountId]) REFERENCES [CommonFormat].[Account] ([AccountId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contact details of individuals employees,drivers,payroll contact etc..
 Contacts that:Have/had active vehicle/package,Have an account/employer role
 Contacts that are not in include and last updated date is > 7 yr', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for contact/driver ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'ContactId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Driver/Individual First name  ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'GivenName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source system ID for employer/company DO NOT Populate if contact have multiple contact role ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AccountId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Driver/Individual Surname  ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'Surname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'primary email address /Sample Data : xxxxxx@xxxxxxxx', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'Email1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'secondary email address /Sample Data : xxxxxx@xxxxxxxx', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'Email2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'email address to be used for communications related to any account roles held by the contact. Eg: if this email has a value and the individual is a payroll contact then payroll advices would be sent to this email address by the system /Sample Data : xxxxxx@xxxxxxxx', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AccountEmail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home Phone', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'HomePhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Business Phone', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BusinessPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mobile Phone', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'MobilePhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Street /Sample Data :5 Phoenix Ave {Comma separated for multiple address line }', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AddressStreet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Suburb /Sample Data :Concord West', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AddressSuburb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address State / Sample Data : NSW, VIC', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AddressState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address Post Code  /Sample Data : 2000', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'AddressPostCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has the user consented to receive marketing materials. This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'CanSendMarketingMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has the user consented to receive corporate marketing materials. No emails will be sent if the CanSendMarketingMaterials = False.This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'CanSendCorporateMarketing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has the user consented to receive consumer marketing materials. No emails will be sent if the CanSendMarketingMaterials = False.This does not affect any communications related to active vehicles/packages. /Sample Data : True/False', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'CanSendConsumerMarketing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account name which the system can credit funds to. Eg: vehicle expenses reimbursements /Sample Data : Jane Citizen Offset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountCreditName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank name which the system can credit funds to /Sample Data : St George Bank', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountCreditBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB which the system can credit funds to /Sample Data :025-658', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountCreditBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account number which the system can credit funds to /Sample Data :123456789', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountCreditAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account name which the system can direct debit funds from Eg: package balance shortfall recovery /Sample Data : Jane Citizen Offset', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountDebitName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank name which the system can direct debit funds from /Sample Data : St George Bank', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountDebitBank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank BSB which the system can direct debit funds from /Sample Data :  :025-658', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountDebitBSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bank account number which the system can direct debit funds from /Sample Data : 123456789', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'BankAccountDebitAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last date time the contact record has been updated /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'LastUpdatedTimestamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Individual salutation /Sample Data : Mr, Mrs, Ms, Dr….', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'Salutation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Gender /Sample Data : Male, Female…..', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date of birth /Sample Data : 1900-01-01', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'DateofBirth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Middle Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Preferred name if different to given name ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PreferredName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Postal address street if different to address /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PostalStreet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Postal address suburb if different to address /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PostalSuburb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Postal address state if different to address /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PostalState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Postal address postcode if different to address /Sample Data : ', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PostalPostcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax File Number', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'TaxFileNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has HELP', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'HasHELP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has Supplement', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'HasSupplement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has Child Support', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'HasChildSupport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Has No Marketing', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'HasNoMarketing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Previously Known Name', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'PreviouslyKnownName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Any additional fields eg ;  
"EmployeeAuthorisation": { "RelationshipToEmployee ": "Financial Planner",    "PermissionDate ": "2010-01-01"  },"ReceiveReport":"Yes"', @level0type = N'SCHEMA', @level0name = N'CommonFormat', @level1type = N'TABLE', @level1name = N'Contact', @level2type = N'COLUMN', @level2name = N'JSON';

