USE [master]
GO
/****** Object:  Database [Test1]    Script Date: 12/30/2016 10:05:23 PM ******/
CREATE DATABASE [Test1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\Test1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Test1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\Test1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Test1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test1] SET  MULTI_USER 
GO
ALTER DATABASE [Test1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Test1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Test1]
GO
/****** Object:  Table [dbo].[reg]    Script Date: 12/30/2016 10:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[mob] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
 CONSTRAINT [PK_reg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_emp]    Script Date: 12/30/2016 10:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_emp](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[dept] [nvarchar](50) NOT NULL,
	[salary] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_t_emp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[test]    Script Date: 12/30/2016 10:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[mob] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[reg] ON 

INSERT [dbo].[reg] ([id], [name], [email], [mob], [address]) VALUES (1, N'Rahul', N'RAHUL@geeksblood.com', N'9999999999', N'XXXXXXXXXXXXXXXXXXX')
INSERT [dbo].[reg] ([id], [name], [email], [mob], [address]) VALUES (2, N'Abhishek', N'abhishek@geeksblood.com', N'9988888888', N'zzzzzzzzzzzzzzzzzz')
INSERT [dbo].[reg] ([id], [name], [email], [mob], [address]) VALUES (11, N'x2', N'sam234@geeksblood.com', N'9999999988', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[reg] ([id], [name], [email], [mob], [address]) VALUES (15, N'Sumit', N'sumit@geeksblood.com', N'9999999999', N'xxxxxxxxxxxxxxxxxxxxxx')
SET IDENTITY_INSERT [dbo].[reg] OFF
SET IDENTITY_INSERT [dbo].[test] ON 

INSERT [dbo].[test] ([id], [mid], [name], [email], [mob], [address]) VALUES (1, 1, N'Rahul', N'RAHUL@CHETU.COM', N'9999999999', N'XXXXXXXXXXXXXXXXXXX')
INSERT [dbo].[test] ([id], [mid], [name], [email], [mob], [address]) VALUES (2, 4, N'Abhishek', N'abhishek@chetu.com', N'9988888888', N'zzzzzzzzzzzzzzzzzz')
INSERT [dbo].[test] ([id], [mid], [name], [email], [mob], [address]) VALUES (4, 2, N'dfdf', N'samidrawat@gmail.com', N'9999999999', N'xxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[test] ([id], [mid], [name], [email], [mob], [address]) VALUES (5, 2, N'test22', N'test@gmail.com', N'99966666', N'xxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[test] ([id], [mid], [name], [email], [mob], [address]) VALUES (6, 9, N'xxxx', N'xxxxxx', N'xxxxx', N'xxxxxxxxxxxx')
SET IDENTITY_INSERT [dbo].[test] OFF
USE [master]
GO
ALTER DATABASE [Test1] SET  READ_WRITE 
GO
