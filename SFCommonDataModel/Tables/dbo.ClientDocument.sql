CREATE TABLE [dbo].[ClientDocument]
(
[ClientDocumentID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[ClientID] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[Document Type] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Extra] [varchar] (128) COLLATE Latin1_General_CI_AS NULL,
[File Path] [varchar] (500) COLLATE Latin1_General_CI_AS NULL,
[Actual File] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientDocument] ADD CONSTRAINT [PK__ClientDo__EF93E8D8E066379B] PRIMARY KEY CLUSTERED  ([ClientDocumentID]) ON [PRIMARY]
GO
