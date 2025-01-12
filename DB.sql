USE [master]
GO
/****** Object:  Database [NowayShop]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE DATABASE [NowayShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NowayShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\NowayShop.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NowayShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\NowayShop_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [NowayShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NowayShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NowayShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NowayShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NowayShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NowayShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NowayShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [NowayShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NowayShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NowayShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NowayShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NowayShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NowayShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NowayShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NowayShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NowayShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NowayShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NowayShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NowayShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NowayShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NowayShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NowayShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NowayShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NowayShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NowayShop] SET RECOVERY FULL 
GO
ALTER DATABASE [NowayShop] SET  MULTI_USER 
GO
ALTER DATABASE [NowayShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NowayShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NowayShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NowayShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NowayShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NowayShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NowayShop', N'ON'
GO
ALTER DATABASE [NowayShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [NowayShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [NowayShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Status] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/25/2024 5:38:36 PM ******/
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
/****** Object:  Table [dbo].[tb_Adv]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Adv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Adv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](150) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](150) NULL,
	[Position] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Company] [nvarchar](max) NULL,
	[Message] [nvarchar](4000) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_News]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TypePayment] [int] NOT NULL,
	[CustomerId] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Posts]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](250) NULL,
	[ProductCode] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[OriginalPrice] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
	[ViewCount] [int] NULL,
	[IsHome] [bit] NOT NULL,
	[IsSale] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductImage]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_tb_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Review]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Review](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Rate] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Subscribe]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Subscribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_Subscribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SystemSetting]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SystemSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](4000) NOT NULL,
	[SettingDescription] [nvarchar](4000) NULL,
 CONSTRAINT [PK_tb_SystemSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_WishList]    Script Date: 12/25/2024 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_WishList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_WishList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240720081645_CreateEntities', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722131507_AddAllowNullInCommonAstract', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722132309_updateAllowNull', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240723130607_updateStringLengthNew', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240723161242_updateNotNullProduct', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240726154203_updateSystemSetting', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240729154056_addAppUser', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240730142645_addStatusUser', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240801093935_removeNullPrice', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240802071951_updateReviewTable', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240802085458_changeNullOrder', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240803101017_addImageUser', N'6.0.21')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636', N'Customer', N'CUSTOMER', N'5b8f72e0-ecab-4ca3-8ed1-8a425807f262')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'576e1990-2ccb-4255-88e0-a829f1151c25', N'Admin', N'ADMIN', N'16f8ae75-ecea-40e8-8440-37968181e99f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e015bebe-92df-4834-8ceb-0b119c22acae', N'Employee', N'EMPLOYEE', N'a52555a5-1741-4932-8a4c-1ced27966afc')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'1924125378104856', N'Facebook', N'33989c21-f119-404b-8182-5bd30d70de6d')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'113100984497818495328', N'Google', N'4addb429-0492-45d6-b19f-e9bf498b6911')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e1aab21-0060-41a7-9bd6-64999d283ac2', N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'33989c21-f119-404b-8182-5bd30d70de6d', N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4addb429-0492-45d6-b19f-e9bf498b6911', N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6599a8ce-e5e2-4cbd-a463-5109bce61166', N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9a242140-8471-4949-8eda-c91710169eb7', N'1b70c69d-0ef0-481c-9eb6-3675ea1ef636')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e01986f-0ec2-4926-a611-2382eb9bd9f5', N'576e1990-2ccb-4255-88e0-a829f1151c25')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2e4e5e5-f845-4731-bccd-333b5f92958d', N'576e1990-2ccb-4255-88e0-a829f1151c25')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'1e1aab21-0060-41a7-9bd6-64999d283ac2', N'tuananh123', N'TUANANH123', N'tuananh@gmail.com', N'TUANANH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIUD/Jz0sVeh7pX+j5gfTGM7Xd/64GqcEqRtZVqSyJwtO3xupWwDyPFKd4C0x73g0w==', N'NVF3C7T3ON3F2AWGQ3TEWRHI5YBM7QAD', N'd217efe2-3a91-4e2f-9532-2206b6347120', N'0833220102', 0, 0, NULL, 1, 0, 2, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'2e01986f-0ec2-4926-a611-2382eb9bd9f5', N'hongha@gmail.com', N'HONGHA@GMAIL.COM', N'hongha@gmail.com', N'HONGHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP3p2NB7auHQpRo26BtLJdCIwEQ4Vnjbn1JHAhTT1q9sR3NyiLQhRiDmDb+H7qAQ9w==', N'EKI2IBT7H5WTPGOT7H4EOQ4QKG5Y4OE6', N'2275124e-8337-49be-8686-f7be16a27e84', N'0833220103', 0, 0, NULL, 1, 0, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1733383544/qbfi2jdswah2lrpxbylk.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'33989c21-f119-404b-8182-5bd30d70de6d', N'prince74427@gmail.com', N'PRINCE74427@GMAIL.COM', N'prince74427@gmail.com', N'PRINCE74427@GMAIL.COM', 0, NULL, N'7QBO423EMNRPNKKHBPZTFI2WHCKJCA2N', N'66a5647b-a3be-4243-ac2a-ea6aaee2548a', NULL, 0, 0, NULL, 1, 0, 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'4addb429-0492-45d6-b19f-e9bf498b6911', N'phap74427@gmail.com', N'PHAP74427@GMAIL.COM', N'phap74427@gmail.com', N'PHAP74427@GMAIL.COM', 0, NULL, N'ZU4VVNLIMA4IVI5I3EUBRGGTB4JKYS2H', N'570cd5ad-da1b-4f65-b962-02f9d95db036', N'1234567890', 0, 0, NULL, 1, 0, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722683789/ukvvz5kd3uq0gp2jmpjv.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'6599a8ce-e5e2-4cbd-a463-5109bce61166', N'phap@gmail.com', N'PHAP@GMAIL.COM', N'phap@gmail.com', N'PHAP@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP+N+yLUXCQ0Bk0S3wHUbLJXgCsQAteAPXhfdosjBugIpSJk1J9LbgoXEySEkjqY7g==', N'2YY3ENN7SV6KTOKIQCNSPQCEZUAPOXZ5', N'41d27045-da49-4692-9aa2-0aa9b00ecad2', NULL, 0, 0, NULL, 1, 0, 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'9a242140-8471-4949-8eda-c91710169eb7', N'mananhphap2003bn', N'MANANHPHAP2003BN', N'phap1@gmail.com', N'PHAP1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHNAXsPdlpBwC7pCVTTX0mqm99frY532aOWeRdjq60vnQrZSVTpz49nX/t5v3ybu1A==', N'VFOSWLDRJQRE57F5IKF75FAPJ4VMRDWY', N'ae3caaa8-bdda-43ff-b9a7-86e5a4b3b24a', N'0833220103', 0, 0, NULL, 1, 0, 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Status], [Image]) VALUES (N'a2e4e5e5-f845-4731-bccd-333b5f92958d', N'phapman', N'PHAPMAN', N'phap220103@gmail.com', N'PHAP220103@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ+xqRipyyBHsM35pMLTxcXuEpKqKY000ipepvB7JSkOwk0NrcQ2pGPEjFU41aepIQ==', N'GHKTGEFPT2M64X6UH4TZIT2BXXIBFGKT', N'3a761a96-ee50-49f9-96b4-9068b669755f', N'0833220103', 0, 0, NULL, 1, 0, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722681479/zahg1d1leu2teec0irkm.jpg')
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (16, N'Trang chủ', N'trang-chu', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, CAST(N'2024-07-22T20:27:24.7702467' AS DateTime2), CAST(N'2024-07-22T20:27:25.1533164' AS DateTime2), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (19, N'Liên hệ', N'lien-he', N'lien-he', N'Liên hệ', N'Liên hệ', N'Liên hệ', N'Liên hệ', 4, 0, NULL, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-28T21:42:13.9567820' AS DateTime2), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (20, N'Sản phẩm', N'san-pham', NULL, NULL, NULL, NULL, NULL, 3, 0, NULL, CAST(N'2024-07-22T21:12:56.0000000' AS DateTime2), CAST(N'2024-07-22T21:51:21.1479075' AS DateTime2), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (22, N'Khuyến mại', N'khuyen-mai', N'post/khuyen-mai', N'Khuyến mại', N'Khuyến mại', N'Khuyến mại', N'Khuyến mại', 5, 0, NULL, CAST(N'2024-07-22T20:47:31.0000000' AS DateTime2), CAST(N'2024-07-29T10:22:46.4723982' AS DateTime2), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (23, N'Giới thiệu', N'gioi-thieu', N'post/gioi-thieu', N'Giới thiệu', N'Giới thiệu', N'Giới thiệu', N'Giới thiệu', 2, 0, NULL, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-29T10:22:54.8338677' AS DateTime2), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Link], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (25, N'Tin tức', N'tin-tuc', N'tin-tuc', N'tin-tuc', N'Tin tức', N'Tin tức', N'Tin tức', 6, 0, NULL, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-28T22:11:07.8949957' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Contact] ON 

INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Software', N'i want to join your company', 0, NULL, CAST(N'2024-07-28T22:56:18.3346072' AS DateTime2), CAST(N'2024-07-28T22:56:18.6749696' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Mẫn Anh Phan', N'prince74427@gmail.com', N'Viettel', N'We want to cooperate with your ', 1, NULL, CAST(N'2024-07-29T09:16:54.6254697' AS DateTime2), CAST(N'2024-07-29T09:16:55.0949941' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Nguyễn Tuấn Anh', N'tuananh@gmail.com', N'Vinaphone company', N'We want to hire you advertisement for out project in the future', 0, NULL, CAST(N'2024-07-29T09:23:09.0433035' AS DateTime2), CAST(N'2024-07-29T09:23:09.3607423' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Mẫn Anh Pháp', N'phap220103@gmail.com', N'Fpt Soft ', N'We want to buy some clothing ', 0, NULL, CAST(N'2024-07-29T09:24:05.0410443' AS DateTime2), CAST(N'2024-07-29T09:24:05.0410827' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (5, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'i want to order a dozen of clothing', 1, NULL, CAST(N'2024-07-29T09:31:47.3900693' AS DateTime2), CAST(N'2024-07-29T09:31:47.3901018' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (6, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'nice clothing', 0, NULL, CAST(N'2024-07-29T09:32:28.8062734' AS DateTime2), CAST(N'2024-07-29T09:32:28.8062765' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (7, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'i like your shop', 1, NULL, CAST(N'2024-07-29T09:33:05.4244286' AS DateTime2), CAST(N'2024-07-29T09:33:05.4244309' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (8, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'i like your shop very much', 0, NULL, CAST(N'2024-07-29T09:34:05.2070349' AS DateTime2), CAST(N'2024-07-29T09:34:05.2070365' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (9, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'i like your shop very much :))', 0, NULL, CAST(N'2024-07-29T09:34:38.6871132' AS DateTime2), CAST(N'2024-07-29T09:34:38.6871147' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (10, N'Đỗ Hồng Hà', N'hongha@gmail.com', N'hợp lực company', N'i love you ', 0, NULL, CAST(N'2024-07-29T10:10:30.9421109' AS DateTime2), CAST(N'2024-07-29T10:10:30.9421505' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (11, N'Đỗ Hồng Hà', N'hongha@gmail.com', N'hợp lực company', N'we can contact', 0, NULL, CAST(N'2024-07-29T10:10:56.7536151' AS DateTime2), CAST(N'2024-07-29T10:10:56.7536165' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (12, N'Nguyễn Tuấn Anh', N'tuananh@gmail.com', N'Vinaphone company', N'i want to change my location', 0, NULL, CAST(N'2024-07-29T10:12:46.0775709' AS DateTime2), CAST(N'2024-07-29T10:12:46.0776448' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (13, N'Mẫn Anh Pháp', N'phap74427@gmail.com', N'Fpt Soft ', N'contact me now', 0, NULL, CAST(N'2024-07-29T10:15:34.5957952' AS DateTime2), CAST(N'2024-07-29T10:15:34.5958308' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (14, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:20.4005352' AS DateTime2), CAST(N'2024-07-29T10:59:20.4005830' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (15, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:20.4005357' AS DateTime2), CAST(N'2024-07-29T10:59:20.4005790' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (16, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:22.6369206' AS DateTime2), CAST(N'2024-07-29T10:59:22.6369218' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (17, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:22.6369206' AS DateTime2), CAST(N'2024-07-29T10:59:22.6369219' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (18, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:24.3730700' AS DateTime2), CAST(N'2024-07-29T10:59:24.3730712' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (19, N'dá', N'đấ', NULL, N'ádads', 0, NULL, CAST(N'2024-07-29T10:59:24.3731768' AS DateTime2), CAST(N'2024-07-29T10:59:24.3731777' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (20, N'dsads', N'ádads', NULL, N'adsads', 0, NULL, CAST(N'2024-07-29T10:59:30.8730562' AS DateTime2), CAST(N'2024-07-29T10:59:30.8730568' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (21, N'dsads', N'ádads', NULL, N'adsads', 0, NULL, CAST(N'2024-07-29T10:59:30.8728500' AS DateTime2), CAST(N'2024-07-29T10:59:30.8728513' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (22, N'Nguyễn Tuấn Anh', N'phap74427@gmail.com', N'Vinaphone company', N'abc', 0, NULL, CAST(N'2024-08-02T14:08:39.1476935' AS DateTime2), CAST(N'2024-08-02T14:08:39.1477449' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (23, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:44.8257808' AS DateTime2), CAST(N'2024-08-13T23:21:44.8258296' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (24, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:44.8257808' AS DateTime2), CAST(N'2024-08-13T23:21:44.8258256' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (25, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:45.6409283' AS DateTime2), CAST(N'2024-08-13T23:21:45.6409298' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (26, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:45.6409283' AS DateTime2), CAST(N'2024-08-13T23:21:45.6409299' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (27, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:46.2987933' AS DateTime2), CAST(N'2024-08-13T23:21:46.2987943' AS DateTime2), NULL)
INSERT [dbo].[tb_Contact] ([Id], [Name], [Email], [Company], [Message], [IsRead], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (28, N'dsa', N'sad', NULL, N'dsasa', 0, NULL, CAST(N'2024-08-13T23:21:46.2988040' AS DateTime2), CAST(N'2024-08-13T23:21:46.2988045' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (1, N'DH2370', N'phap74427@gmail.com', N'1234567890', N'Bắc Ninh', N'phap74427@gmail.com', CAST(434000.00 AS Decimal(18, 2)), 3, 1, N'4addb429-0492-45d6-b19f-e9bf498b6911', 1, N'1234567890', CAST(N'2024-08-02T15:49:37.0957911' AS DateTime2), CAST(N'2024-08-02T15:49:40.7316234' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (2, N'DH5354', N'phap74427@gmail.com', N'1234567890', N'Hà Nội', N'phap74427@gmail.com', CAST(755000.00 AS Decimal(18, 2)), 5, 1, N'4addb429-0492-45d6-b19f-e9bf498b6911', 1, N'1234567890', CAST(N'2024-08-02T15:56:22.9846055' AS DateTime2), CAST(N'2024-08-02T15:56:22.9847110' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (3, N'DH6251', N'phap74427@gmail.com', N'1234567890', N'Bắc Ninh', N'phap74427@gmail.com', CAST(1346000.00 AS Decimal(18, 2)), 6, 1, N'4addb429-0492-45d6-b19f-e9bf498b6911', 1, N'1234567890', CAST(N'2024-08-02T16:00:36.9440375' AS DateTime2), CAST(N'2024-08-02T16:00:36.9440859' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'DH0623', N'Nguyễn Tuấn Anh', N'08512313123', N'Hà Nội', N'tuananh@gmail.com', CAST(434000.00 AS Decimal(18, 2)), 3, 2, NULL, 1, N'08512313123', CAST(N'2024-08-02T21:07:48.2554043' AS DateTime2), CAST(N'2024-08-02T21:07:49.3794293' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (5, N'DH3648', N'Mẫn Anh Tài', N'0982329193', N'Hải Phòng', N'anhtai123@gmail.com', CAST(1138000.00 AS Decimal(18, 2)), 4, 1, NULL, 2, N'0982329193', CAST(N'2024-08-02T21:25:42.1088495' AS DateTime2), CAST(N'2024-08-02T21:25:42.1089187' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (6, N'DH3246', N'Đỗ Hồng Hà', N'083229283', N'Yên Bái', N'hongha@gmail.com', CAST(300000.00 AS Decimal(18, 2)), 4, 2, NULL, 1, N'083229283', CAST(N'2024-08-02T21:26:15.4351872' AS DateTime2), CAST(N'2024-08-02T21:26:15.4351885' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (7, N'DH7358', N'Nguyễn Thanh Hằng', N'0933829154', N'Yên Phong', N'thanhhang@gmail.com', CAST(339000.00 AS Decimal(18, 2)), 2, 2, NULL, 1, N'0933829154', CAST(N'2024-08-02T21:28:48.3613420' AS DateTime2), CAST(N'2024-08-02T21:28:48.3614768' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (8, N'DH3481', N'Đỗ Hải Hà', N'01235119283', N'Hà Nội', N'haiha@gmail.com', CAST(678000.00 AS Decimal(18, 2)), 4, 2, NULL, 2, N'01235119283', CAST(N'2024-08-02T21:31:08.7763154' AS DateTime2), CAST(N'2024-08-02T21:31:08.7764415' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (9, N'DH1173', N'hongha@gmail.com', N'01235119283', N'Yên Bái', N'hongha@gmail.com', CAST(439000.00 AS Decimal(18, 2)), 4, 2, N'2e01986f-0ec2-4926-a611-2382eb9bd9f5', 2, N'01235119283', CAST(N'2024-08-02T21:36:00.0602165' AS DateTime2), CAST(N'2024-08-02T21:36:00.0602660' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (10, N'DH0541', N'Pháp mẫn', N'0833220103', N'Bắc Ninh', N'phap74427@gmail.com', CAST(859000.00 AS Decimal(18, 2)), 3, 2, NULL, 1, N'0833220103', CAST(N'2024-10-28T10:01:52.6564232' AS DateTime2), CAST(N'2024-10-28T10:01:52.6564654' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (11, N'DH8608', N'Pháp mẫn', N'0833220103', N'Bắc Ninh', N'phap74427@gmail.com', CAST(848000.00 AS Decimal(18, 2)), 3, 2, NULL, 1, N'0833220103', CAST(N'2024-10-28T10:02:29.0217552' AS DateTime2), CAST(N'2024-10-28T10:02:29.0217565' AS DateTime2), NULL)
INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [Email], [TotalAmount], [Quantity], [TypePayment], [CustomerId], [Status], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (12, N'DH7005', N'Pháp mẫn', N'0833220103', N'Bắc Ninh', N'phap74427@gmail.com', CAST(448000.00 AS Decimal(18, 2)), 3, 2, NULL, 4, N'0833220103', CAST(N'2024-10-28T10:02:53.5184140' AS DateTime2), CAST(N'2024-10-28T10:02:53.5184153' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (1, 12, CAST(95000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (1, 13, CAST(259000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (1, 14, CAST(80000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (2, 5, CAST(199000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (2, 6, CAST(82000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (2, 10, CAST(76000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 1, CAST(270000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 2, CAST(219000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 3, CAST(239000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 4, CAST(279000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 13, CAST(259000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 14, CAST(80000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (4, 12, CAST(95000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (4, 13, CAST(259000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (4, 14, CAST(80000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (5, 4, CAST(279000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (5, 9, CAST(290000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (6, 11, CAST(55000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (6, 12, CAST(95000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (7, 13, CAST(259000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (7, 14, CAST(80000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (8, 13, CAST(259000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (8, 14, CAST(80000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (9, 5, CAST(199000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (9, 6, CAST(82000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (9, 10, CAST(76000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (10, 18, CAST(150000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (10, 23, CAST(210000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (10, 24, CAST(499000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (11, 22, CAST(139000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (11, 23, CAST(210000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (11, 24, CAST(499000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (12, 21, CAST(99000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (12, 22, CAST(139000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (12, 23, CAST(210000.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[tb_Posts] ON 

INSERT [dbo].[tb_Posts] ([Id], [Title], [Alias], [Description], [Detail], [Image], [CategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Giới thiệu', N'gioi-thieu', N'Giới thiệu về Shop Quần Áo Nam 160STORE', N'<p style="text-align:justify"><span style="font-size:12pt"><span><span style="font-size:13pt">Nếu bạn l&agrave; một t&iacute;n đồ về thời trang th&igrave; thương hiệu Shop Quần &Aacute;o Nam 160STORE kh&ocirc;ng c&ograve;n qu&aacute; xa lạ.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span><span style="font-size:13pt">Shop Quần &Aacute;o Nam 160STORE được th&agrave;nh lập v&agrave;o năm 2012, cửa h&agrave;ng chuy&ecirc;n về thời trang nam tại số 160 Khu&ocirc;ng Việt, quận T&acirc;n Ph&uacute;, th&agrave;nh phố Hồ Ch&iacute; Minh &ndash; đ&acirc;y l&agrave; cửa h&agrave;ng đầu ti&ecirc;n v&agrave; l&agrave; nơi khai sinh ra thương thiệu Shop Quần &Aacute;o Nam 160STORE.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span><span style="font-size:13pt">Tại Shop Quần &Aacute;o Nam 160STORE lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm tốt nhất, những d&ograve;ng sản phẩm thời trang chất lượng, hợp trend v&agrave; gi&aacute; cả hợp l&iacute;, ch&iacute;nh v&igrave; thế trong khoảng thời gian hoạt động Shop Quần &Aacute;o Nam 160STORE đ&atilde; nhận đươc sự đ&oacute;n nhận từ qu&yacute; kh&aacute;ch h&agrave;ng, điều n&agrave;y được thể hiện r&otilde; nhất qua lượt follow ch&iacute;nh thức tr&ecirc;n facebook qua c&aacute;c năm.</span></span></span></p>

<p style="text-align:center"><img class="dt-width-auto" src="https://file.hstatic.net/1000253775/file/untitled-5_d2db34773a1f4e4eb97448686e0a969b_grande.jpg" style="-webkit-font-smoothing:antialiased; box-sizing:border-box; height:auto; margin:0px; max-width:100%; padding:0px; vertical-align:middle; width:auto" /></p>

<p style="text-align:justify"><span style="font-size:12pt"><span><span style="font-size:13pt">Với gi&aacute; trị nền tảng của Shop Quần &Aacute;o Nam 160STORE lu&ocirc;n ch&iacute;nh trực v&agrave; kh&ocirc;ng ngừng ph&aacute;t triển kỹ năng c&ugrave;ng với sự y&ecirc;u mến từ kh&aacute;ch h&agrave;ng, Shop Quần &Aacute;o Nam 160STORE đ&atilde; c&oacute; mặt ở nhiều tỉnh th&agrave;nh tr&ecirc;n khắp cả nước.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span><span style="font-size:13pt">Đặc biệt, mong muốn tạo điều kiện thuận lợi hơn cho kh&aacute;ch h&agrave;ng dễ d&agrave;ng mua sắm ở bất cứ nơi đ&acirc;u, Shop Quần &Aacute;o Nam 160STORE đ&atilde; ph&aacute;t triển hệ thống b&aacute;n h&agrave;ng online tại website www.160store.com.</span></span></span></p>

<p style="text-align:center"><img class="dt-width-auto" src="https://file.hstatic.net/1000253775/file/00_7e978f1b1f9045bfa24190b8d0d0e1e7_grande.png" style="-webkit-font-smoothing:antialiased; box-sizing:border-box; height:auto; margin:0px; max-width:100%; padding:0px; vertical-align:middle; width:auto" /></p>

<p><span style="font-size:13pt">Đến với Shop Quần &Aacute;o Nam 160STORE, bạn sẽ lu&ocirc;n được tư vấn &amp; hỗ trợ tận t&igrave;nh nhất gi&uacute;p bạn th&otilde;a sức thể hiện phong c&aacute;ch ri&ecirc;ng của m&igrave;nh.</span></p>

<div class="eJOY__extension_root_class" id="eJOY__extension_root" style="all: unset;">&nbsp;</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722223593/e4ebonepubb228rytnjh.jpg', 23, N'gioi-thieu', N'gioi-thieu', N'gioi-thieu', 1, NULL, CAST(N'2024-07-29T10:26:32.0000000' AS DateTime2), CAST(N'2024-07-29T10:37:09.7016088' AS DateTime2), NULL)
INSERT [dbo].[tb_Posts] ([Id], [Title], [Alias], [Description], [Detail], [Image], [CategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (5, N'Khuyến mại', N'khuyen-mai', N'Chương trình mua một tặng một', N'<span style="color:rgb(10, 10, 10); font-family:manrope,sans-serif; font-size:16.8px">Chương tr&igrave;nh &ldquo;Mua một tặng một&rdquo; (BOGO) l&agrave; một trong những h&igrave;nh thức khuyến m&atilde;i phổ biến c&oacute; &yacute; nghĩa tạo ra cảm gi&aacute;c cấp b&aacute;ch v&agrave; th&uacute;c đẩy doanh số b&aacute;n h&agrave;ng. BOGO thường &aacute;p dụng cho c&aacute;c sản phẩm theo xu hướng hoặc c&oacute; hạn sử dụng ngắn, gi&uacute;p đẩy h&agrave;ng tồn kho. Do đ&oacute;, trong kinh doanh, quảng c&aacute;o BOGO thường được gọi l&agrave; &ldquo;tự thanh l&yacute;&rdquo;.</span>', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722223644/a9l6r31tx3c8sdye3bmf.jpg', 22, N'khuyen-mai', N'khuyen-mai', N'khuyen-mai', 1, NULL, CAST(N'2024-07-29T10:27:23.0000000' AS DateTime2), CAST(N'2024-07-29T10:37:18.6588600' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Bộ quần áo The Bad God Palmer', N'bo-quan-ao-the-bad-god-palmer', N'ABC', N'Kiểu dáng quần Đứng Mùa Mùa hè Xuất xứ Việt Nam Chất liệu Cotton Phong cách Thể thao Mẫu In Cổ áo Cổ tròn Gửi từ Hà Nội', N'<p>1. Giới thiệu</p>

<p>- Ch&acirc;t liệu: Chất vải umi sản xuất từ sợi visco, c&oacute; đặc t&iacute;nh mềm mại, mịn m&agrave;ng v&agrave; tho&aacute;ng kh&iacute;. Vải umi định lượng 280 thường c&oacute; độ d&agrave;y v&agrave; độ bền cao hơn so với c&aacute;c loại vải umi c&oacute; định lượng thấp hơn.</p>

<p>- H&igrave;nh in được th&ecirc;u logo hiện đại đặc trưng, t&iacute;nh sảo, sắc n&eacute;t, kh&ocirc;ng chỉ thừa</p>

<p>- Đường may tỉ mỉ, chắc chắn - C&ocirc;ng dụng: đi học, đi chơi hoặc khi vận động thể thao</p>

<p>- Thiết kế hiện đại, trẻ trung, năng động.</p>

<p>- Đủ size: M - L - XL</p>

<p>&nbsp;</p>

<p>2. Hướng dẫn sử dụng sản phẩm</p>

<p>- Nhớ lộn tr&aacute;i &aacute;o khi giặt v&agrave; kh&ocirc;ng giặt ng&acirc;m</p>

<p>- Kh&ocirc;ng giặt m&aacute;y trong 2 tuần đầu</p>

<p>- Kh&ocirc;ng sử dụng t.h.u.ố.c t.ẩ.y</p>

<p>- Khi phơi lộn tr&aacute;i v&agrave; kh&ocirc;ng phơi trực tiếp dưới &aacute;nh nắng mặt trời</p>

<p>&nbsp;</p>

<p>3. Bảng size</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 785.766px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 785.766px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtjujbt9vx599" style="border:0px; height:785.766px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 1162.44px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 1162.44px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtjujbtbahl5d" style="border:0px; height:1162.44px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', NULL, CAST(90000.00 AS Decimal(18, 2)), CAST(400000.00 AS Decimal(18, 2)), CAST(270000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 4, N'Bộ quần áo The Bad God Palmer', N'Bộ quần áo The Bad God Palmer', N'Bộ quần áo The Bad God Palmer', NULL, CAST(N'2024-07-25T09:13:23.0000000' AS DateTime2), CAST(N'2024-07-25T21:39:11.7911076' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'do-bo-dui-nam-set-bo-dui-linen-quan-ao-nam-chat-dui-gan-mem-cao-cap-min-mat-thoi-trang-set01', N'ABC', N'Kiểu dáng quần Ống rộng Mùa Mùa hè Xuất xứ Việt Nam Chất liệu Lanh Phong cách Cơ bản, Nhiệt đới, Thể thao Loại trang phục Đồ mặc nhà & đồ lót, Khác, Áo khoác, Quần short, Tất/vớ Mẫu Họa tiết, Sọc caro, Hoa, Khác, Chấm bi Chiều dài tay áo Không tay Cổ áo Cổ sơ mi', N'<h2>&nbsp;</h2>

<div class="Gf4Ro0" style="margin: 1.875rem 0.9375rem 0.9375rem; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;">
<div class="e8lZp3" style="font-size: 0.875rem; line-height: 1.7; overflow: hidden; text-overflow: ellipsis; white-space-collapse: preserve;">
<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxowaivxgjbt40" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxowaivxhxw9df" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxowaivxf4rd6a" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizseswkbfb" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizseub4r2b" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizsevpp7e0" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizsex49n76" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizsekhcp6c" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizselvx546" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lwmaizsenahlbe" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
</div>
</div>
', NULL, CAST(195000.00 AS Decimal(18, 2)), CAST(400000.00 AS Decimal(18, 2)), CAST(219000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 4, N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', NULL, CAST(N'2024-07-25T09:14:08.0000000' AS DateTime2), CAST(N'2024-07-25T21:37:23.6789380' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Set quần áo The Bad God Black B', N'set-quan-ao-the-bad-god-black-b', N'ABC', N'Kiểu dáng quần Đứng Mùa Mùa hè Xuất xứ Việt Nam Chất liệu Cotton Phong cách Cơ bản, Thể thao Loại trang phục Quần, Áo Mẫu Họa tiết Cổ áo Cổ tròn Gửi từ Hà Nội', N'<p>Th&ocirc;ng tin sản phẩm : Ch&acirc;t liệu: Vải được dệt nổi logo cao cấp, bề mặt vải mịn, kh&ocirc;ng x&ugrave;, kh&ocirc;ng bai gi&atilde;o khi sử dụng</p>

<p>- Họa tiết th&ecirc;u logo B đặc trưng, t&iacute;nh sảo, sắc n&eacute;t, kh&ocirc;ng chỉ thừa.</p>

<p>- Đường may tỉ mỉ, chắc chắn</p>

<p>- C&ocirc;ng dụng: đi học, đi chơi hoặc khi vận động thể thao</p>

<p>- Thiết kế hiện đại, trẻ trung, năng động.</p>

<p>- Đủ size: M - L - XL</p>

<p>* Bảng size mẫu The Bad God:</p>

<p>Size M: Nặng 50-62kg ; Cao 1m50-1m63</p>

<p>Size L: Nặng 63-72kg ; Cao 1m64-1m73</p>

<p>Size XL: Nặng 73-80kg ; Cao 1m74-1m82</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721902116/etokqjytfiokvyr6b78n.jpg', CAST(200000.00 AS Decimal(18, 2)), CAST(350000.00 AS Decimal(18, 2)), CAST(239000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 4, N'Set quần áo The Bad God Black B', NULL, NULL, NULL, CAST(N'2024-07-25T17:08:17.7123998' AS DateTime2), CAST(N'2024-07-25T17:08:18.1234621' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'do-bo-dui-nam-set-bo-dui-linen-quan-ao-nam-chat-dui-gan-mem-cao-cap-min-mat-thoi-trang-set01', N'ABC', N'Kiểu dáng quần Ống rộng Mùa Mùa hè Xuất xứ Việt Nam Chất liệu Lanh Phong cách Cơ bản, Nhiệt đới, Thể thao Loại trang phục Đồ mặc nhà & đồ lót, Khác, Áo khoác, Quần short, Tất/vớ Mẫu Họa tiết, Sọc caro, Hoa, Khác, Chấm bi Chiều dài tay áo Không tay Cổ áo Cổ sơ mi', N'<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxowaivxgjbt40" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxowaivxhxw9df" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924248/fmlkq5sr2itbwpbukncr.jpg', CAST(219000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), CAST(279000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 3, N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', N'Đồ bộ đũi nam ,set bộ đũi linen Quần Áo Nam Chất Đũi Gân Mềm Cao Cấp Mịn Mát Thời Trang [SET01]', NULL, CAST(N'2024-07-25T23:17:26.3088773' AS DateTime2), CAST(N'2024-07-25T23:17:26.3089347' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (5, N'Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đùi Áo Sát Nách Co Giãn 4 Chiều Thoáng Mát 2CF08', N'do-bo-nu-𝐂𝐀𝐑𝐃𝐈𝐍𝐀-chat-cotton-nhat-cao-cap-quan-dui-ao-sat-nach-co-gian-4-chieu-thoang-mat-2cf08', N'ABC', N'Kiểu váy Khác Mùa Mùa hè Chất liệu Cotton Loại trang phục Đồ ngủ & Đồ mặc nhà Rất lớn Có Petite Có Chiều dài tay áo Không tay Bản eo Khác Xuất xứ Khác Mẫu Trơn, In Kiểu dáng quần Đùi suông Tên tổ chức chịu trách nhiệm sản xuất CARDINA Địa chỉ tổ chức chịu trách nhiệm sản xuất CARDINA Gửi từ Hà Nội', N'<p>𝗧𝗵𝗼̂𝗻𝗴 𝗧𝗶𝗻 𝗦𝗮̉𝗻 𝗣𝗵𝗮̂̉𝗺: Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đ&ugrave;i &Aacute;o S&aacute;t N&aacute;ch Co Gi&atilde;n 4 Chiều.</p>

<p>➤ Thương hiệu: 𝐂𝐀𝐑𝐃𝐈𝐍𝐀.</p>

<p>➤ M&agrave;u sắc: 6 m&agrave;u.</p>

<p>➤ Chất liệu: Cotton Nhật.</p>

<p>➤ Sản Phẩm Bao Gồm: 1 &aacute;o + 1 quần + 1 t&uacute;i đựng sản phẩm,</p>

<p>➤ Th&ocirc;ng số size: S, M, L, XL, XXL.</p>

<p>➤ Thời trang theo phong c&aacute;ch Nhật Bản hiện đại.</p>

<p>&nbsp;</p>

<p>Đ𝗮̣̆𝗰 Đ𝗶𝗲̂̉𝗺 𝗦𝗮̉𝗻 𝗣𝗵𝗮̂̉𝗺: Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đ&ugrave;i &Aacute;o S&aacute;t N&aacute;ch Co Gi&atilde;n 4 Chiều.</p>

<p>➤ Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất vải cotton Nhật tho&aacute;ng m&aacute;t tự nhi&ecirc;n, co gi&atilde;n 4 chiều, thấm h&uacute;t mồ h&ocirc;i gấp 2 lần vải cotton th&ocirc;ng thường.</p>

<p>➤&Aacute;o form su&ocirc;ng s&aacute;t n&aacute;ch v&agrave; kh&eacute;o l&eacute;o che khuyết điểm để bạn lu&ocirc;n tự tin luyện tập, mặc nh&agrave; hay đi chơi đều rất tiện dụng</p>

<p>➤Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 thiết kế quần đ&ugrave;i basic, c&oacute; 2 t&uacute;i b&ecirc;n trong s&acirc;u rộng, cạp chun co gi&atilde;n thoải m&aacute;i.</p>

<p>➤ Bền bỉ, chống nhăn, kh&ocirc;ng lo bai nh&atilde;o, co r&uacute;t khi giặt.</p>

<p>&nbsp;</p>

<p>3. 𝗛𝘂̛𝗼̛́𝗻𝗴 𝗗𝗮̂̃𝗻 𝗕𝗮̉𝗼 𝗤𝘂𝗮̉𝗻 𝗦𝗮̉𝗻 𝗣𝗵𝗮̂̉𝗺:</p>

<p>➤ Lộn tr&aacute;i sản phẩm khi giặt, kh&ocirc;ng giặt chung sản phẩm trắng với quần &aacute;o tối m&agrave;u.</p>

<p>➤ Kh&ocirc;ng phơi trực tiếp dưới &aacute;nh nắng mặt trời.</p>

<p>➤ Giặt m&aacute;y ở chế độ nhẹ, nhiệt độ thường.</p>

<p>➤ Kh&ocirc;ng sử dụng h&oacute;a chất tẩy c&oacute; chứa Clo, Kh&ocirc;ng ng&acirc;m sản phẩm.</p>

<p>➤ Sấy kh&ocirc; ở nhiệt độ thấp.</p>

<p>➤ L&agrave; ở nhiệt độ thấp 110 độ.</p>

<p>➤ Giặt với sản phẩm c&ugrave;ng m&agrave;u.</p>

<p>➤ Sản Phẩm đậm m&agrave;u h&atilde;ng khuyến c&aacute;o n&ecirc;n giặt nước trắng 2 -3 lần đầu.</p>

<p>&nbsp;</p>

<p>4. 𝗖𝗵𝗶́𝗻𝗵 𝗦𝗮́𝗰𝗵 𝗚𝗶𝗮𝗼 𝗛𝗮̀𝗻𝗴 𝘃𝗮̀ Đ𝗼̂̉𝗶 𝗧𝗿𝗮̉:</p>

<p>➤ H&agrave;ng giống như m&ocirc; tả, h&igrave;nh ảnh v&agrave; video 100%.</p>

<p>➤ Hỗ trợ đổi miễn ph&iacute; với h&agrave;ng lỗi.</p>

<p>➤ Giao h&agrave;ng tr&ecirc;n to&agrave;n quốc theo h&igrave;nh thức COD, v&iacute; Airpay, internet banking,...</p>

<p>➤ Hỗ trợ đổi size v&agrave; đổi m&agrave;u trong v&ograve;ng 15 ng&agrave;y kể từ khi nhận h&agrave;ng, sản phẩm đổi phải c&ograve;n nguy&ecirc;n tem mac v&agrave; chưa qua sử dụng. V&agrave; chỉ hỗ trợ đổi 1 lần duy nhất.</p>

<p>➤ Nếu c&oacute; bất k&igrave; khiếu nại về sản phẩm, khi mở sản phẩm, qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng quay lại video qu&aacute; tr&igrave;nh mở sản phẩm để được đảm bảo 100% đổi lại sản phẩm mới.</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924390/u91zkfiguowtq5hqndtw.jpg', CAST(100000.00 AS Decimal(18, 2)), CAST(399000.00 AS Decimal(18, 2)), CAST(199000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 2, N'Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đùi Áo Sát Nách Co Giãn 4 Chiều Thoáng Mát 2CF08', N'Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đùi Áo Sát Nách Co Giãn 4 Chiều Thoáng Mát 2CF08', N'Đồ Bộ Nữ 𝐂𝐀𝐑𝐃𝐈𝐍𝐀 Chất Cotton Nhật Cao Cấp Quần Đùi Áo Sát Nách Co Giãn 4 Chiều Thoáng Mát 2CF08', NULL, CAST(N'2024-07-25T23:19:47.9316664' AS DateTime2), CAST(N'2024-07-25T23:19:47.9316683' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (6, N'Xiaozhainv Quần áo nữ Hàn Quốc Áo thun ngắn tay sọc mơ dệt kim cho áo thường ngày và đa năng', N'xiaozhainv-quan-ao-nu-han-quoc-ao-thun-ngan-tay-soc-mo-det-kim-cho-ao-thuong-ngay-va-da-nang', N'ABC', N'Xuất xứ Trung Quốc Cổ áo Cổ tròn Chiều dài tay áo Tay ngắn Chất liệu Khác Rất lớn Không Mùa Mùa hè Mẫu Trơn, Sọc Phong cách Cơ bản, Hàn Quốc, Đường phố Cropped Top Không Gửi từ Nước ngoài', N'<p>Thời gian giao h&agrave;ng ước t&iacute;nh cho sản phẩm n&agrave;y l&agrave; 7-9 ng&agrave;y</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>24-5.6💦</p>

<p>&nbsp;</p>

<p>G&oacute;i bao gồm: 1 * &aacute;o ph&ocirc;ng</p>

<p>&nbsp;</p>

<p>Chất liệu: B&ocirc;ng + sợi polyeste + kh&aacute;c</p>

<p>&nbsp;</p>

<p>&quot;Chỉ để tham khảo, kh&ocirc;ng c&oacute; ti&ecirc;u chuẩn thực tế&quot;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>K&iacute;ch thước:</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Chiều d&agrave;i: 50 cm Ngực: 96 ~ 106 cm Chiều rộng vai: 39 cm Chiều d&agrave;i tay &aacute;o: 22 cm</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>❤ V&igrave; hiệu ứng hiển thị v&agrave; &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể hơi kh&aacute;c so với m&agrave;u trong h&igrave;nh. Cảm ơn bạn.</p>

<p>&nbsp;</p>

<p>❤ Nếu sản phẩm của ch&uacute;ng t&ocirc;i kh&ocirc;ng c&oacute; k&iacute;ch thước, m&agrave;u sắc y&ecirc;u th&iacute;ch của bạn hoặc bạn muốn t&igrave;m hiểu th&ecirc;m về th&ocirc;ng tin, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i. Cảm ơn bạn.</p>

<p>&nbsp;</p>

<p>❤ Nếu c&oacute; vấn đề g&igrave; khi nhận h&agrave;ng vui l&ograve;ng li&ecirc;n hệ để xử l&yacute;, ch&uacute;ng t&ocirc;i sẽ giải đ&aacute;p thỏa đ&aacute;ng cho bạn &rdquo;</p>

<p>&nbsp;</p>

<p>❤ Tất cả c&aacute;c sản phẩm được vận chuyển từ nước ngo&agrave;i, Chất lượng si&ecirc;u tốt gi&aacute; rẻ, Nếu bạn th&iacute;ch ch&uacute;ng t&ocirc;i, h&atilde;y nhớ chia sẻ với bạn b&egrave; của bạn</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721989152/dwrpwaqchiw1ztuuj5oe.jpg', CAST(50000.00 AS Decimal(18, 2)), CAST(137000.00 AS Decimal(18, 2)), CAST(82000.00 AS Decimal(18, 2)), 1, NULL, 1, 1, 0, 0, 1, 2, N'Xiaozhainv Quần áo nữ Hàn Quốc Áo thun ngắn tay sọc mơ dệt kim cho áo thường ngày và đa năng', N'Xiaozhainv Quần áo nữ Hàn Quốc Áo thun ngắn tay sọc mơ dệt kim cho áo thường ngày và đa năng', N'Xiaozhainv Quần áo nữ Hàn Quốc Áo thun ngắn tay sọc mơ dệt kim cho áo thường ngày và đa năng', NULL, CAST(N'2024-07-26T17:19:08.5779576' AS DateTime2), CAST(N'2024-07-26T17:19:08.5780827' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (9, N'Paul FITZGERALD Áo sơ mi POLO in chữ phong cách Hàn Quốc tay ngắn + quần short năm điểm mùa hè lười biếng dáng rộng đa năng bộ đồ', N'paul-fitzgerald-ao-so-mi-polo-in-chu-phong-cach-han-quoc-tay-ngan--quan-short-nam-diem-mua-he-luoi-bieng-dang-rong-da-nang-bo-do', N'ABC', N'Danh Mục Shopee icon arrow right Thời Trang Nam icon arrow right Đồ Bộ Kho 139531 Thương hiệu PAUL FITZGERALD Gửi từ Nước ngoài', N'<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/sg-11134201-7rd5q-luhdvmyn3peq40" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/sg-11134201-7rd44-luhdvnmi4slad3" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/sg-11134201-7rd43-luhdvoad5urqd3" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="eJOY__extension_root_class" id="eJOY__extension_root" style="all: unset;">&nbsp;</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220746/cce3qih0isf2byvhy1i3.jpg', CAST(150000.00 AS Decimal(18, 2)), CAST(470000.00 AS Decimal(18, 2)), CAST(290000.00 AS Decimal(18, 2)), 1, NULL, 0, 1, 0, 0, 1, 4, N'Paul FITZGERALD Áo sơ mi POLO in chữ phong cách Hàn Quốc tay ngắn + quần short năm điểm mùa hè lười biếng dáng rộng đa năng bộ đồ', NULL, NULL, NULL, CAST(N'2024-07-29T09:39:03.2748759' AS DateTime2), CAST(N'2024-07-29T09:39:03.2749197' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (10, N'Cocorygirl Quần áo nữ Hàn Quốc Áo thun trắng lệch vai thiết kế xếp li mùa hè & zara', N'cocorygirl-quan-ao-nu-han-quoc-ao-thun-trang-lech-vai-thiet-ke-xep-li-mua-he--zara', N'ABC', N'Xuất xứ Trung Quốc Cổ áo Khác Chiều dài tay áo Tay ngắn Chất liệu Cotton, Khác Rất lớn Không Mùa Mùa hè Mẫu Trơn Phong cách Cơ bản, Tối giản, Retro, sexy Cropped Top Không Petite Có Gửi từ Nước ngoài', N'<p>Thời gian giao h&agrave;ng ước t&iacute;nh cho sản phẩm n&agrave;y l&agrave; 7-9 ng&agrave;y</p>

<p>&nbsp;</p>

<p>2024.5.20▲</p>

<p>&nbsp;</p>

<p>G&oacute;i bao gồm: 1 * Tr&ecirc;n c&ugrave;ng</p>

<p>&nbsp;</p>

<p>Chất liệu: B&ocirc;ng + kh&aacute;c</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>K&iacute;ch THƯỚC: (CM)</p>

<p>&nbsp;</p>

<p>&ldquo;Một k&iacute;ch thước &rdquo; chiều d&agrave;i: 55 cm Ngực: 96 cm</p>

<p>&nbsp;</p>

<p>K&iacute;nh gửi c&aacute;c n&agrave;ng ti&ecirc;n nhỏ&hearts;：</p>

<p>▼Hướng dẫn giặt▼</p>

<p>◆N&ecirc;n giặt sản phẩm thủ c&ocirc;ng, kh&ocirc;ng cho v&agrave;o m&aacute;y giặt</p>

<p>◆Quần &aacute;o sẫm m&agrave;u bị phai m&agrave;u sau khi giặt l&agrave; chuyện b&igrave;nh thường, vui l&ograve;ng giặt ri&ecirc;ng</p>

<p>◆Để tr&aacute;nh bạc m&agrave;u v&agrave; phai m&agrave;u, vui l&ograve;ng kh&ocirc;ng tiếp x&uacute;c với &aacute;nh nắng mạnh</p>

<p>【🌿Ghi ch&uacute; mua sắm.1 &quot;</p>

<p>M&agrave;u sắc thực của mặt h&agrave;ng c&oacute; thể hơi kh&aacute;c so với h&igrave;nh ảnh hiển thị tr&ecirc;n trang web, do nhiều yếu tố như độ s&aacute;ng của m&agrave;n h&igrave;nh v&agrave; độ s&aacute;ng &aacute;nh s&aacute;ng, Vui l&ograve;ng cho ph&eacute;p độ lệch đo lường thủ c&ocirc;ng nhỏ (&plusmn; 3cm) đối với dữ liệu~</p>

<p>【🌿Ghi ch&uacute; mua sắm.2 &quot;</p>

<p>Trước khi đặt h&agrave;ng, vui l&ograve;ng kiểm tra xem th&ocirc;ng tin c&oacute; ch&iacute;nh x&aacute;c kh&ocirc;ng. Vui l&ograve;ng chọn k&iacute;ch thước, m&agrave;u sắc v&agrave; sản phẩm ph&ugrave; hợp. Nhập t&ecirc;n, họ, địa chỉ, người nhận v&agrave; số điện thoại r&otilde; r&agrave;ng.</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220919/w2lpfbmmhj5vwsf0cuuu.jpg', CAST(50000.00 AS Decimal(18, 2)), CAST(130000.00 AS Decimal(18, 2)), CAST(76000.00 AS Decimal(18, 2)), 10, NULL, 0, 1, 0, 0, 1, 2, N'Cocorygirl Quần áo nữ Hàn Quốc Áo thun trắng lệch vai thiết kế xếp li mùa hè & zara', NULL, NULL, NULL, CAST(N'2024-07-29T09:41:56.4111782' AS DateTime2), CAST(N'2024-07-29T09:41:56.4111803' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (11, N'Mũ lưỡi trai HEART chất liệu vải kaki, form mềm thời trang, nón lưỡi trai nam nữ LOULI SAIGON M09', N'mu-luoi-trai-heart-chat-lieu-vai-kaki-form-mem-thoi-trang-non-luoi-trai-nam-nu-louli-saigon-m09', N'ABC', N'Chất liệu kaki, Cotton Xuất xứ Việt Nam Giới tính Unisex Kiểu nón Mũ lưỡi trai Loại Phụ Kiện Caps Tên tổ chức chịu trách nhiệm sản xuất LOULI SAIGON Địa chỉ tổ chức chịu trách nhiệm sản xuất Thủ Đức, TPHCM Gửi từ TP. Hồ Chí Minh', N'<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 144.906px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 144.906px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-44pk51vpzwov87" style="border:0px; box-sizing:border-box; height:144.906px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 932.688px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 932.688px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-h1p7vs6vzwovba" style="border:0px; box-sizing:border-box; height:932.688px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 144.906px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 144.906px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-xw08k541zwov98" style="border:0px; box-sizing:border-box; height:144.906px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 1017.47px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 1017.47px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-2rg0rce2zwov22" style="border:0px; box-sizing:border-box; height:1017.47px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 363.141px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 363.141px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-fhss7wo2zwov0f" style="border:0px; box-sizing:border-box; height:363.141px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 363.141px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 363.141px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-4rsu13w2zwov72" style="border:0px; box-sizing:border-box; height:363.141px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 218.25px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 218.25px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-7qukw-lemprzgm1e435d" style="border:0px; box-sizing:border-box; height:218.25px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 873px; padding-bottom: 628.5px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 873px; height: 628.5px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134202-23030-lnusrxg3zwovc9" style="border:0px; box-sizing:border-box; height:628.5px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221121/wc3aehvhmw2i0ji3jo5k.jpg', CAST(25000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), CAST(55000.00 AS Decimal(18, 2)), 123, NULL, 0, 1, 0, 0, 1, 3, N'Mũ lưỡi trai HEART chất liệu vải kaki, form mềm thời trang, nón lưỡi trai nam nữ LOULI SAIGON M09', NULL, NULL, NULL, CAST(N'2024-07-29T09:45:17.0000000' AS DateTime2), CAST(N'2024-08-02T21:59:59.8373324' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (12, N'Haibinzoulu Áo Sơ Mi Ngắn Tay Oversize In Họa Tiết Cá Tính Dành Cho Nam Và Nữ', N'haibinzoulu-ao-so-mi-ngan-tay-oversize-in-hoa-tiet-ca-tinh-danh-cho-nam-va-nu', N'ABC', N'Tall Fit Không Địa chỉ tổ chức chịu trách nhiệm sản xuất Đang cập nhật Phong cách Cơ bản, Đường phố, Thể thao, Hàn Quốc Chiều dài tay áo Tay ngắn Chất liệu Khác Rất lớn Có Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật Xuất xứ Trung Quốc Mẫu Hoa, Những người khác, Đồng bằng, In Gửi từ Nước ngoài', N'<p>Nỗi &aacute;m ảnh theo phong c&aacute;ch lấy cảm hứng từ x&atilde; hội của bạn</p>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 1120px; padding-bottom: 1120px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 1120px; height: 1120px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/e47b0ae5592d38fad2bcfd793d29e276" style="border:0px; box-sizing:border-box; height:1120px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 1120px; padding-bottom: 1120px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 1120px; height: 1120px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/135a1d886db00d48c4f05db7ad5d8fd7" style="border:0px; box-sizing:border-box; height:1120px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>

<div class="QN2lPu" style="box-sizing: border-box; margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="box-sizing: border-box; position: relative; width: 1120px; padding-bottom: 1120px;">
<div class="P7IbkE" style="box-sizing: border-box; position: absolute; left: 0px; right: 0px; width: 1120px; height: 1120px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/d27aa615790a391ef71020e9ba88176d" style="border:0px; box-sizing:border-box; height:1120px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s ease 0s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221334/cj81j0ix44edscaimas6.jpg', CAST(40000.00 AS Decimal(18, 2)), CAST(166000.00 AS Decimal(18, 2)), CAST(95000.00 AS Decimal(18, 2)), 120, NULL, 0, 1, 0, 0, 1, 3, N'Haibinzoulu Áo Sơ Mi Ngắn Tay Oversize In Họa Tiết Cá Tính Dành Cho Nam Và Nữ', NULL, NULL, NULL, CAST(N'2024-07-29T09:48:50.4661299' AS DateTime2), CAST(N'2024-07-29T09:48:50.4661758' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (13, N'Quần suông ống rộng nam nữ PEALO chất liệu linen thời trang cao', N'quan-suong-ong-rong-nam-nu-pealo-chat-lieu-linen-thoi-trang-cao', N'ABC', N'Chiều dài quần Chiều dài đầy đủ Chất liệu Lanh Kiểu dáng quần Ống rộng Gửi từ Hà Nội', N'<p>Quần su&ocirc;ng ống rộng PEALO chất liệu Linen thời trang cao cấp:</p>

<p>&nbsp;</p>

<p>Th&ocirc;ng tin sản phẩm</p>

<p>- Chất liệu : vải Linen cao cấp, mềm mại, &quot;n&acirc;ng niu&quot; l&agrave;n da người mặc, khả năng chịu nhiệt tốt, thấm h&uacute;t nhanh, kh&ocirc;ng bay m&agrave;u</p>

<p>- M&agrave;u sắc : 3 m&agrave;u basic Trắng/Be/Đen dễ phối đồ, ph&ugrave; hợp với mọi m&agrave;u da</p>

<p>- Quần được thiết kế cạp chun k&egrave;m d&acirc;y để ph&ugrave; hợp với mọi th&acirc;n h&igrave;nh</p>

<p>- Phong c&aacute;ch trẻ trung, năng động, tối giản, t&iacute;nh ứng dụng cao</p>

<p>&nbsp;</p>

<p>Ch&iacute;nh s&aacute;ch hỗ trợ:</p>

<p>- Cam kết 100% đổi size nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa (kh&aacute;ch giữ nguy&ecirc;n Tem m&aacute;c v&agrave; chưa qua sử dụng)</p>

<p>- Cam kết hỗ trợ 100% chi ph&iacute; nếu shop gửi sai sản phẩm tới kh&aacute;ch h&agrave;ng</p>

<p>- Cam kết hỗ trợ đổi sang sản phẩm kh&aacute;c c&ugrave;ng gi&aacute; hoặc cao hơn nếu kh&aacute;ch h&agrave;ng c&oacute; nhu cầu</p>

<p>- Nếu c&oacute; bất k&igrave; khiếu nại cần Pealo hỗ trợ về sản phẩm, bạn vui l&ograve;ng quay video qu&aacute; tr&igrave;nh mở sản phẩm để được đảm bảo 100% đổi lại sản phẩm mới nếu trong qu&aacute; tr&igrave;nh giao h&agrave;ng bị hư hỏng h&agrave;ng h&oacute;a.</p>

<p>&nbsp;</p>

<p>*Lưu &yacute;: Khi bạn gặp bất k&igrave; vấn đề g&igrave; về sản phẩm, đừng vội đ&aacute;nh gi&aacute; m&agrave; h&atilde;y li&ecirc;n hệ cho Pealo để được hỗ trợ một c&aacute;ch tốt nhất.</p>

<p>&nbsp;</p>

<p>HOTLINE (+84) 869 299 879</p>

<p>&nbsp;</p>

<p>PEALO xin cảm ơn QU&Yacute; KH&Aacute;CH đ&atilde; tin tưởng ủng hộ v&agrave; mong cậu sẽ c&oacute; trải nghiệm tốt nhất khi sử dụng sản phẩm của ch&uacute;ng tớ ^^</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-ltnu59j5kwel2e" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320276/v8hzonxpvl8bx2i1mcw5.jpg', CAST(120000.00 AS Decimal(18, 2)), CAST(450000.00 AS Decimal(18, 2)), CAST(259000.00 AS Decimal(18, 2)), 25, NULL, 0, 0, 0, 0, 1, 4, N'Quần suông ống rộng nam nữ PEALO chất liệu linen thời trang cao', NULL, NULL, NULL, CAST(N'2024-07-30T13:17:48.6059137' AS DateTime2), CAST(N'2024-07-30T13:17:48.6059580' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (14, N'Quần Short Nam H90 Chất Thun Co Giãn, Quần Đùi Nam Màu Đen Basic Đơn Giản Thấm Hút Mồ Hôi QST01', N'quan-short-nam-h90-chat-thun-co-gian-quan-dui-nam-mau-den-basic-don-gian-tham-hut-mo-hoi-qst01', N'ABC', N'Phong cách Cơ bản Tall Fit Không Loại khóa Nút Xuất xứ Việt Nam Dịp Hằng Ngày Loại quần short Jersey Chất liệu Khác Mẫu Trơn Rất lớn Không Bản eo Giữa eo Tên tổ chức chịu trách nhiệm sản xuất Công ty TNHH SX&TM thời trang H90 Địa chỉ tổ chức chịu trách nhiệm sản xuất Cổ Linh, Long Biên, Hà Nội Gửi từ Hà Nội', N'<p>Quần Short Nam H90 Chất Thun Co Gi&atilde;n, Quần Đ&ugrave;i Nam M&agrave;u Đen Basic Đơn Giản Thấm H&uacute;t Mồ H&ocirc;i Th&ocirc;ng Tho&aacute;ng HSTT002</p>

<p>📍 Xuất xứ: Việt Nam</p>

<p>&nbsp;</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 785.062px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 785.062px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxuj9fagejmhcf" style="border:0px; height:785.062px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxdse5cg4ue1c6" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxdse5cgagnt4c" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320362/oxeafrhx4x4ushze4ssi.jpg', CAST(30000.00 AS Decimal(18, 2)), CAST(155000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), 100, NULL, 0, 0, 0, 0, 1, 4, N'Quần Short Nam H90 Chất Thun Co Giãn, Quần Đùi Nam Màu Đen Basic Đơn Giản Thấm Hút Mồ Hôi QST01', NULL, NULL, NULL, CAST(N'2024-07-30T13:19:18.7485341' AS DateTime2), CAST(N'2024-07-30T13:19:18.7485357' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (15, N'Set Đầm Tiểu Thư 2 Món Gồm Áo Thun Tăm Nơ Cổ Xẻ Tà + Chân Váy Dáng Dài Sang Chảnh', N'set-dam-tieu-thu-2-mon-gom-ao-thun-tam-no-co-xe-ta--chan-vay-dang-dai-sang-chanh', N'ABC', N'Số lượng hàng khuyến mãi 249 Số sản phẩm còn lại 20808 Kiểu váy Váy đuôi cá dài Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật Mùa Mùa hè Chất liệu Cotton Loại trang phục Chân váy, Áo Địa chỉ tổ chức chịu trách nhiệm sản xuất Đang cập nhật Rất lớn Không Petite Không Sản phẩm đặt theo yêu cầu Đúng Kiểu dáng quần Ống rộng Bản eo Giữa eo Xuất xứ Việt Nam Mẫu Khác Chiều dài tay áo TAY NGẮN Gửi từ Thái Nguyên', N'<span style="color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px">CẢM ƠN C&Aacute;C N&Agrave;NG Đ&Atilde; GH&Eacute; THĂM DALI Shop: Cửa h&agrave;ng của ch&uacute;ng m&igrave;nh lu&ocirc;n ch&uacute; trọng v&agrave; cho ra những d&ograve;ng sản phẩm chất lượng để phục vụ kh&aacute;ch h&agrave;ng, b&ecirc;n cạnh đ&oacute; ch&uacute;ng tớ lu&ocirc;n lắng nghe v&agrave; thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng để từ đ&oacute; c&oacute; thể phục vụ tốt hơn. 🎟Th&ocirc;ng tin sản phẩm : ⚜️ T&ecirc;n sản phẩm: Set Đầm Tiểu Thư 2 M&oacute;n Gồm &Aacute;o Thun Tăm Nơ Cổ Xẻ T&agrave; + Ch&acirc;n V&aacute;y D&aacute;ng D&agrave;i Sang Chảnh ✅K&iacute;ch thước: S,M ✅Chất liệu : th&ocirc; &hearts;️Th&ocirc;ng tin xuất xứ : - Cơ sở sản xuất: tại Việt Nam 💥Shop đ&atilde; up k&egrave;m ảnh thật (Ghi ch&uacute; : Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau , m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%) ❌ Vui l&ograve;ng nhắn tin để hỗ trợ tư vấn size, kh&ocirc;ng hỗ trợ đổi trả nếu kh&aacute;ch tự &yacute; chọn size m&agrave; kh&ocirc;ng vừa ❌ ⛔️ Quyền lợi của DALI Shop: ✔️Được nhận vi&ecirc;n tư vấn tận t&igrave;nh, giải đ&aacute;p mọi thắc mắc nhanh nhất c&oacute; thể ✔️ Đổi trả do lỗi nh&agrave; sản xuất ( khuyến kh&iacute;ch qu&yacute; kh&aacute;ch h&agrave;ng quay video qu&aacute; tr&igrave;nh mở t&uacute;i h&agrave;ng) Xin cảm ơn v&agrave; ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; những trải nghiệm tuyệt vời c&ugrave;ng với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i. Cảm ơn qu&yacute; kh&aacute;ch. #vayxinh #ao #vay2s #vayxop #vaynu #hotgirl #chanvay #vayno #vayhot #aovay #babydoll</span>', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609580/qchm6llpfzerahxwnifq.jpg', CAST(25000.00 AS Decimal(18, 2)), CAST(99800.00 AS Decimal(18, 2)), CAST(49990.00 AS Decimal(18, 2)), 26, NULL, 0, 0, 0, 0, 1, 2, N'Set Đầm Tiểu Thư 2 Món Gồm Áo Thun Tăm Nơ Cổ Xẻ Tà + Chân Váy Dáng Dài Sang Chảnh', NULL, NULL, NULL, CAST(N'2024-08-02T21:39:37.0143661' AS DateTime2), CAST(N'2024-08-02T21:39:37.0144082' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (16, N'Sét Váy 3 Món Gồm Áo Thun Trắng Nơ To Nhún Bèo + Chân Váy Kẻ Xoè + Dây Cột ( Đeo Tay)', N'set-vay-3-mon-gom-ao-thun-trang-no-to-nhun-beo--chan-vay-ke-xoe--day-cot-(-deo-tay)', N'ABC', N'Số lượng hàng khuyến mãi 200 Số sản phẩm còn lại 3520 Chất liệu Cotton Mẫu Sọc Gửi từ Hà Nội', N'<span style="color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px">&Aacute;o thun freesize d&agrave;nh cho người dưới 55kg với chất liệu cotton kh&ocirc; v&agrave; cv chất th&ocirc; kẻ l&agrave; sự lựa chọn ho&agrave;n hảo cho những người y&ecirc;u th&iacute;ch sự thoải m&aacute;i v&agrave; dễ chịu khi mặc. Chất liệu cotton kh&ocirc; gi&uacute;p &aacute;o thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng m&aacute;t v&agrave; dễ chịu khi mặc. Chất liệu cv chất th&ocirc; kẻ gi&uacute;p &aacute;o c&oacute; độ bền cao, kh&ocirc;ng bị nhăn, co r&uacute;t sau khi giặt v&agrave; dễ d&agrave;ng bảo quản. Với thiết kế frees sắm. Bạn kh&ocirc;ng cần phải lo lắng về việc chọn size ph&ugrave; hợp, chỉ cần chọn m&agrave;u sắc y&ecirc;u th&iacute;ch v&agrave; bạn sẽ c&oacute; một chiếc &aacute;o thun đẹp v&agrave; thoải m&aacute;i. Với chất liệu cotton kh&ocirc; v&agrave; cv chất th&ocirc; kẻ, &aacute;o thun n&agrave;y sẽ gi&uacute;p bạn cảm thấy thoải m&aacute;i v&agrave; tự tin khi mặc. Bạn c&oacute; thể mặc n&oacute; trong nhiều ho&agrave;n cảnh kh&aacute;c nhau, từ đi l&agrave;m đến đi chơi c&ugrave;ng bạn b&egrave;. Với gi&aacute; cả phải chăng, đ&acirc;y l&agrave; một sản phẩm tuyệt vời để th&ecirc;m v&agrave;o tủ quần &aacute;o của bạn.</span>', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609663/qta53m9c5u78ruvrnsnn.jpg', CAST(23000.00 AS Decimal(18, 2)), CAST(119000.00 AS Decimal(18, 2)), CAST(59000.00 AS Decimal(18, 2)), 178, NULL, 0, 0, 0, 0, 1, 2, N'Sét Váy 3 Món Gồm Áo Thun Trắng Nơ To Nhún Bèo + Chân Váy Kẻ Xoè + Dây Cột ( Đeo Tay)', NULL, NULL, NULL, CAST(N'2024-08-02T21:40:57.3571096' AS DateTime2), CAST(N'2024-08-02T21:40:57.3571139' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (17, N'Áo sơ mi nam dài tay cổ bẻ vải cotton lụa thái chống xù chống nhăn lịch lãm Huỳnh Cung Store MSM 039', N'ao-so-mi-nam-dai-tay-co-be-vai-cotton-lua-thai-chong-xu-chong-nhan-lich-lam-huynh-cung-store-msm-039', N'ABC', N'Kho 199844 Cổ áo Cổ sơ mi Chất liệu Cotton Chiều dài tay áo Tay ngắn Gửi từ Hà Nội', N'<span style="color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px">&Aacute;o sơ mi nam d&agrave;i tay cổ bẻ vải cotton lụa th&aacute;i chống x&ugrave; chống nhăn lịch l&atilde;m &Aacute;o Sơ Mi Nam Trơn Tay D&agrave;i l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu của c&aacute;c ch&agrave;ng trong những dịp dự tiệc, đi học, đi l&agrave;m hay những buổi đi chơi c&ugrave;ng bạn g&aacute;i nếu muốn xuất hiện như một so&aacute;i ca. &Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body, chống nhăn cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. TH&Ocirc;NG TIN SẢN PHẨM - &Aacute;o sơ mi nam trơn c&ocirc;ng sở nhiều m&agrave;u sắc - Chất lụa trơn, mềm mịn mỏng kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;, kh&ocirc;ng bai, kh&ocirc;ng phai m&agrave;u. Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. - Form body H&agrave;n Quốc &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. =&gt; Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. - Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. - V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để cải thiện chất lượng dịch vụ tốt hơn. C&aacute;ch đặt h&agrave;ng qua Shopee: Nếu mua 1 sản phẩm th&igrave; bạn chọn M&agrave;u rồi ấn MUA H&Agrave;NG: + Bạn chọn từng Sản phẩm rồi th&ecirc;m v&agrave;o Giỏ h&agrave;ng. + Khi Giỏ H&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c Sản phẩm cần Mua, bạn mới tiến h&agrave;nh &quot;Thanh to&aacute;n&quot;. Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. + Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. + Cam kết được đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y. Đ&acirc;y l&agrave; bảng size tham khảo, t&ugrave;y thuộc v&agrave;o mỗi kh&aacute;ch h&agrave;ng m&agrave; c&oacute; thể + hoặc - 1 size. Lưu &yacute;: - Nếu chưa chắc chắn về chọn size sản phẩm - Nếu kh&aacute;ch form người kh&ocirc;ng c&acirc;n đối (b&eacute;o, gầy , thấp...) - Nếu kh&aacute;ch th&iacute;ch mặc &ocirc;m body hoặc rộng thỏa m&aacute;i trực tiếp để được HỖ TRỢ TƯ VẤN v&agrave; cung cấp th&ocirc;ng số sản phẩm cho m&igrave;nh nh&eacute; ạ.</span>', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609740/jtprglujrv3abex2tn7o.jpg', CAST(10000.00 AS Decimal(18, 2)), CAST(70000.00 AS Decimal(18, 2)), CAST(35000.00 AS Decimal(18, 2)), 100, NULL, 0, 0, 0, 0, 1, 4, N'Áo sơ mi nam dài tay cổ bẻ vải cotton lụa thái chống xù chống nhăn lịch lãm Huỳnh Cung Store MSM 039', NULL, NULL, NULL, CAST(N'2024-08-02T21:42:18.8325963' AS DateTime2), CAST(N'2024-08-02T21:42:18.8325977' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (18, N'Áo Sơ Mi Nam Tay Dài Nhung Tăm Khoác Ngoài VICENZO Cao Cấp Mềm Mịn Phong Cách', N'ao-so-mi-nam-tay-dai-nhung-tam-khoac-ngoai-vicenzo-cao-cap-mem-min-phong-cach', N'ABC', N'Cổ áo Cổ sơ mi Kiểu cổ áo Cổ áo truyền thống Phong cách Thể thao, Cơ bản, Hàn Quốc Tall Fit Có Địa chỉ tổ chức chịu trách nhiệm sản xuất Đang cập nhật Xuất xứ Việt Nam Mẫu Trơn Chiều dài tay áo Dài tay Chất liệu Nhung Gửi từ Hà Nội', N'<p>1. TH&Ocirc;NG TIN SẢN PHẨM</p>

<p>- Chất liệu: Nhung</p>

<p>- M&agrave;u sắc: Đen, R&ecirc;u, X&aacute;m ghi, Be</p>

<p>- Thiết kế: fom d&aacute;ng hiện đại, trẻ trung, năng động, dễ phối đồ</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 1120px; padding-bottom: 1120px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 1120px; height: 1120px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-logm6o0czrufda" style="border:0px; height:1120px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>

<p>2. BẢNG SIZE</p>

<p>+ M: |1m6-1m65| 45-55kg, d&agrave;i 68cm, ngực 106cm</p>

<p>+ L: |1m65-1m70| 55-65kg, d&agrave;i 70cm, ngực 112cm</p>

<p>+ XL: XL|1m70-1m75|65-75kg, d&agrave;i 72cm, ngực 118cm</p>

<p>+ XXL:|1m75-1m80|75-80kg, d&agrave;i 74cm, ngực 124cm</p>

<p>&nbsp;</p>

<p>3. CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG</p>

<p>MANL STORE cam kết với kh&aacute;ch h&agrave;ng về sản phẩm &Aacute;o sơ mi nam d&agrave;i tay</p>

<p>- Sản phẩm thật cam kết 100% như m&ocirc; tả</p>

<p>- Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o lu&ocirc;n lắng nghe kh&aacute;ch h&agrave;ng</p>

<p>- Giao h&agrave;ng nhanh nhất c&oacute; thể</p>

<p>- Sản phẩm được kiểm tra kỹ c&agrave;ng, cẩn thận trước khi g&oacute;i giao h&agrave;ng cho Qu&yacute; kh&aacute;ch.</p>

<p>- H&agrave;ng c&oacute; sẵn, giao ngay khi ph&aacute;t sinh đơn.</p>

<p>- Cam kết 100% đổi size nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa (hỗ trợ đổi size trong v&ograve;ng 7 ng&agrave;y).</p>

<p>- Đổi trả theo quy định ch&iacute;nh s&aacute;ch của Shopee.</p>

<p>- Giao h&agrave;ng to&agrave;n quốc, nhận h&agrave;ng thanh to&aacute;n.</p>

<p>&nbsp;</p>

<p>4. CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ</p>

<p>- C&aacute;c trường hợp được chấp nhận đổi trả</p>

<p>+ H&agrave;ng ho&aacute; vẫn c&ograve;n mới nguy&ecirc;n tem m&aacute;c, chưa qua sử dụng.</p>

<p>+ H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất.</p>

<p>- C&aacute;c trường hợp kh&ocirc;ng được đổi trả:</p>

<p>+ Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng từ shopee.</p>

<p>+ Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của shop.</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 1120px; padding-bottom: 840.203px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 1120px; height: 840.203px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lv447x7d0rdm48" style="border:0px; height:840.203px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>

<p>5. LƯU &Yacute;</p>

<p>- Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%.</p>

<p>- Bảng size chỉ mang t&iacute;nh chất tham khảo, vui l&ograve;ng nhắn tin cho shop để được tư vấn size chuẩn nhất.</p>

<p>&nbsp;</p>

<p>6. HƯỚNG DẪN SỬ DỤNG V&Agrave; KHUYẾN NGHỊ</p>

<p>- Đối với những sản phẩm giặt lần đầu, n&ecirc;n giặt bằng tay v&agrave; giặt ri&ecirc;ng từng sản phẩm.</p>

<p>- Giặt mặt tr&aacute;i, nhẹ tay, giặt xong phơi ngay, kh&ocirc;ng ng&acirc;m trong nước qu&aacute; l&acirc;u.</p>

<p>- Đồ trắng, be - đồ m&agrave;u n&ecirc;n chia ra giặt ri&ecirc;ng, kh&ocirc;ng giặt chung.</p>

<p>- Hạn chế sử dụng m&aacute;y</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609823/rg1tlnrulrvz2hcasmyh.jpg', CAST(100000.00 AS Decimal(18, 2)), CAST(245000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), 190, NULL, 0, 0, 0, 0, 1, 4, N'Áo Sơ Mi Nam Tay Dài Nhung Tăm Khoác Ngoài VICENZO Cao Cấp Mềm Mịn Phong Cách', NULL, NULL, NULL, CAST(N'2024-08-02T21:43:40.1256349' AS DateTime2), CAST(N'2024-08-02T21:43:40.1256371' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (19, N'Áo chống nắng NAM SunStop Master mũ liền TOKYOLIFE F7UVJ051M / F7UVJ051P/40000540/F7UVJ051K', N'ao-chong-nang-nam-sunstop-master-mu-lien-tokyolife-f7uvj051m--f7uvj051p40000540f7uvj051k', N'ABC', N'Thương hiệu TOKYOLIFE Mẫu Trơn Xuất xứ Việt Nam Gửi từ Hà Nội', N'<p>TH&Ocirc;NG TIN SẢN PHẨM SUNSTOP TOKYOLIFE</p>

<p>&Aacute;o chống nắng NAM SunStop Master mũ liền TOKYOLIFE F7UVJ051M / F7UVJ051P/40000540/F7UVJ051K</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7qukw-lfi0ztdo8gad5c" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7qukw-lfi0ztdo9uut18" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7qukw-lfi0ztdob9f901" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609958/aucxkdobdegiz6qjdno0.jpg', CAST(250000.00 AS Decimal(18, 2)), CAST(590000.00 AS Decimal(18, 2)), NULL, 200, NULL, 0, 0, 0, 0, 1, 4, N'Áo chống nắng NAM SunStop Master mũ liền TOKYOLIFE F7UVJ051M / F7UVJ051P/40000540/F7UVJ051K', NULL, NULL, NULL, CAST(N'2024-08-02T21:45:53.5461896' AS DateTime2), CAST(N'2024-08-02T21:45:53.5461916' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (20, N'Áo Khoác Dù Nam Nữ Chạy Sọc Thêu Chữ Trước Hot Hit - CLITUS', N'ao-khoac-du-nam-nu-chay-soc-theu-chu-truoc-hot-hit--clitus', N'ABC', N'Số sản phẩm còn lại 8221 Thương hiệu CLITUS Chất liệu Nylon Mẫu Sọc Phong cách Cơ bản Kiểu Áo khoác Áo gió Gửi từ Đắk Lắk', N'<p>CHI TIẾT SẢN PHẨM</p>

<p>M&agrave;u sắc: Đen</p>

<p>Chất liệu: D&ugrave; 2 lớp cao cấp</p>

<p>Form chuẩn Unisex Nam &amp; Nữ đều mặc được</p>

<p>Đặc điểm nổi bật nhất: &Aacute;o kho&aacute;c d&ugrave; được y&ecirc;u mến bởi n&oacute; mỏng nhẹ, kh&ocirc;ng nhăn, lại rất bền. Chiếc &aacute;o kho&aacute;c n&agrave;y c&oacute; thể gi&uacute;p bạn che nắng, che mưa, chống gi&oacute; bụi &hellip; tr&ecirc;n mọi nẻo đường. Kiểu d&aacute;ng đa phong c&aacute;ch, đường may tinh tế sắc sảo. Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố.</p>

<p>BẢNG SIZE</p>

<p>Size M: 45 - 58 kg</p>

<p>Size L : 59 - 70 kg</p>

<p>- Hỗ trợ đổi trả theo quy định của Shopee:</p>

<p>1. Điều kiện &aacute;p dụng (trong v&ograve;ng 03 ng&agrave;y kể từ khi nhận sản phẩm)</p>

<p>+H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng</p>

<p>+H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất.</p>

<p>2. Trường hợp được chấp nhận:</p>

<p>+Kiểu d&aacute;ng kh&ocirc;ng giống với sản phẩm bạn đặt h&agrave;ng .</p>

<p>+Kh&ocirc;ng đủ số lượng như trong đơn h&agrave;ng.</p>

<p>3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch:</p>

<p>+Qu&aacute; 07 ng&agrave;y kể từ khi kh&aacute;ch nhận h&agrave;ng</p>

<p>+ Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của SHOP</p>

<p>+ Kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp, đặt nhầm m&atilde;, nhầm m&agrave;u</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610034/dsv3uipuvpki3ng2rtn7.jpg', CAST(60000.00 AS Decimal(18, 2)), CAST(225000.00 AS Decimal(18, 2)), CAST(124000.00 AS Decimal(18, 2)), 50, NULL, 0, 0, 0, 0, 1, 3, N'Áo Khoác Dù Nam Nữ Chạy Sọc Thêu Chữ Trước Hot Hit - CLITUS', NULL, NULL, NULL, CAST(N'2024-08-02T21:47:11.7355863' AS DateTime2), CAST(N'2024-08-02T21:47:11.7355886' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (21, N'Giày hội đồng quản trị nữ gradient sneakers sinh viên giày trắng bán chạy giày thể thao sinh viên thoáng khí giày thể thao hàn quốc giày thể', N'giay-hoi-dong-quan-tri-nu-gradient-sneakers-sinh-vien-giay-trang-ban-chay-giay-the-thao-sinh-vien-thoang-khi-giay-the-thao-han-quoc-giay-the', N'ABC', N'Thương hiệu Doris Diary Giày cao gót Không gót Loại Khóa Khóa dây Chất liệu Da, Khác, Cao su Chiều rộng phù hợp Có Xuất xứ Trung Quốc Dịp Hằng Ngày Chiều cao cổ giày Cổ thấp Gửi từ Nước ngoài', N'<p>💕 Ch&agrave;o mừng đến với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i 🎗</p>

<p>💕 C&aacute;c k&iacute;ch thước chi tiết được hiển thị b&ecirc;n dưới. H&atilde;y đọc ch&uacute;ng một c&aacute;ch cẩn thận.</p>

<p>💕 Sản phẩm n&agrave;y c&oacute; trong kho v&agrave; c&oacute; thể được giao cho bạn sớm nhất.</p>

<p>💌 Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o về việc mua h&agrave;ng của m&igrave;nh, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i sẽ trả lời dựa tr&ecirc;n sự h&agrave;i l&ograve;ng của bạn.</p>

<p>✅ Sản phẩm của ch&uacute;ng t&ocirc;i l&agrave; 100% mới.</p>

<p>✅ T&ocirc;i hy vọng sẽ mang lại cho bạn trải nghiệm mua sắm tốt nhất.</p>

<p>🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔸🔸🔹🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔹🔸</p>

<p>Loại sản phẩm: gi&agrave;y thể thao, gi&agrave;y hội đồng</p>

<p>Phong c&aacute;ch: giản dị, thời trang, phong c&aacute;ch H&agrave;n Quốc, xu hướng s&aacute;ng tạo, dễ thương</p>

<p>Chất liệu tr&ecirc;n: PU nh&acirc;n tạo</p>

<p>Chất liệu đế: cao su</p>

<p>M&agrave;u sắc: hồng, xanh</p>

<p>Chức năng: Thoải m&aacute;i, tho&aacute;ng kh&iacute;, chống trượt</p>

<p>Thời gian sử dụng: Mỗi ng&agrave;y</p>

<p>🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔸🔸🔹🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔹🔸</p>

<p>✅ Ch&uacute;ng t&ocirc;i c&oacute; nhiều kinh nghiệm v&agrave; sản phẩm chất lượng cao.</p>

<p>✅ Ch&uacute;ng t&ocirc;i tập trung v&agrave;o c&aacute;c sản phẩm chất lượng cao v&agrave; gi&aacute; th&agrave;nh rẻ!</p>

<p>✅ Lu&ocirc;n c&oacute; sản phẩm mới. Vui l&ograve;ng theo d&otilde;i c&aacute;c bản cập nhật mới nhất của ch&uacute;ng t&ocirc;i.</p>

<p>💕 Nếu bạn th&iacute;ch sản phẩm của ch&uacute;ng t&ocirc;i, vui l&ograve;ng th&ecirc;m n&oacute; v&agrave;o giỏ h&agrave;ng của bạn. Cảm ơn!!!</p>

<p>🍻 Ch&uacute;ng t&ocirc;i mong đợi xếp hạng năm sao của bạn.</p>

<p>Bạn c&oacute; thể gh&eacute; thăm cửa h&agrave;ng v&agrave; xem h&agrave;ng trăm sản phẩm kh&aacute;c cho bạn lựa chọn. Ch&uacute;ng t&ocirc;i hy vọng bạn c&oacute; một trải nghiệm mua sắm th&uacute; vị tại cửa h&agrave;ng của ch&uacute;ng t&ocirc;i. （^___^）</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7qukw-lkg6gbhxj7hy51" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7qukw-lkg6gbhxkm2eec" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7qukw-lkg6gbhxm0mube" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 1163.98px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 1163.98px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7qukw-lkg6gbhxnf7a0a" style="border:0px; height:1163.98px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7qukw-lkg6gbhxotrq72" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">&nbsp;</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610114/zs0skqzd4clxda3a76fk.jpg', CAST(59000.00 AS Decimal(18, 2)), CAST(236000.00 AS Decimal(18, 2)), CAST(99000.00 AS Decimal(18, 2)), 100, NULL, 0, 0, 0, 0, 1, 2, N'Giày hội đồng quản trị nữ gradient sneakers sinh viên giày trắng bán chạy giày thể thao sinh viên thoáng khí giày thể thao hàn quốc giày thể', NULL, NULL, NULL, CAST(N'2024-08-02T21:48:31.6910301' AS DateTime2), CAST(N'2024-08-02T21:48:31.6910316' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (22, N'Giày Sneaker Cổ Thấp Chống Trượt Thoải Mái Phong Cách Hàn Quốc Cho Nam', N'giay-sneaker-co-thap-chong-truot-thoai-mai-phong-cach-han-quoc-cho-nam', N'ABC', N'Thương hiệu Doris Diary Chiều rộng phù hợp Có Loại Khóa Khóa dây Xuất xứ Trung Quốc Chất liệu Canvas, Khác, Da PU Dịp Hằng Ngày Chiều cao cổ giày Cổ thấp Giày cao gót Không gót Gửi từ Nước ngoài', N'<p>h&agrave;o mừng đến với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i 🎗</p>

<p>💕 C&aacute;c k&iacute;ch thước chi tiết được hiển thị b&ecirc;n dưới. H&atilde;y đọc ch&uacute;ng một c&aacute;ch cẩn thận.</p>

<p>💕 Sản phẩm n&agrave;y c&oacute; trong kho v&agrave; c&oacute; thể được giao cho bạn sớm nhất.</p>

<p>💌 Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o về việc mua h&agrave;ng của m&igrave;nh, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i sẽ trả lời dựa tr&ecirc;n sự h&agrave;i l&ograve;ng của bạn.</p>

<p>✅ Sản phẩm của ch&uacute;ng t&ocirc;i l&agrave; 100% mới.</p>

<p>✅ T&ocirc;i hy vọng sẽ mang lại cho bạn trải nghiệm mua sắm tốt nhất.</p>

<p>🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔸🔸🔹🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔹🔸</p>

<p>Loại sản phẩm: Gi&agrave;y hội đồng quản trị</p>

<p>Phong c&aacute;ch: giản dị, thời trang, phong c&aacute;ch H&agrave;n Quốc, xu hướng s&aacute;ng tạo</p>

<p>Chất liệu tr&ecirc;n: canvas</p>

<p>Chất liệu duy nhất: Cao su</p>

<p>M&agrave;u: Trắng, đen</p>

<p>Chức năng: Thoải m&aacute;i, tho&aacute;ng kh&iacute;, chống trượt</p>

<p>Thời gian sử dụng: Mỗi ng&agrave;y</p>

<p>🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔹🔸🔸🔸🔹🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔹🔸</p>

<p>✅ Ch&uacute;ng t&ocirc;i c&oacute; nhiều kinh nghiệm v&agrave; sản phẩm chất lượng cao.</p>

<p>✅ Ch&uacute;ng t&ocirc;i tập trung v&agrave;o c&aacute;c sản phẩm chất lượng cao v&agrave; gi&aacute; th&agrave;nh rẻ!</p>

<p>✅ Lu&ocirc;n c&oacute; sản phẩm mới. Vui l&ograve;ng theo d&otilde;i c&aacute;c bản cập nhật mới nhất của ch&uacute;ng t&ocirc;i.</p>

<p>💕 Nếu bạn th&iacute;ch sản phẩm của ch&uacute;ng t&ocirc;i, vui l&ograve;ng th&ecirc;m n&oacute; v&agrave;o giỏ h&agrave;ng của bạn. Cảm ơn bạn!!!</p>

<p>🍻 Ch&uacute;ng t&ocirc;i mong đợi xếp hạng năm sao của bạn.</p>

<p>Bạn c&oacute; thể gh&eacute; thăm cửa h&agrave;ng v&agrave; xem h&agrave;ng trăm sản phẩm kh&aacute;c cho bạn lựa chọn. Ch&uacute;ng t&ocirc;i hy vọng bạn c&oacute; một trải nghiệm mua sắm th&uacute; vị tại cửa h&agrave;ng của ch&uacute;ng t&ocirc;i. （^___^）</p>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 1120px; padding-bottom: 1120px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 1120px; height: 1120px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7r98o-loark9t48x539f" style="border:0px; height:1120px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 1120px; padding-bottom: 2240px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 1120px; height: 2240px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/cn-11134208-7r98o-loark9t4abpjf2" style="border:0px; height:2240px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:1120px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610208/kvt4ep8bkbnzph5v5n3b.jpg', CAST(89000.00 AS Decimal(18, 2)), CAST(258000.00 AS Decimal(18, 2)), CAST(139000.00 AS Decimal(18, 2)), 150, NULL, 0, 0, 0, 0, 1, 4, N'Giày Sneaker Cổ Thấp Chống Trượt Thoải Mái Phong Cách Hàn Quốc Cho Nam', NULL, NULL, NULL, CAST(N'2024-08-02T21:50:02.0022941' AS DateTime2), CAST(N'2024-08-02T21:50:02.0022954' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (23, N'Giày_Asics Nâu Xám Thể Thao Nam Nữ Hàng Cao Cấp TRENDLUXE', N'giay_asics-nau-xam-the-thao-nam-nu-hang-cao-cap-trendluxe', N'ABC', N'Thương hiệu TRENDLUXE Loại Khóa Khóa cài Loại da Da Bò Da ngoài Dập nổi Xuất xứ Trung Quốc Chất liệu Sợi tổng hợp Dịp Thể thao Chiều cao cổ giày Cổ thấp Giày cao gót Trung Bình Gửi từ Hà Nội', N'<p>- Sản phẩm: Gi&agrave;y N&acirc;u X&aacute;m Thể Thao Nam Nữ H&agrave;ng Cao Cấp TRENDLUXE</p>

<p>Chất liệu:</p>

<p>+ Da Microfiber, chống nhăn, kh&ocirc;ng lo bong tr&oacute;c</p>

<p>+ Đế giầy: TPR si&ecirc;u nhẹ, ma s&aacute;t chống trơn trượt</p>

<p>- Size gi&agrave;y 36 - 43</p>

<p>- Nơi sản xuất: Việt Nam</p>

<p>- Thương hiệu: TRENDLUXE</p>

<p>🔥 Hướng dẫn chọn size giầy: Gi&agrave;y Sneaker Nam Nữ TRENDLUXE d&aacute;ng gi&agrave;y thể thao</p>

<p>B1: D&ugrave;ng thước đo chiều d&agrave;i b&agrave;n ch&acirc;n.</p>

<p>B2: Đối chiếu b&agrave;n ch&acirc;n tương ứng với cỡ sau:</p>

<p>- Size 36: chiều d&agrave;i b&agrave;n ch&acirc;n 23 cm</p>

<p>- Size 37: chiều d&agrave;i b&agrave;n ch&acirc;n 23.5 cm</p>

<p>- Size 38: chiều d&agrave;i b&agrave;n ch&acirc;n 24 cm</p>

<p>- Size 39: chiều d&agrave;i b&agrave;n ch&acirc;n 24.5 cm</p>

<p>- Size 40: chiều d&agrave;i b&agrave;n ch&acirc;n từ 25 cm.</p>

<p>- Size 41: chiều d&agrave;i b&agrave;n ch&acirc;n từ 26 cm.</p>

<p>- Size 42: chiều d&agrave;i b&agrave;n ch&acirc;n từ 26.5 cm.</p>

<p>- Size 43: chiều d&agrave;i b&agrave;n ch&acirc;n từ 27 cm.</p>

<p>🔥 Hướng dẫn bảo quản: Gi&agrave;y Sneaker Nam Nữ TRENDLUXE d&aacute;ng gi&agrave;y thể thao</p>

<p>● Lau ch&ugrave;i sạch sẽ v&agrave; cất gọn sau khi sử dụng</p>

<p>● Hạn chế tiếp x&uacute;c với nước</p>

<p>● Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời</p>

<p>🔥 SỰ KH&Aacute;C BIỆT TẠO N&Ecirc;N THƯƠNG HIỆU:</p>

<p>● 1 ĐỔI 1 trong 30 ng&agrave;y với sản phẩm bị lỗi do nh&agrave; sản xuất</p>

<p>● Đổi size, đổi sản phẩm trong 30 ng&agrave;y (&aacute;p dụng đối với c&aacute;c sản phẩm ngang gi&aacute; hoặc gi&aacute; cao hơn)</p>

<p>● Trả h&agrave;ng ho&agrave;n tiền với kh&aacute;ch h&agrave;ng mua sản phẩm c&oacute; size to nhất hoặc nhỏ nhưng kh&ocirc;ng vừa</p>

<p>🚫 Lưu &yacute;: TRENDLUXE chỉ chấp nhận đổi size, đổi sản phẩm v&agrave; trả h&agrave;ng khi: sản phẩm c&ograve;n mới, chưa qua sử</p>

<p>📦 QUY TR&Igrave;NH ĐỔI, TRẢ &amp; BẢO H&Agrave;NH:</p>

<p>Bước 1: Bạn chỉ cần ngồi nh&agrave; TRENDLUXE sẽ cho đvvc đến tận nh&agrave; để thu hồi sản phẩm bị lỗi, đổi size, đổi sản phẩm v&agrave; bảo h&agrave;nh.</p>

<p>Bước 2: Sau 3-14 ng&agrave;y TRENDLUXE sẽ giao cho bạn sản phẩm mới, sản phẩm đ&atilde; được đổi size hoặc sản phẩm đ&atilde; được bảo h&agrave;nh.</p>

<p>● Ch&iacute; ph&iacute; ph&aacute;t sinh:</p>

<p>- MIỄN PH&Iacute;: với sản phẩm bị lỗi do TRENDLUXE gửi nhầm, lỗi do nh&agrave; sản xuất v&agrave; sản phẩm bảo h&agrave;nh</p>

<p>- 20 - 40K: đối với sản phẩm cần đổi size hoặc đổi sản phẩm</p>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610308/ojl22xmxnpgt0kc0kwvg.jpg', CAST(100000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), CAST(210000.00 AS Decimal(18, 2)), 110, NULL, 0, 0, 0, 0, 1, 3, N'Giày_Asics Nâu Xám Thể Thao Nam Nữ Hàng Cao Cấp TRENDLUXE', NULL, NULL, NULL, CAST(N'2024-08-02T21:51:45.0000000' AS DateTime2), CAST(N'2024-08-02T21:54:45.9708494' AS DateTime2), NULL)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceSale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [IsActive], [ProductCategoryID], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (24, N'Quần tây nam cạp cao Sidetab Limited LEDOR xếp ly form Regular-fit, sang trọng, thanh lịch.', N'quan-tay-nam-cap-cao-sidetab-limited-ledor-xep-ly-form-regular-fit-sang-trong-thanh-lich', N'ABC', N'Thương hiệu LEDOR Chiều dài quần Chiều dài đầy đủ Phong cách Công sở Tall Fit Có Loại khóa Khóa kéo Mẫu Trơn Kiểu dáng quần Thường Bản eo Cạp trung Chất liệu Wool Gửi từ TP. Hồ Chí Minh', N'<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 874.734px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 874.734px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtgmk0za6e34d" style="border:0px; height:874.734px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 876.5px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 876.5px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtgmk0zbkyj62" style="border:0px; height:876.5px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 876.5px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 876.5px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtgmk0zee3fb9" style="border:0px; height:876.5px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtgmk0zfsnv85" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>

<div class="QN2lPu" style="margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;">
<div style="position: relative; width: 873px; padding-bottom: 873px;">
<div class="P7IbkE" style="position: absolute; left: 0px; right: 0px; width: 873px; height: 873px;"><img class="GqYslU hnult1" src="https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lxtgmk0zh78b2a" style="border:0px; height:873px; object-fit:contain; opacity:1; pointer-events:none; transition:opacity 0.2s; vertical-align:bottom; width:873px" /></div>
</div>
</div>
', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610411/p3gxcijbik1h4tmtvglp.jpg', CAST(239000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)), NULL, 120, NULL, 0, 0, 0, 0, 1, 4, N'Quần tây nam cạp cao Sidetab Limited LEDOR xếp ly form Regular-fit, sang trọng, thanh lịch.', NULL, NULL, NULL, CAST(N'2024-08-02T21:53:25.0000000' AS DateTime2), CAST(N'2024-08-02T21:57:08.9477738' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Women''s', N'womens', N'Women''s', N'/Content/img/SanPham/banner_3.jpg', N'Women''s', N'Women''s', N'Women''s', NULL, CAST(N'2024-07-23T23:22:33.0000000' AS DateTime2), CAST(N'2024-07-23T23:25:20.7420838' AS DateTime2), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Accessories', N'accessories', N'Accessories', N'/Content/img/SanPham/banner_2.jpg', N'Accessories', N'Accessories', N'Accessories', NULL, CAST(N'2024-07-23T23:23:00.0000000' AS DateTime2), CAST(N'2024-07-23T23:25:11.2696671' AS DateTime2), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Men''s', N'mens', N'Men''s', N'/Content/img/SanPham/blog_2.jpg', N'Men''s', N'Men''s', N'Men''s', NULL, CAST(N'2024-07-23T23:23:07.0000000' AS DateTime2), CAST(N'2024-07-23T23:24:42.1507670' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (2, 3, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721902116/etokqjytfiokvyr6b78n.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3, 3, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721902131/uzs93sfi1yrdqbaeluf1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (4, 3, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721902132/q5jjisx9e9nqjbmc8zft.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (6, 2, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721922304/udnr8r4w3qkuijfosvvm.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (7, 2, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721922748/p9oezxcpc0rc4fdl5ytv.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (8, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721923642/tddflkuiraufeg2zevia.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (11, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721923776/vbwyp7eyh1r2br9jzjnw.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (12, 1, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721923781/bgjgc6vmul5s0n97xy2o.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (16, 4, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924248/fmlkq5sr2itbwpbukncr.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (17, 5, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924390/u91zkfiguowtq5hqndtw.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (18, 5, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924391/ukcj4bkan1rtjydp4fyo.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (19, 5, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924392/bpcfezzzllwfgd9q9tvp.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (20, 4, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924406/nlf4r7om0xp0kajszar2.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (22, 4, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721924912/yd7jl2megkh3ngxhxs9z.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (50, 3, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721969472/jcz4lfjk0c1btbu4bhdf.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (52, 6, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721989152/dwrpwaqchiw1ztuuj5oe.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (53, 6, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721989153/ykiq0eq3xvgh5lcwbkrb.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (54, 6, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1721989154/cd30owlpvbpfgxupjevf.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (55, 9, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220746/cce3qih0isf2byvhy1i3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (56, 9, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220747/q9ga4kwynduxulzjcpw8.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (57, 9, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220748/zwwi3wd0dthtlhcjep7j.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (58, 10, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220919/w2lpfbmmhj5vwsf0cuuu.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (59, 10, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220920/uyac5uimdcvvz4wxmfgj.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (60, 10, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220922/bkvbksfmjn8ezrcfj2z5.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (61, 10, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722220924/exhz8uslb1eluv50onoc.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (62, 11, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221121/wc3aehvhmw2i0ji3jo5k.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (63, 11, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221122/jqlp2tuo2l45qzqcqke3.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (64, 11, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221122/qtlpx65oyjfvy9ikm5hj.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (65, 11, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221123/ejphzvmrlgm1nbnuqwto.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (66, 12, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221334/cj81j0ix44edscaimas6.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (67, 12, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221334/zfqlyyajcb2j8g3cg5r4.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (68, 12, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722221335/bs4mdcdi5ji8jnjdtymm.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (69, 13, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320276/v8hzonxpvl8bx2i1mcw5.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (70, 13, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320285/pes9fudgmmfnbm4qby1q.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (71, 13, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320287/ecu0dhh7pseraiuecdr5.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (72, 14, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320362/oxeafrhx4x4ushze4ssi.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (73, 14, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320364/ykohnkaus9heoxmmgtjh.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (74, 14, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722320365/o6ky0wwvtsbzwhhdmvnm.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (75, 15, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609580/qchm6llpfzerahxwnifq.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (76, 15, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609582/i25ipuwzrosluekiuwdi.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (77, 15, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609583/nb1saf2vxoqz05oqus0c.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (78, 16, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609660/yy7vq94smdgl683l51it.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (79, 16, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609661/llfefbnu4j80mpb7c1hh.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (80, 16, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609663/qta53m9c5u78ruvrnsnn.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (81, 16, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609664/rodmhmbfxbncje6sdptx.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (82, 17, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609740/jtprglujrv3abex2tn7o.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (83, 17, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609742/reup186ud4m3xcsksusg.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (84, 17, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609743/nwygrzlkrlms8ncap5qc.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (85, 18, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609823/rg1tlnrulrvz2hcasmyh.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (86, 18, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609823/yuafdjfnzawnpnzssfm6.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (87, 18, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609825/l8lb3res28ozstefiyia.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (88, 19, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609955/ezkcy6cqy2toedjonhhz.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (89, 19, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609956/nqn7ozm4grcdth4oqg3s.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (90, 19, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609957/bsnraspddcvbltda7jo4.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (91, 19, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722609958/aucxkdobdegiz6qjdno0.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (92, 20, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610034/dsv3uipuvpki3ng2rtn7.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (93, 20, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610035/mufslgxc6gfhktq9cbhj.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (94, 20, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610036/r7xrlmk1voxtzrfzvlha.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (95, 20, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610037/k4phtghvpq1ohjiaccas.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (96, 21, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610114/zs0skqzd4clxda3a76fk.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (97, 21, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610115/flurqne1wyabx2md6sja.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (98, 21, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610116/x5jsysnq47xc6xv9f5md.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (99, 21, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610117/torinugmfmf5zybt3dbj.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (100, 22, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610204/k5synhsnrvwqbkol68v1.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (101, 22, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610206/yxq3hx0m6yuxcpm79yrz.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (102, 22, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610207/rywtlrwgqoo8gnxj9kdz.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (103, 22, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610208/kvt4ep8bkbnzph5v5n3b.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (104, 23, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610308/ojl22xmxnpgt0kc0kwvg.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (105, 23, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610309/clunizrm3ymezg5f4tg7.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (106, 23, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610310/oa7liafjt85akn1f6dgx.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (107, 23, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610311/uthlfo52pws0cm4jwyna.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (108, 24, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610407/wtldo005wawcieco53sv.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (109, 24, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610409/usoju7jkqgb33ophasj4.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (110, 24, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610410/hoiuu8nwn07628x97cjx.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (111, 24, N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722610411/p3gxcijbik1h4tmtvglp.jpg', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Review] ON 

INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (1, 13, NULL, N'man anh phap', N'phap74427@gmail.com', N'sản  phẩm ok ', 5, CAST(N'2024-08-02T14:21:19.9102387' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (2, 13, NULL, N'Nguyễn Vân Anh', N'phap@gmail.com', N'sản  phẩm chưa ổn lắm', 3, CAST(N'2024-08-02T14:24:34.4969465' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (3, 13, NULL, N'Đỗ Hồng Hà ', N'hongha@gmail.com', N'Quá là ok', 5, CAST(N'2024-08-02T14:29:57.0408146' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (4, 14, NULL, N'Đỗ Hồng Hà ', N'hongha@gmail.com', N'đẹp nhưng ít size quá', 4, CAST(N'2024-08-02T14:35:56.4404170' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (5, 14, N'phap74427@gmail.com', N'tony', N'phap74427@gmail.com', N'ok 10 điểm', 4, CAST(N'2024-08-02T14:38:42.0933051' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (6, 12, N'phap74427@gmail.com', N'man anh phap', N'phap74427@gmail.com', N'ok', 4, CAST(N'2024-08-02T14:40:21.5700810' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (7, 12, N'phap74427@gmail.com', N'man anh phap', N'phap74427@gmail.com', N'tệ', 1, CAST(N'2024-08-02T14:41:17.9838788' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (8, 12, N'phap74427@gmail.com', N'Đỗ Hồng Hà ', N'phap74427@gmail.com', N'không ok lắm', 4, CAST(N'2024-08-02T14:41:57.1043836' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (9, 11, N'phap74427@gmail.com', N'pháp', N'phap74427@gmail.com', N'nên mua nha cả nhà', 5, CAST(N'2024-08-02T14:42:29.6491789' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (10, 11, N'phap74427@gmail.com', N'Đỗ Hồng Hà ', N'hongha@gmail.com', N'ok', 4, CAST(N'2024-08-02T14:42:39.0036328' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (11, 11, N'phap74427@gmail.com', N'man anh phap', N'phap74427@gmail.com', N'sản phẩm giống hình, giao hàng nhanh', 4, CAST(N'2024-08-02T14:50:38.2336643' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (12, 10, N'phap74427@gmail.com', N'pháp', N'phap74427@gmail.com', N'sản phẩm đẹp, mẫu cũng đẹp luôn', 5, CAST(N'2024-08-02T14:52:53.8118114' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (13, 10, N'phap74427@gmail.com', N'Đỗ Hồng Hà ', N'hongha@gmail.com', N'ok lắm nha cả nhà', 4, CAST(N'2024-08-02T14:53:06.8878799' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (14, 19, N'phapman', N'Mẫn Anh Pháp', N'phap220103@gmail.com', N'sản phẩm chất lượng tốt nhưng giá hơi cao', 5, CAST(N'2024-08-03T11:08:50.0363899' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (15, 24, NULL, N'man anh tai', N'phap@gmail.com', N'ok nha', 5, CAST(N'2024-10-28T09:41:47.6050579' AS DateTime2), NULL)
INSERT [dbo].[tb_Review] ([Id], [ProductId], [UserName], [FullName], [Email], [Content], [Rate], [CreatedDate], [Avatar]) VALUES (16, 23, NULL, N'phap man', N'phap74427@gmail.com', N'cung tam dc', 4, CAST(N'2024-11-21T15:39:20.9261913' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[tb_Review] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Subscribe] ON 

INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (1, N'phap74427@gmail.com', CAST(N'2024-08-03T00:20:37.7351408' AS DateTime2))
INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (2, N'prince74427@gmail.com', CAST(N'2024-08-03T00:20:43.2985573' AS DateTime2))
INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (3, N'phap74427@gmail.com', CAST(N'2024-08-03T12:32:16.1253343' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_Subscribe] OFF
GO
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingDesSeo', N'Color Shop', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingEmail', N'phap74427@gmail.com', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingHotline', N'0833220102', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingKeySeo', N'Color Shop', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingLogo', N'http://res.cloudinary.com/ddmh3qg6y/image/upload/v1722012092/hxvwi4ple88dvzxbxw3u.jpg', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitle', N'Color Shop', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitleSeo', N'Color Shop', NULL)
GO
SET IDENTITY_INSERT [dbo].[tb_WishList] ON 

INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (1, 24, N'hongha@gmail.com', CAST(N'2024-08-02T22:26:44.4445550' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (7, 23, N'hongha@gmail.com', CAST(N'2024-08-02T22:47:37.2245199' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (8, 22, N'hongha@gmail.com', CAST(N'2024-08-02T22:48:38.9470701' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (9, 23, N'mananhphap2003bn', CAST(N'2024-08-02T22:57:52.7908047' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (17, 18, N'phapman', CAST(N'2024-08-02T23:04:59.9634099' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (18, 18, N'mananhphap2003bn', CAST(N'2024-08-02T23:12:10.6115822' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (21, 19, N'phapman', CAST(N'2024-08-03T11:07:09.7371404' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (23, 20, N'phapman', CAST(N'2024-08-03T11:07:23.3285187' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (28, 22, N'phapman', CAST(N'2024-08-03T11:13:40.5784890' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (30, 23, N'phap@gmail.com', CAST(N'2024-08-03T11:26:59.6768017' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (31, 22, N'phap@gmail.com', CAST(N'2024-08-03T11:35:56.7825813' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (32, 21, N'phap@gmail.com', CAST(N'2024-08-03T11:35:57.6973540' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (33, 20, N'phap@gmail.com', CAST(N'2024-08-03T11:35:59.1736724' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (35, 5, N'phap@gmail.com', CAST(N'2024-08-03T11:44:18.6884768' AS DateTime2))
INSERT [dbo].[tb_WishList] ([Id], [ProductId], [UserName], [CreateDate]) VALUES (36, 4, N'phap@gmail.com', CAST(N'2024-08-03T11:44:20.6671257' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_WishList] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_News_CategoryID]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_News_CategoryID] ON [dbo].[tb_News]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_OrderDetail_ProductID]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_OrderDetail_ProductID] ON [dbo].[tb_OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_Posts_CategoryID]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_Posts_CategoryID] ON [dbo].[tb_Posts]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_Product_ProductCategoryID]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_Product_ProductCategoryID] ON [dbo].[tb_Product]
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_ProductImage_ProductId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_ProductImage_ProductId] ON [dbo].[tb_ProductImage]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_Review_ProductId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_Review_ProductId] ON [dbo].[tb_Review]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_WishList_ProductId]    Script Date: 12/25/2024 5:38:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_tb_WishList_ProductId] ON [dbo].[tb_WishList]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Product] ADD  DEFAULT ((0.0)) FOR [Price]
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
ALTER TABLE [dbo].[tb_News]  WITH CHECK ADD  CONSTRAINT [FK_tb_News_tb_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tb_Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_News] CHECK CONSTRAINT [FK_tb_News_tb_Category_CategoryID]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tb_Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Order_OrderID]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Product_ProductID]
GO
ALTER TABLE [dbo].[tb_Posts]  WITH CHECK ADD  CONSTRAINT [FK_tb_Posts_tb_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tb_Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Posts] CHECK CONSTRAINT [FK_tb_Posts_tb_Category_CategoryID]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_ProductCategory_ProductCategoryID] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[tb_ProductCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_ProductCategory_ProductCategoryID]
GO
ALTER TABLE [dbo].[tb_ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_tb_ProductImage_tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_ProductImage] CHECK CONSTRAINT [FK_tb_ProductImage_tb_Product_ProductId]
GO
ALTER TABLE [dbo].[tb_Review]  WITH CHECK ADD  CONSTRAINT [FK_tb_Review_tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Review] CHECK CONSTRAINT [FK_tb_Review_tb_Product_ProductId]
GO
ALTER TABLE [dbo].[tb_WishList]  WITH CHECK ADD  CONSTRAINT [FK_tb_WishList_tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_WishList] CHECK CONSTRAINT [FK_tb_WishList_tb_Product_ProductId]
GO
USE [master]
GO
ALTER DATABASE [NowayShop] SET  READ_WRITE 
GO
