CREATE TABLE [dbo].[ExternalLogins](
	[Id] [uniqueidentifier] NULL CONSTRAINT [DF_ExternalLogins_Id]  DEFAULT (newid()),
	[LoginProvider] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProviderKey] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.ExternalLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ExternalLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExternalLogins_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExternalLogins] CHECK CONSTRAINT [FK_dbo.ExternalLogins_dbo.Users_UserId]
