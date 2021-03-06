USE [master]
GO
/****** Object:  Database [FruitsShop]    Script Date: 4/15 星期五 17:34:17 ******/
CREATE DATABASE [FruitsShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FruitsShop', FILENAME = N'D:\SQL\MSSQL11.MSSQLSERVER\MSSQL\DATA\FruitsShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FruitsShop_log', FILENAME = N'D:\SQL\MSSQL11.MSSQLSERVER\MSSQL\DATA\FruitsShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FruitsShop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FruitsShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FruitsShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FruitsShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FruitsShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FruitsShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FruitsShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [FruitsShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FruitsShop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FruitsShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FruitsShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FruitsShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FruitsShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FruitsShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FruitsShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FruitsShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FruitsShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FruitsShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FruitsShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FruitsShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FruitsShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FruitsShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FruitsShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FruitsShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FruitsShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FruitsShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FruitsShop] SET  MULTI_USER 
GO
ALTER DATABASE [FruitsShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FruitsShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FruitsShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FruitsShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FruitsShop]
GO
/****** Object:  Table [dbo].[AdminInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminInfo](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nchar](10) NOT NULL,
	[AdminPsw] [nchar](10) NOT NULL,
 CONSTRAINT [PK_AdminInfo] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryAddressInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryAddressInfo](
	[DAdressID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DeliveryAddress] [nvarchar](2000) NULL,
	[UserVName] [nchar](10) NULL,
	[UserPhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_DeliveryAddressInfo] PRIMARY KEY CLUSTERED 
(
	[DAdressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FruitGroupInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FruitGroupInfo](
	[FGroupId] [int] IDENTITY(1,1) NOT NULL,
	[FGroupName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FruitGroupInfo] PRIMARY KEY CLUSTERED 
(
	[FGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FruitInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FruitInfo](
	[FruitId] [int] IDENTITY(1,1) NOT NULL,
	[FruitGroupId] [int] NOT NULL,
	[FruitName] [nchar](10) NOT NULL,
	[FruitImage] [nvarchar](50) NULL,
	[FruitComment] [nvarchar](200) NULL,
	[FruitOPrice] [numeric](10, 2) NULL,
	[FruitNPrice] [numeric](10, 2) NULL,
 CONSTRAINT [PK_FruitInfo] PRIMARY KEY CLUSTERED 
(
	[FruitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderPrice] [numeric](10, 2) NOT NULL,
	[OrderUserName] [nchar](10) NOT NULL,
	[OrderUserAdress] [nvarchar](200) NOT NULL,
	[OrderUserPhone] [nvarchar](50) NOT NULL,
	[OrderTime] [nvarchar](50) NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[OrderUserComment] [nvarchar](300) NULL,
	[OrderAssessByUser] [nvarchar](300) NULL,
	[OrderAssessByAdm] [nvarchar](300) NULL,
	[OrderExpressCompany] [nvarchar](50) NULL,
	[OrderExpressNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_OrderInfo] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusId] [nvarchar](50) NOT NULL,
	[StatusComments] [nvarchar](50) NULL,
	[Next] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShopCar]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopCar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FruitId] [int] NOT NULL,
	[FruitNum] [int] NOT NULL,
	[FruitPrice] [numeric](10, 2) NOT NULL,
	[FruitSumPrice]  AS ([FruitNum]*[FruitPrice]) PERSISTED,
 CONSTRAINT [PK_ShopCar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 4/15 星期五 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserVName] [nchar](10) NOT NULL,
	[UserPsw] [nchar](10) NOT NULL,
	[UserTName] [nchar](10) NOT NULL,
	[UserAdress] [nvarchar](50) NULL,
	[UserPhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AdminInfo] ON 

INSERT [dbo].[AdminInfo] ([AdminId], [AdminName], [AdminPsw]) VALUES (1, N'yutao     ', N'123123    ')
SET IDENTITY_INSERT [dbo].[AdminInfo] OFF
SET IDENTITY_INSERT [dbo].[DeliveryAddressInfo] ON 

INSERT [dbo].[DeliveryAddressInfo] ([DAdressID], [UserId], [DeliveryAddress], [UserVName], [UserPhone]) VALUES (1, 1, N'山西省太原市迎泽西大街太原理工大学迎西校区+山西省朔州市怀仁县+', N'test      ', N'18334700000')
SET IDENTITY_INSERT [dbo].[DeliveryAddressInfo] OFF
SET IDENTITY_INSERT [dbo].[FruitGroupInfo] ON 

INSERT [dbo].[FruitGroupInfo] ([FGroupId], [FGroupName]) VALUES (1, N'进口鲜果')
INSERT [dbo].[FruitGroupInfo] ([FGroupId], [FGroupName]) VALUES (2, N'国内应季')
INSERT [dbo].[FruitGroupInfo] ([FGroupId], [FGroupName]) VALUES (3, N'营养套餐')
INSERT [dbo].[FruitGroupInfo] ([FGroupId], [FGroupName]) VALUES (4, N'应季搭配')
INSERT [dbo].[FruitGroupInfo] ([FGroupId], [FGroupName]) VALUES (5, N'精装礼盒')
SET IDENTITY_INSERT [dbo].[FruitGroupInfo] OFF
SET IDENTITY_INSERT [dbo].[FruitInfo] ON 

INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (3, 2, N'火龙果       ', N'~\Images\fruits\火龙果.jpg', N'新鲜白色火龙果', CAST(10.00 AS Numeric(10, 2)), CAST(9.50 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (5, 1, N'柠檬        ', N'~\Images\fruits\柠檬.jpg', N'新鲜柠檬，酸甜可口', CAST(12.00 AS Numeric(10, 2)), CAST(11.50 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (6, 1, N'樱桃        ', N'~\Images\fruits\樱桃.jpg', N'樱桃，酸甜可口', CAST(17.00 AS Numeric(10, 2)), CAST(13.50 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (7, 1, N'葡萄        ', N'~\Images\fruits\葡萄.jpg', N'颗粒饱满酸甜', CAST(19.00 AS Numeric(10, 2)), CAST(16.50 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (8, 2, N'橙子        ', N'~\Images\fruits\橙子.jpg', N'酸甜可口，新鲜汁多', CAST(10.00 AS Numeric(10, 2)), CAST(8.90 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (9, 2, N'香蕉        ', N'~\Images\fruits\香蕉.jpg', N'云南香蕉，新鲜', CAST(5.00 AS Numeric(10, 2)), CAST(5.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1004, 1, N'菠萝        ', N'~\Images\fruits\菠萝.jpg', N'云南菠萝，新鲜可口', CAST(8.00 AS Numeric(10, 2)), CAST(5.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1005, 2, N'苹果        ', N'~\Images\fruits\苹果.jpg', N'吉县苹果，个大脆甜', CAST(10.00 AS Numeric(10, 2)), CAST(9.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1007, 3, N'套餐1       ', N'~\Images\fruits\套餐1.jpg', N'营养搭配均衡好吃', CAST(100.00 AS Numeric(10, 2)), CAST(99.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1008, 3, N'套餐2       ', N'~\Images\fruits\套餐2.jpg', N'营养搭配均衡好吃', CAST(100.00 AS Numeric(10, 2)), CAST(99.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1009, 5, N'套餐3       ', N'~\Images\fruits\套餐3.jpg', N'精装，精品', CAST(200.00 AS Numeric(10, 2)), CAST(198.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1010, 4, N'套餐4       ', N'~\Images\fruits\套餐4.jpg', N'应季组合', CAST(150.00 AS Numeric(10, 2)), CAST(130.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1011, 4, N'套餐5       ', N'~\Images\fruits\套餐5.jpg', N'应季组合', CAST(150.00 AS Numeric(10, 2)), CAST(130.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (1012, 5, N'套餐6       ', N'~\Images\fruits\套餐6.jpg', N'进口精装礼盒', CAST(300.00 AS Numeric(10, 2)), CAST(280.00 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (2004, 1, N'草莓        ', N'~\Images\fruits\草莓.jpg', N'新鲜草莓，进口特色', CAST(20.00 AS Numeric(10, 2)), CAST(18.50 AS Numeric(10, 2)))
INSERT [dbo].[FruitInfo] ([FruitId], [FruitGroupId], [FruitName], [FruitImage], [FruitComment], [FruitOPrice], [FruitNPrice]) VALUES (2007, 1, N'芒果        ', N'~//Images//fruits//芒果.jpg', N'新鲜芒果好吃', CAST(10.00 AS Numeric(10, 2)), CAST(9.80 AS Numeric(10, 2)))
SET IDENTITY_INSERT [dbo].[FruitInfo] OFF
SET IDENTITY_INSERT [dbo].[OrderInfo] ON 

INSERT [dbo].[OrderInfo] ([OrderId], [OrderPrice], [OrderUserName], [OrderUserAdress], [OrderUserPhone], [OrderTime], [OrderStatus], [OrderUserComment], [OrderAssessByUser], [OrderAssessByAdm], [OrderExpressCompany], [OrderExpressNumber]) VALUES (13, CAST(9.50 AS Numeric(10, 2)), N'test      ', N'山西省太原市迎泽西大街太原理工大学迎西校区', N'18334700000', N'2016-03-28 17:18:07', N'订单结束，感谢您对我们的信任，欢迎您下次光临', N'', N'1123123', NULL, N'1111', N'11111')
INSERT [dbo].[OrderInfo] ([OrderId], [OrderPrice], [OrderUserName], [OrderUserAdress], [OrderUserPhone], [OrderTime], [OrderStatus], [OrderUserComment], [OrderAssessByUser], [OrderAssessByAdm], [OrderExpressCompany], [OrderExpressNumber]) VALUES (14, CAST(9.50 AS Numeric(10, 2)), N'test      ', N'山西省太原市迎泽西大街太原理工大学迎西校区', N'18334700000', N'2016-03-29 00:12:50', N'已付款，请等待卖家发货', N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderInfo] OFF
INSERT [dbo].[OrderStatus] ([StatusId], [StatusComments], [Next]) VALUES (N'0', N'已提交订单，请付款', N'付款')
INSERT [dbo].[OrderStatus] ([StatusId], [StatusComments], [Next]) VALUES (N'1', N'已付款，请等待卖家发货', N'催卖家发货')
INSERT [dbo].[OrderStatus] ([StatusId], [StatusComments], [Next]) VALUES (N'2', N'已发货，快递小哥正飞速前往~请确认收货', N'确认收货')
INSERT [dbo].[OrderStatus] ([StatusId], [StatusComments], [Next]) VALUES (N'3', N'已完成订单，请对我们进行评价', N'评价')
INSERT [dbo].[OrderStatus] ([StatusId], [StatusComments], [Next]) VALUES (N'4', N'订单结束，感谢您对我们的信任，欢迎您下次光临', N'删除订单')
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [UserVName], [UserPsw], [UserTName], [UserAdress], [UserPhone]) VALUES (1, N'test      ', N'123123    ', N'TEST      ', N'太原理工大学', N'18334700000')
INSERT [dbo].[UserInfo] ([UserId], [UserVName], [UserPsw], [UserTName], [UserAdress], [UserPhone]) VALUES (3, N'test2     ', N'123123    ', N'yt        ', N'北京中软基地', N'18334700001')
INSERT [dbo].[UserInfo] ([UserId], [UserVName], [UserPsw], [UserTName], [UserAdress], [UserPhone]) VALUES (1002, N'admin     ', N'password  ', N'管理员       ', N'', N'')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
ALTER TABLE [dbo].[FruitInfo] ADD  CONSTRAINT [DF_FruitInfo_FruitOPrice]  DEFAULT ((0)) FOR [FruitOPrice]
GO
ALTER TABLE [dbo].[FruitInfo] ADD  CONSTRAINT [DF_FruitInfo_FruitNPrice]  DEFAULT ((0)) FOR [FruitNPrice]
GO
ALTER TABLE [dbo].[OrderInfo] ADD  CONSTRAINT [DF_OrderInfo_OrderState]  DEFAULT ((0)) FOR [OrderStatus]
GO
ALTER TABLE [dbo].[ShopCar] ADD  CONSTRAINT [DF_ShopCar_FruitNum]  DEFAULT ((0)) FOR [FruitNum]
GO
ALTER TABLE [dbo].[ShopCar] ADD  CONSTRAINT [DF_ShopCar_FruitPrice]  DEFAULT ((0.00)) FOR [FruitPrice]
GO
ALTER TABLE [dbo].[DeliveryAddressInfo]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryAddressInfo_DeliveryAddressInfo] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInfo] ([UserId])
GO
ALTER TABLE [dbo].[DeliveryAddressInfo] CHECK CONSTRAINT [FK_DeliveryAddressInfo_DeliveryAddressInfo]
GO
ALTER TABLE [dbo].[FruitInfo]  WITH CHECK ADD  CONSTRAINT [FK_FruitInfo_FruitGroupInfo] FOREIGN KEY([FruitGroupId])
REFERENCES [dbo].[FruitGroupInfo] ([FGroupId])
GO
ALTER TABLE [dbo].[FruitInfo] CHECK CONSTRAINT [FK_FruitInfo_FruitGroupInfo]
GO
ALTER TABLE [dbo].[ShopCar]  WITH CHECK ADD  CONSTRAINT [FK_ShopCar_FruitInfo] FOREIGN KEY([FruitId])
REFERENCES [dbo].[FruitInfo] ([FruitId])
GO
ALTER TABLE [dbo].[ShopCar] CHECK CONSTRAINT [FK_ShopCar_FruitInfo]
GO
ALTER TABLE [dbo].[ShopCar]  WITH CHECK ADD  CONSTRAINT [FK_ShopCar_UserInfo] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInfo] ([UserId])
GO
ALTER TABLE [dbo].[ShopCar] CHECK CONSTRAINT [FK_ShopCar_UserInfo]
GO
USE [master]
GO
ALTER DATABASE [FruitsShop] SET  READ_WRITE 
GO
