USE [master]
GO
/****** Object:  Database [HotelManage1]    Script Date: 2022/7/14 20:11:05 ******/
CREATE DATABASE [HotelManage1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelManage1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelManage1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManage1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelManage1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HotelManage1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManage1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManage1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManage1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManage1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManage1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManage1] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManage1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelManage1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManage1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManage1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManage1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManage1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManage1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManage1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManage1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManage1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HotelManage1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManage1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManage1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManage1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManage1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManage1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManage1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManage1] SET RECOVERY FULL 
GO
ALTER DATABASE [HotelManage1] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManage1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManage1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManage1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManage1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManage1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManage1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelManage1', N'ON'
GO
ALTER DATABASE [HotelManage1] SET QUERY_STORE = OFF
GO
USE [HotelManage1]
GO
/****** Object:  Table [dbo].[ChargeCount]    Script Date: 2022/7/14 20:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChargeCount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NULL,
	[Charge] [float] NULL,
 CONSTRAINT [PK_ChargeCount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloorInfo]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorInfo](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestInfo]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuestInfo](
	[Gid] [int] IDENTITY(1,1) NOT NULL,
	[Gname] [varchar](10) NOT NULL,
	[GTid] [int] NOT NULL,
	[Sex] [char](5) NULL,
	[Mobile] [varchar](30) NULL,
	[ChargeSum] [int] NULL,
	[Pid] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestType]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuestType](
	[GTid] [int] IDENTITY(1,1) NOT NULL,
	[Tname] [varchar](10) NOT NULL,
	[Trate] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPInfo]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPInfo](
	[OId] [int] IDENTITY(1,1) NOT NULL,
	[OName] [varchar](20) NOT NULL,
	[Pwd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[REid] [int] IDENTITY(1,1) NOT NULL,
	[Gid] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[FactTime] [varchar](50) NULL,
	[daynum] [int] NULL,
	[Charge] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[REid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve](
	[Yid] [int] IDENTITY(1,1) NOT NULL,
	[Gid] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[FactTime] [varchar](50) NULL,
	[daynum] [int] NULL,
	[Charge] [int] NULL,
	[actCharge] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Yid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomInfo]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomInfo](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](20) NOT NULL,
	[RTid] [int] NULL,
	[RSid] [int] NULL,
	[Fid] [int] NULL,
	[Mark] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomState]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomState](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RTid] [int] IDENTITY(1,1) NOT NULL,
	[RTname] [varchar](50) NOT NULL,
	[RTprice] [money] NOT NULL,
	[AddBedPrice] [money] NOT NULL,
	[IsAddBed] [bit] NULL,
	[Remark] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trans]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans](
	[transid] [int] IDENTITY(1,1) NOT NULL,
	[reason] [varchar](50) NULL,
	[addmoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2022/7/14 20:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [varchar](10) NOT NULL,
	[Upwd] [varchar](30) NOT NULL,
	[Tid] [int] NULL,
	[Sex] [char](5) NULL,
	[Mobile] [varchar](30) NULL,
	[Pid] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChargeCount] ON 

INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (1, CAST(N'2017-01-02T10:11:12.000' AS DateTime), 20000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (2, CAST(N'2017-02-02T10:11:12.000' AS DateTime), 17000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (3, CAST(N'2017-03-27T10:11:12.000' AS DateTime), 50000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (4, CAST(N'2017-04-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (5, CAST(N'2017-05-02T10:11:12.000' AS DateTime), 20000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (6, CAST(N'2017-06-02T10:11:12.000' AS DateTime), 36000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (7, CAST(N'2017-07-27T10:11:12.000' AS DateTime), 70000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (8, CAST(N'2017-08-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (9, CAST(N'2017-09-27T10:11:12.000' AS DateTime), 62000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (10, CAST(N'2017-10-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (11, CAST(N'2017-11-27T10:11:12.000' AS DateTime), 45000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (12, CAST(N'2017-12-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (13, CAST(N'2018-01-02T10:11:12.000' AS DateTime), 17000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (14, CAST(N'2018-02-02T10:11:12.000' AS DateTime), 25000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (15, CAST(N'2018-03-27T10:11:12.000' AS DateTime), 46000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (16, CAST(N'2018-04-28T10:11:12.000' AS DateTime), 52000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (17, CAST(N'2018-05-02T10:11:12.000' AS DateTime), 70000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (18, CAST(N'2018-06-02T10:11:12.000' AS DateTime), 42000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (19, CAST(N'2018-07-27T10:11:12.000' AS DateTime), 40000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (20, CAST(N'2018-08-28T10:11:12.000' AS DateTime), 12000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (21, CAST(N'2018-09-27T10:11:12.000' AS DateTime), 25000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (22, CAST(N'2018-10-28T10:11:12.000' AS DateTime), 51000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (23, CAST(N'2018-11-27T10:11:12.000' AS DateTime), 66000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (24, CAST(N'2018-12-28T10:11:12.000' AS DateTime), 42000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (25, CAST(N'2019-01-27T10:11:12.000' AS DateTime), 70000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (26, CAST(N'2019-02-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (27, CAST(N'2019-03-27T10:11:12.000' AS DateTime), 62000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (28, CAST(N'2019-04-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (29, CAST(N'2019-05-27T10:11:12.000' AS DateTime), 45000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (30, CAST(N'2019-06-27T10:11:12.000' AS DateTime), 70000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (31, CAST(N'2019-07-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (32, CAST(N'2019-08-27T10:11:12.000' AS DateTime), 62000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (33, CAST(N'2019-09-28T10:11:12.000' AS DateTime), 38000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (34, CAST(N'2019-10-27T10:11:12.000' AS DateTime), 45000)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (35, CAST(N'2022-04-05T19:48:48.420' AS DateTime), 220)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (36, CAST(N'2022-04-06T14:34:26.913' AS DateTime), 110)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (37, CAST(N'2022-04-06T14:35:35.267' AS DateTime), 290)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (38, CAST(N'2022-04-14T18:44:11.373' AS DateTime), 10880)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (39, CAST(N'2022-04-14T18:50:07.173' AS DateTime), 640)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (40, CAST(N'2022-04-14T18:51:04.263' AS DateTime), 290)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (41, CAST(N'2022-07-14T15:05:35.247' AS DateTime), -3780)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (42, CAST(N'2022-07-14T18:22:05.937' AS DateTime), 110)
INSERT [dbo].[ChargeCount] ([id], [date], [Charge]) VALUES (43, CAST(N'2022-07-14T18:47:20.793' AS DateTime), 110)
SET IDENTITY_INSERT [dbo].[ChargeCount] OFF
GO
SET IDENTITY_INSERT [dbo].[FloorInfo] ON 

INSERT [dbo].[FloorInfo] ([Fid], [Fname]) VALUES (1, N'A栋')
INSERT [dbo].[FloorInfo] ([Fid], [Fname]) VALUES (2, N'B栋')
INSERT [dbo].[FloorInfo] ([Fid], [Fname]) VALUES (3, N'C栋')
SET IDENTITY_INSERT [dbo].[FloorInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[GuestInfo] ON 

INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (1, N'黄宽', 4, N'男   ', N'13657168500', 2400, N'420984199310135520')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (2, N'小尼', 4, N'男   ', N'15322141125', 5200, N'498541459310135520')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (3, N'张瑞', 4, N'男   ', N'15322141125', 5200, N'498541459310135520')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (4, N'彭铭', 4, N'男   ', N'15322141125', 5200, N'498541459310135520')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (5, N'张三', 1, N'男   ', N'13800000000', 1200, N'420576199310134430')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (6, N'李四', 2, N'男   ', N'13652114521', 800, N'420999999310134430')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (7, N'王五', 3, N'女   ', N'15233214415', 1690, N'420888899310134430')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (41, N'喜羊羊', 1, N'男   ', N'13368734597', 0, N'532529200205081234')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (42, N'喜羊羊', 1, N'男   ', N'15331657816', 0, N'532529200208052301')
INSERT [dbo].[GuestInfo] ([Gid], [Gname], [GTid], [Sex], [Mobile], [ChargeSum], [Pid]) VALUES (46, N'陆加桥', 1, N'男   ', N'15331657816', 110, N'532627200102200711')
SET IDENTITY_INSERT [dbo].[GuestInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[GuestType] ON 

INSERT [dbo].[GuestType] ([GTid], [Tname], [Trate]) VALUES (1, N'普通会员', 1)
INSERT [dbo].[GuestType] ([GTid], [Tname], [Trate]) VALUES (2, N'高级会员', 0.95)
INSERT [dbo].[GuestType] ([GTid], [Tname], [Trate]) VALUES (3, N'黄金会员', 0.9)
INSERT [dbo].[GuestType] ([GTid], [Tname], [Trate]) VALUES (4, N'钻石会员', 0.85)
SET IDENTITY_INSERT [dbo].[GuestType] OFF
GO
SET IDENTITY_INSERT [dbo].[OPInfo] ON 

INSERT [dbo].[OPInfo] ([OId], [OName], [Pwd]) VALUES (1, N'huangkuan', N'123')
INSERT [dbo].[OPInfo] ([OId], [OName], [Pwd]) VALUES (2, N'akuan', N'123')
INSERT [dbo].[OPInfo] ([OId], [OName], [Pwd]) VALUES (3, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[OPInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Record] ON 

INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (1, 1, 3, CAST(N'2019-10-13T10:10:32.000' AS DateTime), CAST(N'2019-05-08T10:10:32.000' AS DateTime), N'暂未离开', 5, 2200)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (2, 2, 5, CAST(N'2019-04-17T10:10:32.000' AS DateTime), CAST(N'2019-05-05T10:10:32.000' AS DateTime), N'暂未离开', 5, 2200)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (3, 3, 13, CAST(N'2019-04-13T10:10:32.000' AS DateTime), CAST(N'2019-05-01T10:10:32.000' AS DateTime), N'暂未离开', 5, 5600)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (4, 4, 23, CAST(N'2019-04-08T10:10:32.000' AS DateTime), CAST(N'2019-06-01T10:10:32.000' AS DateTime), N'暂未离开', 5, 2200)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (5, 8, 1, CAST(N'2022-04-05T11:10:09.000' AS DateTime), CAST(N'2022-04-06T11:10:09.000' AS DateTime), N'2022/4/5 19:48:48', 0, 220)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (6, 7, 1, CAST(N'2022-04-05T19:48:58.000' AS DateTime), CAST(N'2022-04-06T19:48:58.000' AS DateTime), N'暂未离开', 1, 220)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (7, 8, 14, CAST(N'2022-04-06T10:31:38.000' AS DateTime), CAST(N'2022-04-07T10:31:38.000' AS DateTime), N'暂未离开', 1, 380)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (8, 8, 2, CAST(N'2022-04-06T12:17:59.000' AS DateTime), CAST(N'2022-04-11T12:17:59.000' AS DateTime), N'暂未离开', 5, 1100)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (9, 8, 4, CAST(N'2022-04-06T14:33:22.000' AS DateTime), CAST(N'2022-04-16T14:33:22.000' AS DateTime), N'2022/4/6 14:34:26', 0, 110)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (10, 8, 25, CAST(N'2022-04-06T14:34:56.000' AS DateTime), CAST(N'2022-04-08T14:34:56.000' AS DateTime), N'2022/4/6 14:35:35', 0, 290)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (11, 8, 31, CAST(N'2022-04-06T14:35:35.000' AS DateTime), CAST(N'2022-04-08T14:34:56.000' AS DateTime), N'2022/4/14 18:44:11', 8, 10880)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (12, 8, 32, CAST(N'2022-04-14T18:42:51.000' AS DateTime), CAST(N'2022-04-24T18:42:51.000' AS DateTime), N'暂未离开', 10, 12800)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (13, 8, 27, CAST(N'2022-04-14T18:44:11.000' AS DateTime), CAST(N'2022-04-08T14:34:56.000' AS DateTime), N'暂未离开', -8, -4060)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (14, 8, 25, CAST(N'2022-04-14T18:45:33.000' AS DateTime), CAST(N'2022-04-24T18:45:33.000' AS DateTime), N'暂未离开', 10, 5800)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (15, 8, 31, CAST(N'2022-04-14T18:45:54.000' AS DateTime), CAST(N'2022-04-24T18:45:54.000' AS DateTime), N'暂未离开', 10, 12800)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (16, 7, 33, CAST(N'2022-04-14T18:48:38.000' AS DateTime), CAST(N'2022-04-19T18:48:38.000' AS DateTime), N'2022/4/14 18:50:07', 0, 640)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (17, 7, 28, CAST(N'2022-04-14T18:50:07.000' AS DateTime), CAST(N'2022-04-19T18:48:38.000' AS DateTime), N'2022/4/14 18:51:04', 0, 290)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (18, 8, 4, CAST(N'2022-04-14T18:57:15.000' AS DateTime), CAST(N'2022-04-24T18:57:15.000' AS DateTime), N'暂未离开', 10, 2200)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (19, 43, 7, CAST(N'2022-07-29T15:05:03.000' AS DateTime), CAST(N'2022-07-31T15:05:03.000' AS DateTime), N'2022/7/14 15:05:35', -14, -3780)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (20, 44, 37, CAST(N'2022-07-14T18:21:47.000' AS DateTime), CAST(N'2022-07-19T18:21:47.000' AS DateTime), N'2022/7/14 18:22:05', 0, 110)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (21, 44, 7, CAST(N'2022-07-14T18:22:05.000' AS DateTime), CAST(N'2022-07-19T18:21:47.000' AS DateTime), N'暂未离开', 4, 1400)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (22, 46, 38, CAST(N'2022-07-14T18:46:59.000' AS DateTime), CAST(N'2022-07-16T18:46:59.000' AS DateTime), N'2022/7/14 18:47:20', 0, 110)
INSERT [dbo].[Record] ([REid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge]) VALUES (23, 46, 39, CAST(N'2022-07-14T18:47:20.000' AS DateTime), CAST(N'2022-07-16T18:46:59.000' AS DateTime), N'暂未离开', 1, 440)
SET IDENTITY_INSERT [dbo].[Record] OFF
GO
SET IDENTITY_INSERT [dbo].[Reserve] ON 

INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (1, 1, 26, CAST(N'2020-04-26T21:12:12.000' AS DateTime), CAST(N'2020-05-15T21:12:12.000' AS DateTime), N'暂未入住', 19, 2360, 2360)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (2, 1, 34, CAST(N'2020-04-26T21:12:12.000' AS DateTime), CAST(N'2020-05-15T21:12:12.000' AS DateTime), N'暂未入住', 19, 2360, 0)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (3, 8, 25, CAST(N'2022-04-06T14:34:56.000' AS DateTime), CAST(N'2022-04-08T14:34:56.000' AS DateTime), N'已转正入住', 2, 1160, 1160)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (4, 8, 8, CAST(N'2022-04-14T18:51:26.000' AS DateTime), CAST(N'2022-04-16T18:51:26.000' AS DateTime), N'已取消离开', 2, 560, 560)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (5, 9, 6, CAST(N'2022-04-25T00:00:00.000' AS DateTime), CAST(N'2022-04-27T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (6, 26, 6, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'暂未入住', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (7, 32, 37, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (8, 32, 37, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (9, 35, 37, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (10, 35, 37, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (11, 35, 38, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
INSERT [dbo].[Reserve] ([Yid], [Gid], [RoomId], [InTime], [OutTime], [FactTime], [daynum], [Charge], [actCharge]) VALUES (12, 30, 37, CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'已取消离开', 2, 440, 440)
SET IDENTITY_INSERT [dbo].[Reserve] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomInfo] ON 

INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (1, N'A001', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (2, N'A002', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (3, N'A003', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (4, N'A004', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (5, N'A005', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (6, N'A006', 1, 1, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (7, N'B001', 2, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (8, N'B002', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (9, N'B003', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (10, N'B004', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (11, N'B005', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (12, N'B006', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (13, N'C001', 3, 2, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (14, N'C002', 3, 2, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (15, N'C003', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (16, N'C004', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (17, N'C005', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (18, N'C006', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (19, N'D001', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (20, N'D002', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (21, N'D003', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (22, N'D004', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (23, N'D005', 4, 2, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (24, N'D006', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (25, N'E001', 5, 2, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (26, N'E002', 5, 1, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (27, N'E003', 5, 2, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (28, N'E004', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (29, N'E005', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (30, N'E006', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (31, N'F001', 6, 2, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (32, N'F002', 6, 2, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (33, N'F003', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (34, N'F004', 6, 1, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (35, N'F005', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (36, N'F006', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (37, N'A007', 1, 5, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (38, N'A008', 1, 5, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (39, N'A009', 1, 2, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (40, N'A010', 1, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (41, N'A011', 1, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (42, N'A012', 1, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (43, N'B007', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (44, N'B008', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (45, N'B009', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (46, N'B010', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (47, N'B011', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (48, N'B012', 2, 3, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (49, N'C007', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (50, N'C008', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (51, N'C009', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (52, N'C010', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (53, N'C011', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (54, N'C012', 3, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (55, N'D007', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (56, N'D008', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (57, N'D009', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (58, N'D010', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (59, N'D011', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (60, N'D012', 4, 3, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (61, N'E007', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (62, N'E008', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (63, N'E009', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (64, N'E010', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (65, N'E011', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (66, N'E012', 5, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (67, N'F007', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (68, N'F008', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (69, N'F009', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (70, N'F010', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (71, N'F011', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (72, N'F012', 6, 3, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (73, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (74, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (75, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (76, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (77, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (78, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (79, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (80, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (81, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (82, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (83, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (84, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (85, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (86, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (87, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (88, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (89, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (90, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (91, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (92, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (93, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (94, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (95, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (96, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (97, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (98, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (99, N'未开通', 5, 6, 3, N'暂无备注')
GO
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (100, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (101, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (102, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (103, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (104, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (105, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (106, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (107, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (108, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (109, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (110, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (111, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (112, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (113, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (114, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (115, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (116, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (117, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (118, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (119, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (120, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (121, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (122, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (123, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (124, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (125, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (126, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (127, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (128, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (129, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (130, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (131, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (132, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (133, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (134, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (135, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (136, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (137, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (138, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (139, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (140, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (141, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (142, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (143, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (144, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (145, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (146, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (147, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (148, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (149, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (150, N'未开通', 1, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (151, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (152, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (153, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (154, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (155, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (156, N'未开通', 2, 6, 1, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (157, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (158, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (159, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (160, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (161, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (162, N'未开通', 3, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (163, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (164, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (165, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (166, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (167, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (168, N'未开通', 4, 6, 2, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (169, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (170, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (171, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (172, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (173, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (174, N'未开通', 5, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (175, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (176, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (177, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (178, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (179, N'未开通', 6, 6, 3, N'暂无备注')
INSERT [dbo].[RoomInfo] ([RoomId], [Number], [RTid], [RSid], [Fid], [Mark]) VALUES (180, N'未开通', 6, 6, 3, N'暂无备注')
SET IDENTITY_INSERT [dbo].[RoomInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomState] ON 

INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (1, N'已预定')
INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (2, N'已入住')
INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (3, N'未入住')
INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (4, N'维修中')
INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (5, N'清扫中')
INSERT [dbo].[RoomState] ([StateId], [StateName]) VALUES (6, N'未开通')
SET IDENTITY_INSERT [dbo].[RoomState] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON 

INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (1, N'普通单人间(220/天)', 220.0000, 0.0000, 0, N'暂无备注')
INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (2, N'豪华单人间(280/天)', 280.0000, 0.0000, 0, N'暂无备注')
INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (3, N'普通双人间(380/天)', 380.0000, 0.0000, 0, N'暂无备注')
INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (4, N'豪华双人间(480/天)', 480.0000, 0.0000, 0, N'暂无备注')
INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (5, N'贵宾套房(580/天)', 580.0000, 120.0000, 1, N'暂无备注')
INSERT [dbo].[RoomType] ([RTid], [RTname], [RTprice], [AddBedPrice], [IsAddBed], [Remark]) VALUES (6, N'总统套房(1280/天)', 1280.0000, 600.0000, 1, N'暂无备注')
SET IDENTITY_INSERT [dbo].[RoomType] OFF
GO
SET IDENTITY_INSERT [dbo].[Trans] ON 

INSERT [dbo].[Trans] ([transid], [reason], [addmoney]) VALUES (1, N'房间损坏维修', 0)
INSERT [dbo].[Trans] ([transid], [reason], [addmoney]) VALUES (2, N'客房升级', 20)
INSERT [dbo].[Trans] ([transid], [reason], [addmoney]) VALUES (3, N'客房降级', 20)
INSERT [dbo].[Trans] ([transid], [reason], [addmoney]) VALUES (4, N'其他因素', 20)
INSERT [dbo].[Trans] ([transid], [reason], [addmoney]) VALUES (5, N'噪音等外界干扰', 0)
SET IDENTITY_INSERT [dbo].[Trans] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UId], [Uname], [Upwd], [Tid], [Sex], [Mobile], [Pid]) VALUES (1, N'birui', N'123', 1, N'男   ', N'13657168500', N'420984199310134430')
INSERT [dbo].[UserInfo] ([UId], [Uname], [Upwd], [Tid], [Sex], [Mobile], [Pid]) VALUES (2, N'biqiang', N'123', 1, N'男   ', N'13657168500', N'420984199310134430')
INSERT [dbo].[UserInfo] ([UId], [Uname], [Upwd], [Tid], [Sex], [Mobile], [Pid]) VALUES (3, N'biming', N'123', 1, N'男   ', N'13657168500', N'420984199310134430')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
ALTER TABLE [dbo].[Record] ADD  DEFAULT ('暂未离开') FOR [FactTime]
GO
ALTER TABLE [dbo].[Record] ADD  DEFAULT ((0)) FOR [Charge]
GO
ALTER TABLE [dbo].[Reserve] ADD  DEFAULT ('暂未入住') FOR [FactTime]
GO
ALTER TABLE [dbo].[UserInfo] ADD  DEFAULT ((1)) FOR [Tid]
GO
USE [master]
GO
ALTER DATABASE [HotelManage1] SET  READ_WRITE 
GO
