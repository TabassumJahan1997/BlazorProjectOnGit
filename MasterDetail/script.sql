USE [master]
GO
/****** Object:  Database [BookingDbMaster]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE DATABASE [BookingDbMaster]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookingDbMaster', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BookingDbMaster.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookingDbMaster_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BookingDbMaster_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookingDbMaster] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookingDbMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookingDbMaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookingDbMaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookingDbMaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookingDbMaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookingDbMaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookingDbMaster] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookingDbMaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookingDbMaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookingDbMaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookingDbMaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookingDbMaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookingDbMaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookingDbMaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookingDbMaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookingDbMaster] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookingDbMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookingDbMaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookingDbMaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookingDbMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookingDbMaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookingDbMaster] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookingDbMaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookingDbMaster] SET RECOVERY FULL 
GO
ALTER DATABASE [BookingDbMaster] SET  MULTI_USER 
GO
ALTER DATABASE [BookingDbMaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookingDbMaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookingDbMaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookingDbMaster] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookingDbMaster] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookingDbMaster] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookingDbMaster', N'ON'
GO
ALTER DATABASE [BookingDbMaster] SET QUERY_STORE = OFF
GO
USE [BookingDbMaster]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/5/2023 12:44:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/5/2023 12:44:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/5/2023 12:44:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/5/2023 12:44:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/5/2023 12:44:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingEntries]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingEntries](
	[BookingEntryId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[SpotId] [int] NOT NULL,
 CONSTRAINT [PK_BookingEntries] PRIMARY KEY CLUSTERED 
(
	[BookingEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Phone] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[MaritialStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keys]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keys](
	[Id] [nvarchar](450) NOT NULL,
	[Version] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Use] [nvarchar](450) NULL,
	[Algorithm] [nvarchar](100) NOT NULL,
	[IsX509Certificate] [bit] NOT NULL,
	[DataProtected] [bit] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Keys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spots]    Script Date: 3/5/2023 12:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spots](
	[SpotId] [int] IDENTITY(1,1) NOT NULL,
	[SpotName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Spots] PRIMARY KEY CLUSTERED 
(
	[SpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230303172324_Master', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230303172350_Tu', N'6.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2debab94-a514-4f7c-96c2-21ac001c549d', N'Tashfia', N'Tashfia', N'TASHFIA', N'tashfia123@gmail.com', N'TASHFIA123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMJwH5Nlc9N1lo5FTn+e5ru91ZfjT9vrWOFZgxYi+YsdtntypGg8Us/zeN36XovuRw==', N'A4SJ2SWJG7JHRDIYZL3XV3QLHNVIBRBM', N'7da437da-a865-46dc-8078-8dea0aae432f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7df0d835-34f5-49d5-bd02-07617c55ede3', N'RahimaAkter', N'RahimaAkter', N'RAHIMAAKTER', N'rahima123@gmail.com', N'RAHIMA123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECJMxPkRR/xkWxdstOgNOMhX9Py66tb+PP/Cv+Me6nf3NkFJqTFsOvsXhrC7lSKfVg==', N'OBUD7HMZBGH7R3DHD7WG66A2223NS6LC', N'c2dcaeb4-1838-4d90-a2db-0839a3484163', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BookingEntries] ON 

INSERT [dbo].[BookingEntries] ([BookingEntryId], [CustomerId], [SpotId]) VALUES (35, 4, 1)
INSERT [dbo].[BookingEntries] ([BookingEntryId], [CustomerId], [SpotId]) VALUES (36, 4, 2)
INSERT [dbo].[BookingEntries] ([BookingEntryId], [CustomerId], [SpotId]) VALUES (37, 4, 4)
INSERT [dbo].[BookingEntries] ([BookingEntryId], [CustomerId], [SpotId]) VALUES (38, 6, 1)
INSERT [dbo].[BookingEntries] ([BookingEntryId], [CustomerId], [SpotId]) VALUES (39, 6, 6)
SET IDENTITY_INSERT [dbo].[BookingEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [BirthDate], [Phone], [Picture], [MaritialStatus]) VALUES (4, N'Afifa Jahan', CAST(N'1985-03-05T00:00:00.0000000' AS DateTime2), 1652135269, N'1c67370e-7dbc-435b-9c80-6572ad503493.png', 0)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [BirthDate], [Phone], [Picture], [MaritialStatus]) VALUES (6, N'Tashfia Khan', CAST(N'1992-03-05T00:00:00.0000000' AS DateTime2), 1563258478, N'21e1bd40-5f2b-43bf-8246-05fab224f04b.jpg', 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[Keys] ([Id], [Version], [Created], [Use], [Algorithm], [IsX509Certificate], [DataProtected], [Data]) VALUES (N'00522FDC12A73F48F3D0E92C2E98A5A4', 1, CAST(N'2023-03-04T15:14:58.5062368' AS DateTime2), N'signing', N'RS256', 0, 1, N'CfDJ8GyJYEVE0N9PqNg2O42yQZcabFARM3WOArQW7S_birHsj_qM0Rp-ygPAKiiASbbVdyDfTgAtf9Ujnvzkvwz_Ere19aPLy6F18-tP9tKefAZgOhGVGOIaVTiGF4mH8Meu1PA3R1FjhaPr0IS3KIPA84CV8gVZ5i9e49wyv-RO9aqMB8WYiFu46Grl0SZNgWfu6murU1tXJDkGGcv07MeHbHP6kk9f4z3KCgx28fr3Ai5sO9jaSYDxaS4WFAaDYeD_FYkfWNjODnvl8VrrD4ga5wQigjDd8GvhYxUVTy_jsAf8s3S_TmRm3_2KxQQmjHx_5olQ7aQAx8chXOhP9Wokycn_PPMsKZhLwgakY7nkZl9LHNLef_2BT7zMbjrbc_k7tU5BYyDsFL6zlSYkUL7Cy4VrN2QoTLDwFZ7_65rxBJUAmV16y2i46wPJ8_1JihovEM3rvE5iTZrPKsIcDib0_N-ibZnksqS_JVTcEO4uglgza4VeNMCzbNmId2hF_dSkGrepmCaChbRuQGfa5TVzKMzluoT6GBRz0S3Cm5LgainuMI1fwDlnuVeXG3sc8iBlMpB4kVqkJn-hwy2Va5Rr6Gi5yZMEQesoWvfcg87L6eIqEPp6y0LGncooWJEtP20iqiPzOn-a5-3BsYWVracfKeFJzv7eUxm-XUGkXSGQF_i1B3PDayc54zFdYkHMQO33zn53HwPFatkK1clG7sjEu19T8gfSe0M4BvfULjr7kW8SSnsCDzGt5_gteiQz298T1wk086g-T9i-i_nEMMZiWVq2pmo4U7h-F58jAWFIyd5QE2AHzzhY43b-yatfvKK7XHG0SbSL_V5XG5sdiUqqoSt_hz2K9ohkDz9AZbVHqfCI2kXOQ_RXqsv3J9MraJ2ek7qXVvKty9BO7dp5NrQXdyhIjueSeuL8R_DJFyMzffPjs4sLsMqS-sqhCXcHJboC8HTtMiHUsbtKsyp8ENEYvVUs9aEcalIf_aaEfx-efy6u97PfynTe2-3FxA2buGEo0s2-fypJuXf3S-pcvnGYa2t1W04krVKlyHlY2MP1p6vw99uhQF5yAqDguosV3Axzgo4VX9nybnGRDf5fPR6FnmhbWb2wNNN_xzvLy-Qp9URWGmHcqQ3vjFAXefnXACKsDiyvCaLOXU_PmxjWELaE1YdQMScqZypxRX-SLsVznLyyC_G0ckG3oN8qhd0D2nMtyoMBI_1Lg7F4qniLpgBfzNNtuhTDd4hTpSi2aYUER3wULYzLp0WacLzgsYNmYzKsHukdCvEFGeBMMANwGMNdsT45EzHkPRGl3xo1DwI4bXAndvAM8lVAMWPgsyCY6j8_S7Fogsp7SoHyEk-GTnj3cbLOCNQpxfu8NByJI4BWxgtAlReAJqBzKsiCIZ3v34om5DJhdsBz-NiA6uNAhst7QXoASxLjaNJqraiWEOV4sWXkpKi0VFZ_j6AfJHRvFOEKcTsXIijNJKOs7vER99-8h_UIffysf55NxKy9dP8tMRjrfX9Ghg2RFrDFlMFnNbT-rD3iFMRnBWI9egGaT6U5GoJuRpFaVW-jN1r6ltipD4iyyLh42wbOUk3L3ZoO-mXYLeW3GeUdnsuU_cdgOAYfPWEfgLxbiZ0KvF3-3X8nS1q_d7dSthZfk0woeyGUgXHg06zul6jffhPvKUOROKfZ0i7dBX1kiXkBpl4hpCQmXJXIrF2Nu6LDebIspH6cSYhdeJoDDNYFTo-c6r2TGRO9OcmPVylNIOTNCDq6RCedsjOFyCany49WGm9s5aVIXwem-si-9B1CMBKXO_BSBEviRKO0LVm6i-GRURRj0yX249Als3ASBopjA1lk4tHvBqbk5Vd_gYZ7_QW9dTcGIRhhT0RAOxc1ryzVayBPJCrL1VmHUGh0iYIkdgJEdGSwnSdedHzqTEisW_Qsl-IwbRt67IoqA2Wr5omJxjodDM_m--9gLsmuszKLnGjWyOaziMMLkG5Bt-bCR9-Ld4p9tnJZi5djKa1N1pgA0z9Xl_A5bl3tu6TtzQ_i1-TcrLQC3XVnMg6ktrqdSMYbnyE0B9E5tBcQDS_tJlIzwTIfsmqVo7A4m164t3tF27QyI6SpuUil_JXTM2CXDvAvbcBRDaV7b1eVd04xTJrlqhmV7z_xypnih3s7hh04YYfYeF6IaVbYfcRASA54_6Yn7sVOAwaC6YfG-np6QUke4uJbk_oSbGwdHP1N7mfh09XOstx3qTW61Dau1hxp4ejTKFeIlXEq02P8k6ULuBBhAWI8webfidG2tYPm1DF3wyHUf54EIFP4n-BeMdkdkXRcMCWuQ1Q4oLAwkSh2gXdc5QR1_pbdM-tLZASMZ93zpuITDQn_nSrSKbj9VWoW0mPslPNcDQhqc_9gj5aud7SRITL4bLSrtiqNd5PLdG4Jhix8nHceXYlVPX5Ifd2ZH9G6-jeG2CMAMzE54s2nNuo7iZDp1uPe6nEI')
GO
SET IDENTITY_INSERT [dbo].[Spots] ON 

INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (1, N'Great Wall of China')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (2, N'Statue of Liberty, New York City')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (3, N' Kremlin')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (4, N'The Colosseum, Rome')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (5, N'The Taj Mahal, India')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (6, N'Grand Canyon, USA')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (7, N'Niagara Falls, Canada & USA')
INSERT [dbo].[Spots] ([SpotId], [SpotName]) VALUES (8, N'The Louvre, Paris')
SET IDENTITY_INSERT [dbo].[Spots] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookingEntries_CustomerId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookingEntries_CustomerId] ON [dbo].[BookingEntries]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookingEntries_SpotId]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookingEntries_SpotId] ON [dbo].[BookingEntries]
(
	[SpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DeviceCodes_DeviceCode]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DeviceCodes_DeviceCode] ON [dbo].[DeviceCodes]
(
	[DeviceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DeviceCodes_Expiration]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_DeviceCodes_Expiration] ON [dbo].[DeviceCodes]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Keys_Use]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Keys_Use] ON [dbo].[Keys]
(
	[Use] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_ConsumedTime]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_ConsumedTime] ON [dbo].[PersistedGrants]
(
	[ConsumedTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_Expiration]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_Expiration] ON [dbo].[PersistedGrants]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_SessionId_Type]    Script Date: 3/5/2023 12:44:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_SessionId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[SessionId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[BookingEntries]  WITH CHECK ADD  CONSTRAINT [FK_BookingEntries_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingEntries] CHECK CONSTRAINT [FK_BookingEntries_Customers_CustomerId]
GO
ALTER TABLE [dbo].[BookingEntries]  WITH CHECK ADD  CONSTRAINT [FK_BookingEntries_Spots_SpotId] FOREIGN KEY([SpotId])
REFERENCES [dbo].[Spots] ([SpotId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingEntries] CHECK CONSTRAINT [FK_BookingEntries_Spots_SpotId]
GO
USE [master]
GO
ALTER DATABASE [BookingDbMaster] SET  READ_WRITE 
GO
