USE [Laptop]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[Email] [varchar](50) NULL,
	[Quyen] [int] NULL,
 CONSTRAINT [PK_AM] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDATHANG]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDATHANG](
	[MaDonHang] [int] NOT NULL,
	[MaLap] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](9, 2) NULL,
	[HinhThucThanhToan] [nchar](10) NULL,
 CONSTRAINT [PK_CTDH] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaLap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [smalldatetime] NULL,
	[NgayGiao] [smalldatetime] NULL,
	[MaKH] [int] NULL,
	[DonGia] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DDH] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](15) NULL,
	[MatKhau] [varchar](15) NOT NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [smalldatetime] NULL,
 CONSTRAINT [PK_Kh] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAP]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAP](
	[MaLap] [int] IDENTITY(1,1) NOT NULL,
	[TenLap] [nvarchar](100) NOT NULL,
	[GiaBan] [money] NULL,
	[MoTa] [ntext] NULL,
	[AnhBia] [varchar](50) NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[SoLuongBan] [int] NULL,
	[MaTH] [int] NULL,
 CONSTRAINT [PK_L] PRIMARY KEY CLUSTERED 
(
	[MaLap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUKIEN]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUKIEN](
	[MaPK] [int] IDENTITY(1,1) NOT NULL,
	[TenPK] [nvarchar](100) NOT NULL,
	[Mota] [nvarchar](150) NULL,
	[Phanloai] [nvarchar](15) NULL,
	[AnhBia] [nchar](10) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_PK] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 20/08/2021 10:42:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TH] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MaAdmin], [HoTen], [DiaChi], [DienThoai], [TenDN], [MatKhau], [NgaySinh], [Email], [Quyen]) VALUES (1, N'Vương Đức Hữu Phước', N'thuận an', N'123', N'admin', N'12345', CAST(N'2001-08-25T00:00:00' AS SmallDateTime), N'admin@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
INSERT [dbo].[CHITIETDATHANG] ([MaDonHang], [MaLap], [SoLuong], [DonGia], [HinhThucThanhToan]) VALUES (5, 13, 1, CAST(41990.00 AS Decimal(9, 2)), NULL)
INSERT [dbo].[CHITIETDATHANG] ([MaDonHang], [MaLap], [SoLuong], [DonGia], [HinhThucThanhToan]) VALUES (6, 4, 1, CAST(39990.00 AS Decimal(9, 2)), NULL)
INSERT [dbo].[CHITIETDATHANG] ([MaDonHang], [MaLap], [SoLuong], [DonGia], [HinhThucThanhToan]) VALUES (6, 27, 1, CAST(19520.00 AS Decimal(9, 2)), NULL)
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH], [DonGia]) VALUES (2, 0, 1, CAST(N'2021-07-27T00:10:00' AS SmallDateTime), CAST(N'2021-07-31T00:00:00' AS SmallDateTime), 11, CAST(10000.00 AS Decimal(9, 2)))
INSERT [dbo].[DONDATHANG] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH], [DonGia]) VALUES (3, 0, 1, CAST(N'2021-07-27T00:12:00' AS SmallDateTime), CAST(N'2021-12-12T00:00:00' AS SmallDateTime), 11, CAST(10000.00 AS Decimal(9, 2)))
INSERT [dbo].[DONDATHANG] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH], [DonGia]) VALUES (4, 0, 1, CAST(N'2021-07-27T00:16:00' AS SmallDateTime), CAST(N'2021-07-28T00:00:00' AS SmallDateTime), 11, CAST(39990.00 AS Decimal(9, 2)))
INSERT [dbo].[DONDATHANG] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH], [DonGia]) VALUES (5, 0, 1, CAST(N'2021-07-27T00:25:00' AS SmallDateTime), CAST(N'2021-07-28T00:00:00' AS SmallDateTime), 11, CAST(41990.00 AS Decimal(9, 2)))
INSERT [dbo].[DONDATHANG] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH], [DonGia]) VALUES (6, 0, 1, CAST(N'2021-08-20T13:38:00' AS SmallDateTime), CAST(N'2021-08-21T00:00:00' AS SmallDateTime), 12, CAST(12000.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (3, N'Vương Đức Hữu Phước', N'huuphuoc', N'12345', N'phuoc@gmail.com', N'thuận an', N'1234', CAST(N'2001-08-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (4, N'test', N'test', N'12345', N'huuphuoc', N'124ffw', N'12345', CAST(N'2021-07-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (11, N'huu phuoc', N'phuoc', N'123456', N'svjhbh@gmail.com', N'23254tfdvcfb', N'1234567', CAST(N'2021-07-08T00:00:00' AS SmallDateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (12, N'test', N'test1', N'123456', N'abc@gmail.com', N'abc 1 2 3', N'123456', CAST(N'2021-08-20T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LAP] ON 

INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (1, N'Laptop Acer Nitro 5', 22310.0000, N'Laptop Acer Nitro 5 AN515 45 R3SM R5 (NH.QBMSV.005) có vẻ ngoài hình hầm hố đặc trưng của dòng laptop gaming, cấu hình mạnh mẽ chạy mượt các tựa game được các game thủ ưa thích với con chip AMD Ryzen 5 và card đồ họa NVIDIA GeForce GTX 1650 4GB.', N'acer-nitro-5.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 1000, 1)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (2, N'Laptop Acer Aspire A315', 11990.0000, N'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) là mẫu laptop học tập văn phòng thuộc phân khúc giá thấp. Máy trang bị vi xử lí thế hệ mới của Intel, cho hiệu năng đủ dùng đối với các nhu cầu cơ bản, phù hợp với học sinh và sinh viên.', N'acer-aspire-a315.jpg', CAST(N'2020-04-12T00:00:00' AS SmallDateTime), 1100, 1)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (3, N'Laptop Acer Swift 5', 23990.0000, N'Acer Swift Air Edition i5 được mệnh danh là chiếc laptop 14 inch nhẹ nhất tại thời điểm hiện tại với cấu hình và thiết kế phù hợp với nhân viên văn phòng và doanh nhân.', N'acer-swift-sf5.jpg', CAST(N'2021-04-20T00:00:00' AS SmallDateTime), 1000, 1)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (4, N'Laptop Apple MacBook Air M1 2020', 39990.0000, N'Laptop Apple MacBook Air M1 2020 (Z12A00050) mang nét thanh lịch sang trọng với thiết kế kim loại nguyên khối cùng hiệu năng vượt trội nhờ chip M1 độc quyền của “nhà Táo” sẽ mang đến cho bạn những trải nghiệm riêng biệt mà chỉ dòng máy MacBook mới có được.', N'apple-macbook-air-m1-2020.jpg', CAST(N'2021-05-03T00:00:00' AS SmallDateTime), 900, 2)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (5, N'Laptop Apple MacBook Pro M1 2020 Space Grey', 31490.0000, N'Apple Macbook Pro M1 2020 (MYD82SA/A) sở hữu thiết kế sang trọng từ kim loại nguyên khối được kế thừa từ các thế hệ trước nhưng bên trong là một cấu hình cực kỳ đáng gờm. Với chip M1 lần đầu tiên xuất hiện trên MacBook Pro, hiệu năng CPU của máy tăng đến 2.8 lần, hiệu năng GPU tăng 5 lần.', N'apple-macbook-pro-2020-m1.jpg', CAST(N'2021-04-03T00:00:00' AS SmallDateTime), 900, 2)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (6, N'Laptop Apple MacBook Air M1 2020 Silver', 27990.0000, N'Laptop Apple MacBook Air M1 2020 (MGN93SA/A) có thiết kế nhỏ gọn thuận tiện mang theo bên mình, chip M1 cho cấu hình mạnh mẽ tốc độ xử lý nhanh sẽ là trợ thủ đắc lực cho bạn trong công việc.', N'apple-macbook-air-2020-SLIVER.jpg', CAST(N'2021-03-02T00:00:00' AS SmallDateTime), 900, 2)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (7, N'Laptop Asus ZenBook Duo', 34990.0000, N'Laptop Asus ZenBook Duo UX482EG i5 (KA166T) mang đến thiết kế đột phá với màn hình đôi độc đáo cùng cấu hình mạnh mẽ, hiệu suất đồ họa cao cực phù hợp với giới doanh nhân và người làm công việc sáng tạo.', N'asus-zenbook.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 1000, 3)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (8, N'Laptop Asus VivoBook X515MA', 9990.0000, N'Laptop Asus VivoBook X515MA (EJ120T) có cấu hình ổn định, thực hiện tốt những nhu cầu lướt web, xem phim,... cơ bản hằng ngày thích hợp với những sinh viên hay dân văn phòng cần một chiếc máy có giá phải chăng để học online hay làm việc với Word, Excel.', N'asus-vivobook-x515ma.jpg', CAST(N'2021-01-10T00:00:00' AS SmallDateTime), 1000, 3)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (9, N'Laptop Asus TUF Gaming FX506LH', 19990.0000, N'Laptop Asus TUF Gaming FX506LH i5 (BQ046T) sở hữu vẻ ngoài hầm hố, đậm chất gaming với cấu hình của chip Intel thế hệ 10 và card đồ họa rời NVIDIA GeForce GTX 1650 4 GB mang lại hiệu năng mạnh mẽ, biến các tựa game yêu thích của bạn nằm trong tầm tay.', N'asus-tuf-gaming.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 1000, 3)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (10, N'Laptop AVITA LIBER U14', 18690.0000, N'Dù mới được ra mắt cuối năm 2018, ngay lập tức, dòng máy Liber từ nhà sản xuất mới nổi Avita đã thu hút sự chú ý từ cộng đồng công nghệ toàn cầu, với đại diện tiêu biểu là chiếc laptop Avita Liber U14-70181503 (NS14A2VN067P).', N'avita1.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 100, 4)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (11, N'Laptop AVITA LIBER U13', 18290.0000, N'Dù mới được ra mắt cuối năm 2018, ngay lập tức, dòng máy Liber từ nhà sản xuất mới nổi Avita đã thu hút sự chú ý từ cộng đồng công nghệ toàn cầu, với đại diện tiêu biểu là chiếc laptop Avita Liber U13-70181499 (NS13A2VN027P).', N'avita1.jpg', CAST(N'2020-04-02T00:00:00' AS SmallDateTime), 100, 4)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (12, N'Laptop Dell Inspiron 3501', 17290.0000, N'Được trang bị chip Intel Core i5 thế hệ 11 tiên tiến, Dell Inspiron 3501 i5 (P90F005N3501B) là mẫu laptop có cấu hình ổn định, mạnh mẽ cùng với thiết kế đặc trưng, đẹp mắt, hướng đến đối tượng là dân văn phòng, các bạn học sinh, sinh viên.', N'dell1.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 1000, 5)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (13, N'Laptop Dell XPS 13 9310', 41990.0000, N'Laptop Dell XPS 13 9310 i5 (70231343) sở hữu một cấu hình mạnh mẽ đáng gờm trong thân máy siêu mỏng nhẹ, màn hình tràn viền cùng với độ sáng 500 nits rực rỡ đáp ứng trọn vẹn mọi nhu cầu của dân văn phòng.', N'dell-xps-13-9310.jpg', CAST(N'2021-07-15T00:00:00' AS SmallDateTime), 100, 5)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (15, N'Laptop Dell Gaming G5 15 5500', 28490.0000, N'Dell Gaming G5 15 5500 i7 (70252797) khơi nguồn cảm hứng cho game thủ với vẻ ngoài tối giản nhưng không kém phần mạnh mẽ, bắt mắt kết hợp với chip Intel Core i7 thế hệ 10 vượt trội, mang đến những trải nghiệm khó quên.', N'dell-gaming-g5-15-5500.jpg', CAST(N'2021-02-02T00:00:00' AS SmallDateTime), 100, 5)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (16, N'Laptop HP Pavilion Gaming 15 dk1159TX', 26960.0000, N'HP Pavilion Gaming 15 dk1159TX i7 (31J36PA) có hiệu năng đa nhiệm mạnh mẽ với chip Intel Core i7 Gen 10 và card GTX 1650Ti 4GB mang đến trải nghiệm chơi game giải trí, làm việc hoàn hảo.', N'hp-pavilion-gaming-15-dk1159tx.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 100, 6)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (17, N'Laptop HP Omen 15 ek0078TX', 53460.0000, N'HP Omen 15 ek0078TX i7 (26Y68PA) là chiếc laptop gaming mang trong mình sức mạnh siêu phàm nhờ sở hữu cấu hình gồm con chip Intel Core i7 mạnh mẽ và vi xử lý đồ họa cực mượt mà nhưng vẫn giữ ngoại hình tương đối mỏng nhẹ, đây chính là công cụ đắc lực, đồng hành cùng bạn trong mọi cuộc chiến.', N'hp-omen-15-ek0078tx.jpg', CAST(N'2012-02-02T00:00:00' AS SmallDateTime), 5, 6)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (18, N'Laptop HP 240 G8', 12590.0000, N'HP 240 G8 i3 (342G5PA) mang phong cách tối giản, gọn nhẹ nhưng chắc chắn ở mức giá trung bình với cấu hình chạy ổn định các thao tác nghiệp vụ cơ bản, phục vụ tốt cho mục đích học tập và làm việc văn phòng. ', N'hp-240-g8.jpg', CAST(N'2021-04-13T00:00:00' AS SmallDateTime), 1000, 6)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (21, N'Laptop Lenovo Ideapad Gaming 3 15IMH05', 25100.0000, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7 (81Y4013UVN) là dòng laptop gaming tầm trung với thiết kế tối giản, vẻ ngoài không quá hầm hố nhưng vẫn sở hữu hiệu năng cao đáp ứng tốt từ nhu cầu làm việc đến giải trí.', N'lenovo-ideapad-gaming-3-15imh05.jpg', CAST(N'2021-04-13T00:00:00' AS SmallDateTime), 900, 8)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (22, N'Laptop Lenovo Yoga 7 14ITL5', 26960.0000, N'Laptop Lenovo Yoga 7 14ITL5 i7 (82BH00CKVN) xứng đáng trở thành một trong những sự lựa chọn hàng đầu trong phân khúc laptop học tập - văn phòng bởi ngoại hình hiện đại, sang trọng cùng con chip Intel Core i7 mạnh mẽ vượt bật.', N'lenovo-yoga-7-14itl5.jpg', CAST(N'2021-04-12T00:00:00' AS SmallDateTime), 800, 8)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (24, N'Laptop Lenovo YOGA Slim 7 Carbon 13ITL5', 30680.0000, N'Siêu phẩm laptop Lenovo YOGA Slim 7 Carbon 13ITL5 i7 (82EV0017VN) cực mỏng nhẹ và bền bỉ với trọng lượng chưa đến 1 kg. Hiệu năng mạnh mẽ cùng màn hình QHD siêu nét và hệ thống bảo mật tân tiến là những ưu điểm khiến chiếc laptop này trở nên thu hút không thể bỏ qua.', N'lenovo-yoga-slim-7-carbon-13itl5.jpg', CAST(N'2021-02-02T00:00:00' AS SmallDateTime), 100, 8)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (25, N'Laptop LG Gram 2021 17Z90P G.AH76A5', 52900.0000, N'Máy tính xách tay LG Gram 2021 17Z90P-G.AH76A5 có được vẻ ngoài vô cùng sang trọng, kết hợp được màn hình có độ phân giải chất lượng cao. Đồng thời, máy tính còn sở hữu được chế độ bảo mật vân tay vô cùng tiện ích. Đây chính là sản phẩm thích hợp cho nhân viên văn phòng cường độ cao.', N'lg1.jpg', CAST(N'2021-04-10T00:00:00' AS SmallDateTime), 10, 9)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (26, N'Surface Pro 7 Core i5', 19890.0000, N'Tiếp nối thành công của dòng Surface Pro, Microsoft tiếp tục giành vị thế của mình bằng cách cho ra đời tiếp theo sản phẩm Surface Pro 7 và được nhiều người đánh giá rất tích cực.

Trọng lượng chỉ 776g, hoàn thiện từ vỏ nhôm cao cấp
Ngoài việc được trang bị thêm một cổng USB-C mới, có vẻ như hoàn toàn không có gì thay đổi về thiết kế Surface Pro 6. Chiếc Surface Pro 7 vẫn có kích thước 11,5 x 7,9 x 0,33 inch (292 x 201 x 8,5mm) và nặng 1,7 pounds (776g). Có thể thấy nó có trọng lượng rất nhẹ hoàn toàn dễ dàng để mang theo và di chuyển dễ dàng.', N'surface-pro-7-1.jpg', CAST(N'2021-04-20T00:00:00' AS SmallDateTime), 100, 10)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (27, N'Laptop MSI Gaming GF63 10SC', 19520.0000, N'MSI GF63 10SC i5 (255VN) mang vẻ ngoài mạnh mẽ, đậm chất gaming sở hữu chip i5 thế hệ 10 cùng card đồ họa NVIDIA GeForce GTX 1650 mang lại hiệu năng vượt trội, thoải mái chiến các tựa game yêu thích.', N'msi-gf63-10sc.jpg', CAST(N'2021-04-21T00:00:00' AS SmallDateTime), 1000, 11)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (28, N'Laptop MSI Gaming GL65 Leopard 10SCXK', 23240.0000, N'MSI GL65 Leopard 10SCXK i7 (217VN) sở hữu thiết kế gaming hiện đại và sức mạnh vượt trội của bộ vi xử lý Intel Core i7 dòng H sẵn sàng đồng hành cùng bạn trong mọi cuộc chiến. ', N'msi-gl65-leopard-10scxk.jpg', CAST(N'2021-04-02T00:00:00' AS SmallDateTime), 100, 11)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (29, N'Laptop MSI Katana Gaming GF66 11UC', 29990.0000, N'Laptop MSI Katana GF66 11UC i7 (224VN) mang vẻ ngoài cơ động cùng cấu hình mạnh mẽ, đẩy nhanh quá trình xử lý mọi tác vụ hay sẵn sàng đồng hành cùng bạn chiến mọi thể loại game đầy kịch tính. 
', N'msi-gf66-11uc.jpg', CAST(N'2021-02-02T00:00:00' AS SmallDateTime), 100, 11)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (30, N'Surface Laptop 4 Ryzen 5', 26980.0000, N'Surface laptop 4 Ryzen 5 mạnh mẽ hơn, dung lượng pin ấn tượng hơn
Sau Microsoft Surface Laptop 3 thì Surface laptop 4 cũng đã chính thức được ra mắt. Tuy thiết kế không có nhiều thay đổi nhưng người dùng sẽ cảm nhận được sự mạnh mẽ trong cấu hình cũng như dung lượng pin vô cùng ấn tượng. Chắc chắn, bạn sẽ thấy được nhiều sự bất ngờ trên phiên bản mới nhà Microsoft này.', N'laptop-surface-4-01.jpg', CAST(N'2021-04-21T00:00:00' AS SmallDateTime), 1000, 10)
INSERT [dbo].[LAP] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongBan], [MaTH]) VALUES (33, N'Surface Pro 7 Core i3', 15990.0000, N'Surface Pro 7 Core i3 128GB chính hãng – Thiết kế bền bỉ tiện lợi, cấu hình mạnh mẽ
Hàng nhập khẩu chính hãng bởi nhà phân phối, đầy đủ chứng từ nguồn gốc xuất xứ, giá đã bao gồm thuế VAT. Bảo hành đổi mới 30 ngày tại CellphoneS và 12 tháng bởi nhà phân phối.

Nếu là một người đam mê công nghệ thì chắc chắn rằng không ai không biết tới chiếc laptop Surface Pro 7 đến từ thương hiệu hết sức quen thuộc và nổi tiếng về công nghệ Microsoft. Sở hữu thiết kế nhỏ gọn và cấu hình mạnh mẽ đây là chiếc laptop đang làm mưa làm gió trên thị trường và chiếm trọn được tình cảm của nhiều người sử dụng.', N'surface-pro-7-2_2.jpg', CAST(N'2021-04-04T00:00:00' AS SmallDateTime), 10, 10)
SET IDENTITY_INSERT [dbo].[LAP] OFF
GO
SET IDENTITY_INSERT [dbo].[PHUKIEN] ON 

INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (1, N'Chuột máy tính', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (2, N'Bàn phím rời', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (3, N'Loa', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (4, N'Quạt tản nhiệt', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (5, N'Miếng lót chuột', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (6, N'Webcam', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (7, N'Balo, túi chống sốc', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Mota], [Phanloai], [AnhBia], [GiaBan]) VALUES (8, N'Phần mềm', N'Bán lẻ', N'Phụ kiện', NULL, NULL)
SET IDENTITY_INSERT [dbo].[PHUKIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (1, N'ACER')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (2, N'APPLE')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (3, N'ASUS')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (4, N'Avita')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (5, N'Dell')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (6, N'HP')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (7, N'Huawei')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (8, N'Lenovo')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (9, N'LG')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (10, N'Microsoft')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenThuongHieu]) VALUES (11, N'MSI')
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D10534D7C5F6B4]    Script Date: 20/08/2021 10:42:28 CH ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__D5B8C7F080A6D953]    Script Date: 20/08/2021 10:42:28 CH ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMIN] ADD  DEFAULT ((1)) FOR [Quyen]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((1)) FOR [TinhTrangGiaoHang]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DDH] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CTDH_DDH]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_L] FOREIGN KEY([MaLap])
REFERENCES [dbo].[LAP] ([MaLap])
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CTDH_L]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DDH_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DDH_KH]
GO
ALTER TABLE [dbo].[LAP]  WITH CHECK ADD  CONSTRAINT [FK_L_TH] FOREIGN KEY([MaTH])
REFERENCES [dbo].[THUONGHIEU] ([MaTH])
GO
ALTER TABLE [dbo].[LAP] CHECK CONSTRAINT [FK_L_TH]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[LAP]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
ALTER TABLE [dbo].[LAP]  WITH CHECK ADD CHECK  (([SoLuongBan]>(0)))
GO
