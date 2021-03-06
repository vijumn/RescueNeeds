USE [master]
GO
/****** Object:  Database [Rescue_Needs]    Script Date: 8/18/2018 6:40:35 PM ******/
CREATE DATABASE [Rescue_Needs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rescue_Needs', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\Rescue_Needs.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Rescue_Needs_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\Rescue_Needs_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rescue_Needs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rescue_Needs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rescue_Needs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rescue_Needs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rescue_Needs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rescue_Needs] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rescue_Needs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rescue_Needs] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Rescue_Needs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rescue_Needs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rescue_Needs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rescue_Needs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rescue_Needs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rescue_Needs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rescue_Needs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rescue_Needs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rescue_Needs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rescue_Needs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rescue_Needs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rescue_Needs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rescue_Needs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rescue_Needs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rescue_Needs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rescue_Needs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rescue_Needs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rescue_Needs] SET  MULTI_USER 
GO
ALTER DATABASE [Rescue_Needs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rescue_Needs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rescue_Needs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rescue_Needs] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Rescue_Needs]
GO
/****** Object:  Table [dbo].[CampInCharge]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampInCharge](
	[CampInChargeID] [int] IDENTITY(1,1) NOT NULL,
	[CampsID] [int] NULL,
	[PersonID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampInChargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampRequirement]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampRequirement](
	[CampRequirementID] [int] IDENTITY(1,1) NOT NULL,
	[CampsID] [int] NULL,
	[ItemID] [int] NULL,
	[Need] [int] NULL,
	[Recieved] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampRequirementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camps]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camps](
	[CampsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address1] [nvarchar](2000) NULL,
	[PlaceID] [int] NULL,
	[DistrictID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion](
	[DiscussionID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[CampsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscussionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Cell] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Places]    Script Date: 8/18/2018 6:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Places](
	[PlaceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[DistrictID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CampInCharge] ON 

INSERT [dbo].[CampInCharge] ([CampInChargeID], [CampsID], [PersonID]) VALUES (1, 1, 1)
INSERT [dbo].[CampInCharge] ([CampInChargeID], [CampsID], [PersonID]) VALUES (6, 2, 6)
INSERT [dbo].[CampInCharge] ([CampInChargeID], [CampsID], [PersonID]) VALUES (7, 2, 7)
SET IDENTITY_INSERT [dbo].[CampInCharge] OFF
SET IDENTITY_INSERT [dbo].[CampRequirement] ON 

INSERT [dbo].[CampRequirement] ([CampRequirementID], [CampsID], [ItemID], [Need], [Recieved]) VALUES (1, 1, 1, 10, 12)
INSERT [dbo].[CampRequirement] ([CampRequirementID], [CampsID], [ItemID], [Need], [Recieved]) VALUES (2, 2, 1, 20, 0)
SET IDENTITY_INSERT [dbo].[CampRequirement] OFF
SET IDENTITY_INSERT [dbo].[Camps] ON 

INSERT [dbo].[Camps] ([CampsID], [Name], [Address1], [PlaceID], [DistrictID]) VALUES (1, N'Test campus', N'some adddress', 4, 2)
INSERT [dbo].[Camps] ([CampsID], [Name], [Address1], [PlaceID], [DistrictID]) VALUES (2, N'Test camp4', N'dsfs', 4, 2)
SET IDENTITY_INSERT [dbo].[Camps] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (1, N'Alappuzha')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (2, N'Ernakulam')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (3, N'Idukki')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (4, N'Kannur')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (5, N'Kasaragod')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (6, N'Kollam')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (7, N'Kottayam')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (8, N'Kozhikode')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (9, N'Malappuram')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (10, N'Palakkad')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (11, N'Pathanamthitta')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (12, N'Thiruvananthapuram')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (13, N'Thrissur')
INSERT [dbo].[District] ([DistrictID], [Name]) VALUES (14, N'Wayanad')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (1, N'Bed Sheet')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (2, N'Blanket')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (3, N'Towel')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (4, N'Gloves')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (5, N'Bed,Bed Coat ')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (6, N'Tooth Brush(Small, Large)')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (7, N'Tooth Paste ')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (8, N'Bucket')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (9, N'Mug')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (10, N'Soap')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (11, N'Sanitary Napkin')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (12, N'Gas Stove')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (13, N'Kids Dress')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (14, N'Diaper')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (15, N'Note Book')
INSERT [dbo].[Item] ([ItemID], [Name]) VALUES (16, N'Pen/Pencil')
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([PersonID], [LastName], [FirstName], [Address], [Cell], [Email], [Password]) VALUES (1, N'Mohamed', N'Rafeeq', N'TEstste', N'121213434', N'test@test.com', N'Test@1234')
INSERT [dbo].[Persons] ([PersonID], [LastName], [FirstName], [Address], [Cell], [Email], [Password]) VALUES (6, N'sdfsf', N'sdfsdf', N'sdfsf', N'3434324', N'tttttt@teee.cpm', NULL)
INSERT [dbo].[Persons] ([PersonID], [LastName], [FirstName], [Address], [Cell], [Email], [Password]) VALUES (7, N'new ', N'four', NULL, N'343434', NULL, N'Password@123')
SET IDENTITY_INSERT [dbo].[Persons] OFF
SET IDENTITY_INSERT [dbo].[Places] ON 

INSERT [dbo].[Places] ([PlaceID], [Name], [DistrictID]) VALUES (4, N'kadavantara', 2)
INSERT [dbo].[Places] ([PlaceID], [Name], [DistrictID]) VALUES (5, N'Idukki', 3)
INSERT [dbo].[Places] ([PlaceID], [Name], [DistrictID]) VALUES (6, N'Peerumade', 3)
SET IDENTITY_INSERT [dbo].[Places] OFF
ALTER TABLE [dbo].[CampInCharge]  WITH CHECK ADD FOREIGN KEY([CampsID])
REFERENCES [dbo].[Camps] ([CampsID])
GO
ALTER TABLE [dbo].[CampInCharge]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Persons] ([PersonID])
GO
ALTER TABLE [dbo].[CampRequirement]  WITH CHECK ADD FOREIGN KEY([CampsID])
REFERENCES [dbo].[Camps] ([CampsID])
GO
ALTER TABLE [dbo].[CampRequirement]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[Camps]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Camps]  WITH CHECK ADD FOREIGN KEY([PlaceID])
REFERENCES [dbo].[Places] ([PlaceID])
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD FOREIGN KEY([CampsID])
REFERENCES [dbo].[Camps] ([CampsID])
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
USE [master]
GO
ALTER DATABASE [Rescue_Needs] SET  READ_WRITE 
GO
