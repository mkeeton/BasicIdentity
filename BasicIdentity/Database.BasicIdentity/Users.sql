CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Users_Id]  DEFAULT (newid()),
	[Email] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[SecurityStamp] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumber] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)),
	[TwoFactorEnabled] [bit] NOT NULL CONSTRAINT [DF_Users_TwoFactorEnabled]  DEFAULT ((0)),
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL CONSTRAINT [DF_Users_LockoutEnabled]  DEFAULT ((0)),
	[AccessFailedCount] [int] NOT NULL CONSTRAINT [DF_Users_AccessFailedCount]  DEFAULT ((0)),
	[UserName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
