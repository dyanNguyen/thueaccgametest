USE [master]
GO
drop table Game
go
/****** Object:  Database [qlythueacc]    Script Date: 18-Nov-22 8:59:35 AM ******/
CREATE DATABASE [qlythueaccgame]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlythueaccgame', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlythueaccgame.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlythueaccgame_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlythueaccgame_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlythueacc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlythueacc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlythueacc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlythueacc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlythueacc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlythueacc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlythueacc] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlythueacc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlythueacc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlythueacc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlythueacc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlythueacc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlythueacc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlythueacc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlythueacc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlythueacc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlythueacc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlythueacc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlythueacc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlythueacc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlythueacc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlythueacc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlythueacc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlythueacc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlythueacc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlythueacc] SET  MULTI_USER 
GO
ALTER DATABASE [qlythueacc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlythueacc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlythueacc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlythueacc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlythueacc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlythueacc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlythueacc] SET QUERY_STORE = OFF
GO
USE [qlythueacc]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Game_ID] [varchar](10) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Game_Name] [nvarchar](50) NOT NULL,
	[idLoaiGame] [varchar](10) NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Game_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[CustID] [varchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Phone] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
	[Cust_Balance] [float] NOT NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Order_ID] [varchar](10) NOT NULL,
	[Game_ID] [varchar](10) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLTaiKhoanChoThue]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLTaiKhoanChoThue](
	[RentAccount_ID] [varchar](10) NOT NULL,
	[RentAccount_Password] [varchar](50) NOT NULL,
	[Game_ID] [varchar](10) NULL,
	[AccountName] [varchar](50) NULL,
 CONSTRAINT [PK_QLTaiKhoanChoThue] PRIMARY KEY CLUSTERED 
(
	[RentAccount_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[Payment_ID] [varchar](10) NOT NULL,
	[Rent_time] [int] NOT NULL,
	[CustID] [varchar](10) NOT NULL,
	[Order_ID] [varchar](10) NULL,
 CONSTRAINT [PK_Thanh Toan] PRIMARY KEY CLUSTERED 
(
	[Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoaiGame]    Script Date: 18-Nov-22 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiGame](
	[idLoaiGame] [varchar](10) NOT NULL,
	[TenLoaiGame] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoaiGame] PRIMARY KEY CLUSTERED 
(
	[idLoaiGame] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11101', 1799000, 77, N'Call of Duty®: Modern Warfare® II', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11102', 360000, 45, N'NARAKA: BLADEPOINT', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11103', 881000, 45, N'MONSTER HUNTER RISE', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11104', 1139000, 24, N'God of War', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11105', 1159000, 18, N'Marvel’s Spider-Man: Miles Morales', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11106', 990000, 3, N'Dying Light 2 Stay Human', N'10001')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11107', 142000, 3, N'SOULSTONE SURVIVORS', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11108', 250000, 45, N'SHADOWS OVER LOATHING', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11109', 260000, 45, N'BRAVERY AND GREED', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11110', 480000, 24, N'MONOCHROME MOBIUS: RIGHTS AND WRONGS FORGOTTEN', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11111', 1138000, 18, N'PERSONA 5 ROYAL', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11112', 258000, 77, N'Tale of Immortal', N'10002')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11113', 325000, 3, N'Cities: Skyline', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11114', 990000, 45, N'Sid Meier’s Civilization® VI', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11115', 480000, 75, N'Age of Empires IV: Anniversary Edition', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11116', 1061500, 24, N'Total War: WARHAMMER III', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11117', 801000, 18, N'VICTORIA 3', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11118', 499000, 77, N'TERRA INVICTA', N'10003')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11119', 510000, 3, N'Rust', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11120', 990000, 45, N'Hogwards Legacy', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11121', 830000, 75, N'SONIC FRONTIERS', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11122', 321000, 24, N'SOMERVILLE', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11123', 650000, 18, N'A PLAGUE TALE: REQUIEM', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11124', 226500, 77, N'SIGNALIS', N'10004')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11125', 940000, 3, N'FOOTBALL MANAGER 2023', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11126', 375500, 45, N'CITY BUS MANAGER', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11127', 250000, 75, N'POLICE SIMULATOR: PATROL OFFICERS', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11128', 1340000, 24, N'Microsoft Flight Simulator', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11129', 310000, 18, N'Train Sim World® 3', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11130', 350000, 77, N'Euro Truck Simulator 2', N'10005')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11131', 420000, 3, N'WRC GENERATIONS – THE FIA WRC OFFICIAL GAME', N'10006')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11132', 990000, 45, N'FORZA HORIZON 5', N'10006')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11133', 342500, 75, N'Wreckfest', N'10006')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11134', 990000, 24, N'F1® 22', N'10006')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11135', 990000, 18, N'FIFA 22', N'10006')
INSERT [dbo].[Game] ([Game_ID], [Price], [Quantity], [Game_Name], [idLoaiGame]) VALUES (N'11136', 950000, 77, N'Tennis World Tour 2', N'10006')
GO
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'1', N'c6rlgd1N29', N'11101', N'BruhRentAcc1')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'10', N'dD08MUaeoU', N'11104', N'BruhRentAcc10')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'100', N'brC0AHlwLP', N'11134', N'BruhRentAcc100')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'101', N'sadjosadniosa2', N'11134', N'BruhRentAcc101')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'102', N'D9adasss', N'11134', N'BruhRentAcc102')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'103', N'H4sbCu&x&O', N'11135', N'BruhRentAcc103')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'104', N'O&1oFjGyWR', N'11135', N'BruhRentAcc104')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'105', N'8nZJ13yxtR', N'11135', N'BruhRentAcc105')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'106', N'qCdkvyoqxj', N'11136', N'BruhRentAcc106')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'107', N'GOdHL&2b&g', N'11136', N'BruhRentAcc107')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'108', N'52OeTPhUHU', N'11136', N'BruhRentAcc108')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'11', N'UlHfd23', N'11104', N'BruhRentAcc11')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'12', N'eeuQZ29Yxv', N'11104', N'BruhRentAcc12')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'13', N'lUBtkXHE5M', N'11105', N'BruhRentAcc13')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'14', N'jZ22hjrAbg', N'11105', N'BruhRentAcc14')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'15', N'wIEsqvu&Vt', N'11105', N'BruhRentAcc15')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'16', N'pAP264ZNQm', N'11106', N'BruhRentAcc16')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'17', N'sBOuDdsad2', N'11106', N'BruhRentAcc17')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'18', N'm7b2zLywFV', N'11106', N'BruhRentAcc18')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'19', N'r7gB9uNrBn', N'11107', N'BruhRentAcc19')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'2', N'6wt4NirtTK', N'11101', N'BruhRentAcc2')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'20', N'XozozEuZTE', N'11107', N'BruhRentAcc20')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'21', N's9TNKNqKD0', N'11107', N'BruhRentAcc21')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'22', N'pt7XHOLeHf', N'11108', N'BruhRentAcc22')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'23', N'MpkNmmjrF6', N'11108', N'BruhRentAcc23')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'24', N'79Oaeisada', N'11108', N'BruhRentAcc24')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'25', N'OlRdDi4gHL', N'11109', N'BruhRentAcc25')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'26', N'FlC&A1gtso', N'11109', N'BruhRentAcc26')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'27', N'21EQbs2bA6', N'11109', N'BruhRentAcc27')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'28', N'vhrGE61QnI', N'11110', N'BruhRentAcc28')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'29', N'm45y6FzmAt', N'11110', N'BruhRentAcc29')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'3', N'XBzxoa8J8K', N'11101', N'BruhRentAcc3')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'30', N'rKusdaas2', N'11110', N'BruhRentAcc30')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'31', N'&0luPz2QKx', N'11111', N'BruhRentAcc31')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'32', N'q8uv02C2xU', N'11111', N'BruhRentAcc32')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'33', N'oipsibSbQd', N'11111', N'BruhRentAcc33')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'34', N'fSlKO4MRco', N'11112', N'BruhRentAcc34')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'35', N'IMwEJtHd08', N'11112', N'BruhRentAcc35')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'36', N'Aty1yacKE4', N'11112', N'BruhRentAcc36')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'37', N'sdasaccdsas22', N'11113', N'BruhRentAcc37')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'38', N'KhyAoJ8MxH', N'11113', N'BruhRentAcc38')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'39', N'c1NV2N7mpL', N'11113', N'BruhRentAcc39')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'4', N'ftZQg95hW7', N'11102', N'BruhRentAcc4')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'40', N'ro9QaHNRtu', N'11114', N'BruhRentAcc40')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'41', N'v7VvPS8fp', N'11114', N'BruhRentAcc41')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'42', N'tL8LyIq07h', N'11114', N'BruhRentAcc42')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'43', N'LyPUQ2tvTo', N'11115', N'BruhRentAcc43')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'44', N'jQoGFMrWua', N'11115', N'BruhRentAcc44')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'45', N'V&omOw6GtD', N'11115', N'BruhRentAcc45')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'46', N'yJDPwlRrbv', N'11116', N'BruhRentAcc46')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'47', N'aMNfdluOB0', N'11116', N'BruhRentAcc47')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'48', N'0o&5UQqjh1', N'11116', N'BruhRentAcc48')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'49', N'thLC0JxS4a', N'11117', N'BruhRentAcc49')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'5', N'qk5lpSOiOz', N'11102', N'BruhRentAcc5')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'50', N'PmxmMcRQ&k', N'11117', N'BruhRentAcc50')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'51', N'Q2TS7sad', N'11117', N'BruhRentAcc51')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'52', N'ChLfqLysno', N'11118', N'BruhRentAcc52')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'53', N'NErM3Fycf&', N'11118', N'BruhRentAcc53')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'54', N'H7uki3jdMM', N'11118', N'BruhRentAcc54')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'55', N'HZ5c80x1sn', N'11119', N'BruhRentAcc55')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'56', N'6H3dsau2', N'11119', N'BruhRentAcc56')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'57', N'X&CTeufHZq', N'11119', N'BruhRentAcc57')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'58', N'lycqUtyTut', N'11120', N'BruhRentAcc58')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'59', N'IA4M9qSWVD', N'11120', N'BruhRentAcc59')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'6', N'4o4tvqY5Eo', N'11102', N'BruhRentAcc6')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'60', N'bo7vYtr7DS', N'11120', N'BruhRentAcc60')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'61', N'ByKvrwijRe', N'11121', N'BruhRentAcc61')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'62', N'Wsoj80bie0', N'11121', N'BruhRentAcc62')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'63', N'w9o56Wz', N'11121', N'BruhRentAcc63')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'64', N'Rt6tusad', N'11122', N'BruhRentAcc64')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'65', N'DP7q2N3d7i', N'11122', N'BruhRentAcc65')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'66', N'e5zjB0HC7o', N'11122', N'BruhRentAcc66')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'67', N'Qh3eUxmOWX', N'11123', N'BruhRentAcc67')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'68', N'rjwym1NqeU', N'11123', N'BruhRentAcc68')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'69', N'aKaT6lTN', N'11123', N'BruhRentAcc69')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'7', N'Xtb0LJIZ&o', N'11103', N'BruhRentAcc7')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'70', N'SXKW5wNrEq', N'11124', N'BruhRentAcc70')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'71', N'Qdsaoubd2', N'11124', N'BruhRentAcc71')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'72', N'rvRTIX8uuF', N'11124', N'BruhRentAcc72')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'73', N'XHmrvzhKlt', N'11125', N'BruhRentAcc73')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'74', N'G55uU5HuRk', N'11125', N'BruhRentAcc74')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'75', N'tKZEnslooh', N'11125', N'BruhRentAcc75')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'76', N'CF008v&pAn', N'11126', N'BruhRentAcc76')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'77', N'vQ&qMP0mDZ', N'11126', N'BruhRentAcc77')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'78', N'Q0u&Mju1pc', N'11126', N'BruhRentAcc78')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'79', N'r3rr4zhtqz', N'11127', N'BruhRentAcc79')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'8', N'gkbmYSGw4m', N'11103', N'BruhRentAcc8')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'80', N'lgRnbn6jTK', N'11127', N'BruhRentAcc80')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'81', N'CuS8wx&kyj', N'11127', N'BruhRentAcc81')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'82', N'Orm9dyAMw&', N'11128', N'BruhRentAcc82')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'83', N'NjioRLVft1', N'11128', N'BruhRentAcc83')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'84', N'1B5cR3TLvT', N'11128', N'BruhRentAcc84')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'85', N'6DFtMsleGk', N'11129', N'BruhRentAcc85')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'86', N'gdVJLteyel', N'11129', N'BruhRentAcc86')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'87', N'1fw6BP9mlt', N'11129', N'BruhRentAcc87')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'88', N'AzBPmfJaLZ', N'11130', N'BruhRentAcc88')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'89', N'Eu6rNZq3RO', N'11130', N'BruhRentAcc89')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'9', N'x8kqEhwmmD', N'11103', N'BruhRentAcc9')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'90', N'oT5mhP6z5z', N'11130', N'BruhRentAcc90')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'91', N'xFsBmhy7BE', N'11131', N'BruhRentAcc91')
GO
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'92', N'gXAuIfN2ip', N'11131', N'BruhRentAcc92')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'93', N'YZKeFq5TuA', N'11131', N'BruhRentAcc93')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'94', N'MuYH7My', N'11132', N'BruhRentAcc94')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'95', N'L4idz2CODo', N'11132', N'BruhRentAcc95')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'96', N'7lWZRtdWHZ', N'11132', N'BruhRentAcc96')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'97', N'plVHucduk9', N'11133', N'BruhRentAcc97')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'98', N'Fdobsaudo2', N'11133', N'BruhRentAcc98')
INSERT [dbo].[QLTaiKhoanChoThue] ([RentAccount_ID], [RentAccount_Password], [Game_ID], [AccountName]) VALUES (N'99', N'ut2SMcGz2X', N'11133', N'BruhRentAcc99')
GO
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10001', N'Hành Ð?ng')
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10002', N'Nh?p Vai')
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10003', N'Chi?n thu?t')
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10004', N'Phiêu Luu')
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10005', N'Mô Ph?ng')
INSERT [dbo].[TheLoaiGame] ([idLoaiGame], [TenLoaiGame]) VALUES (N'10006', N'Th? Thao T?c Ð?')
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_GameTheLoai] FOREIGN KEY([idLoaiGame])
REFERENCES [dbo].[TheLoaiGame] ([idLoaiGame])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_GameTheLoai]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_GameOrder] FOREIGN KEY([Game_ID])
REFERENCES [dbo].[Game] ([Game_ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_GameOrder]
GO
ALTER TABLE [dbo].[QLTaiKhoanChoThue]  WITH CHECK ADD  CONSTRAINT [FK_Game_ID] FOREIGN KEY([Game_ID])
REFERENCES [dbo].[Game] ([Game_ID])
GO
ALTER TABLE [dbo].[QLTaiKhoanChoThue] CHECK CONSTRAINT [FK_Game_ID]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_OrderPayment] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[OrderDetail] ([Order_ID])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_OrderPayment]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToanUser] FOREIGN KEY([CustID])
REFERENCES [dbo].[NguoiDung] ([CustID])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToanUser]
GO
USE [master]
GO
ALTER DATABASE [qlythueacc] SET  READ_WRITE 
GO
