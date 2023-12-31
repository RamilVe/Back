USE [master]
GO
/****** Object:  Database [lastDb]    Script Date: 28.07.2023 11:02:14 ******/
CREATE DATABASE [lastDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lastDb_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\lastDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'lastDb_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\lastDb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [lastDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lastDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lastDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lastDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lastDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lastDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lastDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [lastDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lastDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lastDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lastDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lastDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lastDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lastDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lastDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lastDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lastDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [lastDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lastDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lastDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lastDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lastDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lastDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [lastDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lastDb] SET RECOVERY FULL 
GO
ALTER DATABASE [lastDb] SET  MULTI_USER 
GO
ALTER DATABASE [lastDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lastDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lastDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lastDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lastDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [lastDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [lastDb] SET QUERY_STORE = OFF
GO
USE [lastDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aboutBanners]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aboutBanners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_aboutBanners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[awards]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_awards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentDetail] [nvarchar](max) NULL,
	[CommentHead] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactUs]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_contactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Desc] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotelFeatures]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotelFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Features] [nvarchar](max) NULL,
 CONSTRAINT [PK_hotelFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posters]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[VidLink] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_posters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Desc] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roomServicePivots]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roomServicePivots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomServiceId] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_roomServicePivots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roomServices]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roomServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_roomServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Desc] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sliders]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Header] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[socials]    Script Date: 28.07.2023 11:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[socials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_socials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720124118_CreateDataBase', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720165221_updateRoomTable', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230720170918_casa', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721084309_UpdateUserTable', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721123030_updateAboutTable', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721124817_updateAboutTable3', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721124850_updateAboutTable4', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721180313_updateRoomtable2', N'6.0.20')
GO
SET IDENTITY_INSERT [dbo].[aboutBanners] ON 

INSERT [dbo].[aboutBanners] ([Id], [Header], [Title], [isDeleted], [Description], [Image]) VALUES (1, N'HOTEL ZANTE SINCE 1992', N'High quality accommodation services.', 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'about1.jpg')
SET IDENTITY_INSERT [dbo].[aboutBanners] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'86642e79-8cc7-469e-bd63-16f1058faba8', N'Member', N'MEMBER', N'7178da71-156e-4575-bc02-c860a381d05a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8b498b6f-6ee7-46e9-a45f-ff0ed4369f8f', N'Admin', N'ADMIN', N'6c815eb8-5fa0-40bd-bf19-253df0360ba5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f2733577-aac7-4c19-8045-1575a222ae0f', N'SuperAdmin', N'SUPERADMIN', N'1d326381-57a9-47a2-84f5-4bb4a6aecb1e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a982091-53c8-4be6-abdc-891bb3bef399', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5b577928-c564-4392-855f-0d4284f27571', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a2677b7-4654-4491-b681-ce1997054020', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3cc042a-b245-41a8-b93a-2b09eafd0db3', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bd114a10-e8dc-489f-b09f-c5c86da38423', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e0ebd9d1-4984-4820-8332-f1c90c49f582', N'86642e79-8cc7-469e-bd63-16f1058faba8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fa7f1829-7e9c-4dad-83b0-861f5d5caec2', N'86642e79-8cc7-469e-bd63-16f1058faba8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4a982091-53c8-4be6-abdc-891bb3bef399', N'gsdhsfd', 0, N'hadfhadf', N'HADFHADF', N'yoyovo7149@rc3s.com', N'YOYOVO7149@RC3S.COM', 0, N'AQAAAAEAACcQAAAAEPcNDI9IdP1Hfx5p4E1sjYf/2kki2TWg1qN0ivx6npij0Ir8WWGITXYfop1TybqXfg==', N'H7NI532FCI2HHG4BPEQAWEG3LCBKXSVZ', N'ecde3461-4528-4f9e-a918-b2055f0db49e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5b577928-c564-4392-855f-0d4284f27571', N'sgdsgds', 0, N'fsdfds', N'FSDFDS', N'gdffg@fsdgsd.gdsg', N'GDFFG@FSDGSD.GDSG', 0, N'AQAAAAEAACcQAAAAEBDM+6E4ZL3Ik2VAbikeBb7IH//O89gKJOG7P0F+JEdxGYGw81oFAaiFkjLiC3a2fQ==', N'BKYFAR6NX4ICPFTW372ZJMIDDF24W2RX', N'd08c0aa1-4f1d-4a95-bfde-dc4dc2e750ee', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6a2677b7-4654-4491-b681-ce1997054020', N'gafgafdhafdfsd', 0, N'afdhergcxzdsg', N'AFDHERGCXZDSG', N'ridito7804@semonir.com', N'RIDITO7804@SEMONIR.COM', 0, N'AQAAAAEAACcQAAAAEBAIULyjesGfzuxH6EBwgqnpoXWjjCUho6phywrLXLsPyZXA1rPAHkH6wQp8gUZH2g==', N'2DXOCTPTUWYKVZZCNX3YVTPLSRXZS654', N'f833d9af-2bb6-466e-bae8-0a69c89f1640', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a3cc042a-b245-41a8-b93a-2b09eafd0db3', N'sgdsgdsgdsf', 0, N'fsdfdsgdfg', N'FSDFDSGDFG', N'gdffg@fsdgsd.gdsggfd', N'GDFFG@FSDGSD.GDSGGFD', 0, N'AQAAAAEAACcQAAAAEMOy6XoxB+sNkybK+6SLZZMqt7x+jGNqnOuBuGdZ0vUqd7GlwUWGdRfJY81+nhvp8w==', N'BGPAQXF6W7ETRIIWFH6T3L55UP4BTTO5', N'58355477-7eea-4206-9343-2b9aba27b907', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd114a10-e8dc-489f-b09f-c5c86da38423', N'sgdsgdsgdsffads', 0, N'fsdfdsgdfgffadsf', N'FSDFDSGDFGFFADSF', N'cifava6422@ridteam.com', N'CIFAVA6422@RIDTEAM.COM', 0, N'AQAAAAEAACcQAAAAELovdqwGVR8iTbT5x7KlnGpceGnGAyhUeDpNmJpT+uGhnv9ukRCTs+NM/C9Th3PeSA==', N'T5BOXUGUFIUH36QP2FK7F3EPBEUMWJGD', N'8f0cf4a2-9d07-43c1-b224-8d245f9ad092', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e0ebd9d1-4984-4820-8332-f1c90c49f582', N'Ramil', 0, N'Ramil', N'RAMIL', N'ramil@gmail.com', N'RAMIL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAwH0jgW2cCMb47/v0gHny2WK68GgLy3Sn0jIpriVHdOSR7iD2R4fykP0byHEjUsng==', N'X442OFCBDBWZV65AMFG26HUOMQGQR53W', N'75e5c609-2226-457f-a263-fb1add130bff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [isActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fa7f1829-7e9c-4dad-83b0-861f5d5caec2', N'sgdsgdsgdsffadsfsdfsdggadg', 0, N'fsdfdsgdfgffadsfgadsgdas', N'FSDFDSGDFGFFADSFGADSGDAS', N'gosewo9648@semonir.com', N'GOSEWO9648@SEMONIR.COM', 0, N'AQAAAAEAACcQAAAAECJ4Msh/rHD8QUzYCqtHL0ln/U6O2LdS1iaQZZwgYrpHhWfzN3ORsqp2bHfRm+kEzQ==', N'WY5RS3M6RLHBVAHFQIOLRYP6F3K6FLIT', N'0b64f1d4-3c5e-43a6-9b4a-5675488c5592', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[awards] ON 

INSERT [dbo].[awards] ([Id], [Img], [Name], [isDeleted]) VALUES (6, N'award1-1.png', N'#1 Global Choice', 0)
INSERT [dbo].[awards] ([Id], [Img], [Name], [isDeleted]) VALUES (9, N'award2.png', N'#2 Top Quality', 0)
INSERT [dbo].[awards] ([Id], [Img], [Name], [isDeleted]) VALUES (11, N'award3.png', N'#1 Genuine Quality', 0)
INSERT [dbo].[awards] ([Id], [Img], [Name], [isDeleted]) VALUES (12, N'd5991b9a-fa1c-4dc2-b214-b9b4893d1bb2_3bec4a8f-fd81-4e50-b79d-ff45f0069e6b_131-200x300.jpg', N'ghdfv', 0)
SET IDENTITY_INSERT [dbo].[awards] OFF
GO
SET IDENTITY_INSERT [dbo].[contactUs] ON 

INSERT [dbo].[contactUs] ([Id], [Name], [Phone], [Email], [Subject], [Message], [isDeleted]) VALUES (1, N'gadsg', N'432546243623', N'leyofe3063@sparkroi.com', N'esagdga', NULL, 0)
INSERT [dbo].[contactUs] ([Id], [Name], [Phone], [Email], [Subject], [Message], [isDeleted]) VALUES (2, N'gadsgasdg', N'asdgasd', N'leyofe3063@sparkroi.com', N'gasdgasdg', N'gsadg', 0)
INSERT [dbo].[contactUs] ([Id], [Name], [Phone], [Email], [Subject], [Message], [isDeleted]) VALUES (3, N'Kohne tikili', N'12424', N'ramil@gmail.com', N'dfbfb', N'kjnhjdfnvmd', 0)
INSERT [dbo].[contactUs] ([Id], [Name], [Phone], [Email], [Subject], [Message], [isDeleted]) VALUES (4, N'ramil', N'0101223245', N'ramil@gmail.com', N'dfbfb', N'dsfdgsdf', 0)
SET IDENTITY_INSERT [dbo].[contactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[posters] ON 

INSERT [dbo].[posters] ([Id], [Image], [VidLink], [isDeleted]) VALUES (1, N'1', N'https://www.youtube.com/embed/Jb9BAz32Gg4', 0)
SET IDENTITY_INSERT [dbo].[posters] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (2, N'room-full-1-720x470.jpg', N'Deluxe Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 243, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (4, N'single-720x470.jpg', N'Single Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 232, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (5, N'honeymoon-720x470.jpg', N'Honeymoon Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 321, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (6, N'king-room-720x470.jpg', N'King Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 232, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (7, N'1-720x470.jpg', N'Family Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 54, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
INSERT [dbo].[rooms] ([Id], [Image], [Name], [Desc], [Price], [isDeleted], [Title]) VALUES (8, N'double-720x470.jpg', N'Double Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit… Zril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur.', 342, 0, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.')
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[roomServicePivots] ON 

INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (4, 2, 2)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (5, 1, 2)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (6, 3, 2)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (7, 4, 2)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (8, 1, 4)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (9, 2, 4)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (10, 5, 4)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (11, 6, 4)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (12, 1, 5)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (13, 2, 5)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (14, 6, 5)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (15, 3, 5)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (16, 4, 6)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (17, 2, 6)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (18, 5, 6)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (19, 1, 6)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (20, 1, 7)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (21, 4, 7)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (22, 5, 7)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (23, 6, 7)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (24, 3, 8)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (25, 2, 8)
INSERT [dbo].[roomServicePivots] ([Id], [RoomServiceId], [RoomId]) VALUES (26, 5, 8)
SET IDENTITY_INSERT [dbo].[roomServicePivots] OFF
GO
SET IDENTITY_INSERT [dbo].[roomServices] ON 

INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (1, N'fa fa-coffee', N'Coffee Maker', 0)
INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (2, N'fa-solid fa-bath', N'Sauna', 0)
INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (3, N'fa fa-cutlery', N'Breakfast', 0)
INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (4, N'fa fa-television', N'Widescreen TV', 0)
INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (5, N'fa fa-snowflake', N'Air Conditioner', 0)
INSERT [dbo].[roomServices] ([Id], [Img], [Name], [isDeleted]) VALUES (6, N'fa fa-eye-slash', N'Private Balcony', 0)
SET IDENTITY_INSERT [dbo].[roomServices] OFF
GO
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([Id], [Image], [Title], [Desc], [isDeleted]) VALUES (2, N'plate.png', N'Restaurant', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.', 0)
INSERT [dbo].[services] ([Id], [Image], [Title], [Desc], [isDeleted]) VALUES (5, N'spa.png', N'Spa - Beauty & Health', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.', 0)
INSERT [dbo].[services] ([Id], [Image], [Title], [Desc], [isDeleted]) VALUES (6, N'conference.png', N'Conference Room', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.', 0)
INSERT [dbo].[services] ([Id], [Image], [Title], [Desc], [isDeleted]) VALUES (8, N'swimmer.png', N'Swimming Pool', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.', 0)
SET IDENTITY_INSERT [dbo].[services] OFF
GO
SET IDENTITY_INSERT [dbo].[sliders] ON 

INSERT [dbo].[sliders] ([Id], [Img], [Header], [Title], [isDeleted]) VALUES (1, N'slider-3.jpg', N'TOUCH THE DREAM', N'Family Room from €89 per night', 0)
INSERT [dbo].[sliders] ([Id], [Img], [Header], [Title], [isDeleted]) VALUES (4, N'slider-1.jpg', N'ZANTE HOTEL', N'Live Your Myth In Greece', 0)
INSERT [dbo].[sliders] ([Id], [Img], [Header], [Title], [isDeleted]) VALUES (7, N'slider-2.jpg', N'ENJOY YOUR HOLIDAYS', N'Navagio Beach', 0)
SET IDENTITY_INSERT [dbo].[sliders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 28.07.2023 11:02:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 28.07.2023 11:02:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_roomServicePivots_RoomId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_roomServicePivots_RoomId] ON [dbo].[roomServicePivots]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_roomServicePivots_RoomServiceId]    Script Date: 28.07.2023 11:02:14 ******/
CREATE NONCLUSTERED INDEX [IX_roomServicePivots_RoomServiceId] ON [dbo].[roomServicePivots]
(
	[RoomServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[awards] ADD  DEFAULT (N'') FOR [Img]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[roomServicePivots]  WITH CHECK ADD  CONSTRAINT [FK_roomServicePivots_rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[rooms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roomServicePivots] CHECK CONSTRAINT [FK_roomServicePivots_rooms_RoomId]
GO
ALTER TABLE [dbo].[roomServicePivots]  WITH CHECK ADD  CONSTRAINT [FK_roomServicePivots_roomServices_RoomServiceId] FOREIGN KEY([RoomServiceId])
REFERENCES [dbo].[roomServices] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roomServicePivots] CHECK CONSTRAINT [FK_roomServicePivots_roomServices_RoomServiceId]
GO
USE [master]
GO
ALTER DATABASE [lastDb] SET  READ_WRITE 
GO
