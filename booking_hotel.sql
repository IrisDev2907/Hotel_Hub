USE [master]
GO
/****** Object:  Database [Booking_Hotel]    Script Date: 6/6/2023 9:24:09 PM ******/
CREATE DATABASE [Booking_Hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Booking_Hotel', FILENAME = N'D:\Booking_Hotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Booking_Hotel_log', FILENAME = N'D:\Booking_Hotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Booking_Hotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Booking_Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Booking_Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Booking_Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Booking_Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Booking_Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Booking_Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Booking_Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Booking_Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Booking_Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Booking_Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Booking_Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Booking_Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Booking_Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Booking_Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Booking_Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Booking_Hotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Booking_Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Booking_Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Booking_Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Booking_Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Booking_Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Booking_Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Booking_Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Booking_Hotel] SET RECOVERY FULL 
GO
ALTER DATABASE [Booking_Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [Booking_Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Booking_Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Booking_Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Booking_Hotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Booking_Hotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Booking_Hotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Booking_Hotel', N'ON'
GO
ALTER DATABASE [Booking_Hotel] SET QUERY_STORE = OFF
GO
USE [Booking_Hotel]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id_bill] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[money_day] [int] NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_nill] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[head] [nvarchar](200) NULL,
	[blog_content] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id_cmt] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[comment_content] [nvarchar](500) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id_cmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment_Room]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Room](
	[ID_Comment] [int] IDENTITY(1,1) NOT NULL,
	[id_room] [int] NULL,
	[name_cmt] [nvarchar](50) NULL,
	[cmt_room] [nvarchar](500) NULL,
	[date_cmt] [date] NULL,
 CONSTRAINT [PK_Comment_Room] PRIMARY KEY CLUSTERED 
(
	[ID_Comment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[facebook_link] [nvarchar](100) NULL,
 CONSTRAINT [PK__contact__DDDF328E0B62B1D8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id_employee] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](20) NULL,
	[pass] [nvarchar](30) NULL,
	[name] [nvarchar](50) NULL,
	[fulControl] [bit] NULL,
 CONSTRAINT [pk_employee] PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](150) NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[menu_order] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rate]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[job] [nvarchar](50) NULL,
	[rate_content] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rent]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rent](
	[id_rent] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_rent] PRIMARY KEY CLUSTERED 
(
	[id_rent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rentDetails]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rentDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[id_room] [int] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_rentDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id_room] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[price] [int] NULL,
	[IsActive] [bit] NULL,
	[id_type] [int] NULL,
	[IsHot] [bit] NULL,
	[describe] [nvarchar](max) NULL,
	[bed] [nchar](10) NULL,
	[size] [nchar](30) NULL,
	[view_room] [nchar](10) NULL,
 CONSTRAINT [Pk_bike] PRIMARY KEY CLUSTERED 
(
	[id_room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblrating]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblrating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rating] [int] NULL,
	[review] [varchar](max) NULL,
 CONSTRAINT [PK_tblrating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 6/6/2023 9:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[price_day] [int] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id_bill], [id_rent], [money_day], [date_start], [date_end], [status]) VALUES (10, 1023, 2500000, CAST(N'2023-06-02T18:08:44.217' AS DateTime), CAST(N'2023-06-02T18:08:56.263' AS DateTime), N'Hoàn thành')
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_day], [date_start], [date_end], [status]) VALUES (11, 1022, 2000000, CAST(N'2023-06-02T18:09:53.487' AS DateTime), CAST(N'2023-06-02T18:10:04.957' AS DateTime), N'Hoàn thành')
INSERT [dbo].[bill] ([id_bill], [id_rent], [money_day], [date_start], [date_end], [status]) VALUES (12, 1021, 30000000, CAST(N'2023-06-02T18:24:01.220' AS DateTime), CAST(N'2023-06-02T18:25:09.930' AS DateTime), N'Hoàn thành')
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[blog] ON 

INSERT [dbo].[blog] ([id], [title], [image], [head], [blog_content], [IsActive], [date]) VALUES (7, N'asdasd', N'/Content/images/blog/33236517.jpg', N'asdsadd', N'<p>asdasddas</p>
', 1, CAST(N'2023-05-14' AS Date))
SET IDENTITY_INSERT [dbo].[blog] OFF
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (31, 7, N'sad', N'asd', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (32, 7, N'sad', N'asd', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (33, 7, N'asdasd', N'dasd12', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (34, 7, N'a', N'a', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (35, 7, N'ád', NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (36, 7, N'áđasda', NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (37, 7, N'ádư123123', NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[comment] ([id_cmt], [id], [name], [comment_content], [date]) VALUES (38, 7, N'ád1231245123', N'đắ312315123123', CAST(N'2023-05-28' AS Date))
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment_Room] ON 

INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (1, 20, N'cc', N'lo', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (2, 18, N'a', N'a', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (3, 18, N'asd', N'asd', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (5, 18, N'ád', N'ád', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (6, 18, N'123231', N'dá12312321', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[Comment_Room] ([ID_Comment], [id_room], [name_cmt], [cmt_room], [date_cmt]) VALUES (7, 19, N'123312áđá', N'123áđâsd123123', CAST(N'2023-05-28' AS Date))
SET IDENTITY_INSERT [dbo].[Comment_Room] OFF
GO
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([id], [address], [phone], [email], [facebook_link]) VALUES (1, N'Thu Duc Campus Hutech khu E', N'0123456789', N'hotelhub@gmail.com', N'https://www.facebook.com/hotelhub/')
SET IDENTITY_INSERT [dbo].[contact] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id_employee], [account], [pass], [name], [fulControl]) VALUES (1, N'admin               ', N'1', N'Huy', 1)
INSERT [dbo].[employee] ([id_employee], [account], [pass], [name], [fulControl]) VALUES (3, N'employye', N'employye', N'Nhân Viên', 0)
INSERT [dbo].[employee] ([id_employee], [account], [pass], [name], [fulControl]) VALUES (4, N'Admin', N'123', N'Hieu', 1)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [menu_order]) VALUES (1, N'TRANG CHỦ', N'../Home', 1, 1)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [menu_order]) VALUES (2, N'GIỚI THIỆU', N'../About', 1, 4)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [menu_order]) VALUES (3, N'Phòng', N'../Rooms', 1, 2)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [menu_order]) VALUES (5, N'BÀI VIẾT ', N'../Blog', 1, 3)
INSERT [dbo].[menu] ([id], [title], [link], [IsActive], [menu_order]) VALUES (6, N'LIÊN HỆ', N'../Contact', 1, 5)
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[rent] ON 

INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (21, N'', N'kk', N'44', N'gmail@gmail.com', CAST(N'2023-05-23T07:49:14.230' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (1021, N'213sad1231áđá', N'kk', N'12312321', N'tranvungochieu2907@gmail.com', CAST(N'2023-05-28T15:47:50.320' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (1022, N'khong co', N'nguyen van teo', N'0987621', N'abc@gmail', CAST(N'2023-06-02T10:54:22.473' AS DateTime))
INSERT [dbo].[rent] ([id_rent], [note], [name], [phone], [mail], [date]) VALUES (1023, N'asdads12312', N'kk', N'0987621', N'abc@gmail', CAST(N'2023-06-02T17:30:49.290' AS DateTime))
SET IDENTITY_INSERT [dbo].[rent] OFF
GO
SET IDENTITY_INSERT [dbo].[rentDetails] ON 

INSERT [dbo].[rentDetails] ([id], [id_rent], [id_room], [amount]) VALUES (30, 21, 19, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_room], [amount]) VALUES (1030, 1021, 21, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_room], [amount]) VALUES (1031, 1022, 19, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_room], [amount]) VALUES (1032, 1023, 19, 1)
INSERT [dbo].[rentDetails] ([id], [id_rent], [id_room], [amount]) VALUES (1033, 1023, 20, 1)
SET IDENTITY_INSERT [dbo].[rentDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (18, N'Bonita Signature The View', N'/Content/images/room/436773940.jpg', 1000000, 1, 1, 0, N'<p>Bonita Signature The View</p>
', N'2         ', N'40m2                          ', N'Biển      ')
INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (19, N'C Central Hotel- Đề Thám Bùi Viện Walking Street', N'/Content/images/room/369830253.jpg', 2000000, 1, 2, 1, N'<p>C Central Hotel- Đề Th&aacute;m B&ugrave;i Viện Walking Street</p>
', N'2         ', N'40m2                          ', NULL)
INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (20, N'Calista Sai Gon Hotel', N'/Content/images/room/83299023.jpg', 500000, 1, 3, 1, N'<p>Calista Sai Gon Hotel</p>
', N'3         ', N'40m2                          ', NULL)
INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (21, N'Emerald Central', N'/Content/images/room/176313015.jpg', 30000000, 1, 4, 1, N'<p>Emerald Central</p>
', N'3         ', N'40m2                          ', NULL)
INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (22, N'Felix Hotel at Bui Vien Walking Street', N'/Content/images/room/378156132.jpg', 20000000, 1, 5, 1, N'<p>Felix Hotel at Bui Vien Walking Street</p>
', N'2         ', N'40m2                          ', NULL)
INSERT [dbo].[room] ([id_room], [name], [image], [price], [IsActive], [id_type], [IsHot], [describe], [bed], [size], [view_room]) VALUES (23, N'GK Central Hotel', N'/Content/images/room/33236517.jpg', 4000, 1, 6, 1, N'<p>GK Central Hotel</p>
', N'3         ', N'40m2                          ', NULL)
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (1, N'Đông Á', 200000, N'/Content/images/download.png')
INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (2, N'Vũng Tàu', 200000, N'/Content/images/TIH-Logo(2020)[RESORT]newversion[DarkGold].png')
INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (3, N'Mường Thanh', 200000, N'/Content/images/Mường thanh.png')
INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (4, N'Phú Quốc', 200000, N'/Content/images/Phú Quốc.png')
INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (5, N'Đà Lạt', 200000, N'/Content/images/Dầ Lạt.png')
INSERT [dbo].[type] ([id_type], [type], [price_day], [image]) VALUES (6, N'Đà Nẵng', 200000, N'/Content/images/Đà Nẵng.png')
SET IDENTITY_INSERT [dbo].[type] OFF
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_rent]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_blog] FOREIGN KEY([id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_blog]
GO
ALTER TABLE [dbo].[Comment_Room]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Room_room1] FOREIGN KEY([id_room])
REFERENCES [dbo].[room] ([id_room])
GO
ALTER TABLE [dbo].[Comment_Room] CHECK CONSTRAINT [FK_Comment_Room_room1]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_bike] FOREIGN KEY([id_room])
REFERENCES [dbo].[room] ([id_room])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_bike]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_rent]
GO
ALTER TABLE [dbo].[room]  WITH NOCHECK ADD  CONSTRAINT [FK_bike_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[type] ([id_type])
GO
ALTER TABLE [dbo].[room] NOCHECK CONSTRAINT [FK_bike_type]
GO
USE [master]
GO
ALTER DATABASE [Booking_Hotel] SET  READ_WRITE 
GO
