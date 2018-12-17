USE [CarriageMovers]
GO

/****** Object:  Table [dbo].[Company]    Script Date: 16/12/2018 11:10:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[CompanyTypeID] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Provience] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](50) NOT NULL,
	[About] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ImageURL] [nvarchar](150) NOT NULL,
	[AccountNo] [nchar](50) NULL,
	[BankName] [nvarchar](50) NULL,
	[CurrentBalance] [decimal](18, 0) NULL,
	[CancelTripBalance] [decimal](18, 0) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RemainingBalance] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_CompanyType] FOREIGN KEY([CompanyTypeID])
REFERENCES [dbo].[CompanyType] ([CompnayTypeID])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_CompanyType]
GO

