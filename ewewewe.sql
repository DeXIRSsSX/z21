USE [master]
GO
/****** Object:  Database [yadovitiy i letuchiy]    Script Date: 07.12.2023 17:39:58 ******/
CREATE DATABASE [yadovitiy i letuchiy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yadovitiy i letuchiy', FILENAME = N'C:\StudentDatabase\yadovitiy i letuchiy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'yadovitiy i letuchiy_log', FILENAME = N'C:\StudentDatabase\yadovitiy i letuchiy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [yadovitiy i letuchiy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yadovitiy i letuchiy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ARITHABORT OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET RECOVERY FULL 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET  MULTI_USER 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yadovitiy i letuchiy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [yadovitiy i letuchiy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'yadovitiy i letuchiy', N'ON'
GO
ALTER DATABASE [yadovitiy i letuchiy] SET QUERY_STORE = OFF
GO
USE [yadovitiy i letuchiy]
GO
/****** Object:  User [Student]    Script Date: 07.12.2023 17:39:59 ******/
CREATE USER [Student] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [osas]    Script Date: 07.12.2023 17:39:59 ******/
CREATE USER [osas] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[osas]
GO
ALTER ROLE [db_owner] ADD MEMBER [osas]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [osas]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [osas]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [osas]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [osas]
GO
ALTER ROLE [db_datareader] ADD MEMBER [osas]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [osas]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [osas]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [osas]
GO
/****** Object:  Schema [osas]    Script Date: 07.12.2023 17:39:59 ******/
CREATE SCHEMA [osas]
GO
/****** Object:  Table [dbo].[CategoryMal]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMal](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CategoryMal] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Malfunction]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Malfunction](
	[Name] [varchar](50) NOT NULL,
	[HowOften] [varchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[IdMalfunction] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Malfunction] PRIMARY KEY CLUSTERED 
(
	[IdMalfunction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SurName] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IdManager] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[IdManager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[DateOfAdd] [date] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdWorker] [int] NOT NULL,
	[Description] [varchar](max) NULL,
	[IdCustomer] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
	[IdMalfunction] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Name] [varchar](50) NOT NULL,
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[IdType] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Name] [varchar](50) NOT NULL,
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Name] [varchar](50) NOT NULL,
	[IdType] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SurName] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 07.12.2023 17:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SurName] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[HowMuchOrders] [int] NULL,
	[IdWorkers] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[IdWorkers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Malfunction]  WITH CHECK ADD  CONSTRAINT [FK_Malfunction_CategoryMal] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMal] ([IdCategory])
GO
ALTER TABLE [dbo].[Malfunction] CHECK CONSTRAINT [FK_Malfunction_CategoryMal]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Malfunction] FOREIGN KEY([IdMalfunction])
REFERENCES [dbo].[Malfunction] ([IdMalfunction])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Malfunction]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Products] ([IdProduct])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Products]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Workers] FOREIGN KEY([IdWorker])
REFERENCES [dbo].[Workers] ([IdWorkers])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Workers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([IdType])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Type]
GO
USE [master]
GO
ALTER DATABASE [yadovitiy i letuchiy] SET  READ_WRITE 
GO
