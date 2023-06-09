USE [NGANHANG]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MACN] [nchar](10) NOT NULL,
	[TENCN] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SoDT] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_679CAD0860564B4AA862CBACC47B6BB9]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GD_CHUYENTIEN]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD_CHUYENTIEN](
	[MAGD] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SOTK_CHUYEN] [nchar](9) NOT NULL,
	[NGAYGD] [datetime] NOT NULL CONSTRAINT [DF_GD_CHUYENTIEN_NGAYGD]  DEFAULT (getdate()),
	[SOTIEN] [money] NOT NULL,
	[SOTK_NHAN] [nchar](9) NOT NULL,
	[MANV] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_E31E841942504E15B7457C093348EE62]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GD_CHUYENTIEN] PRIMARY KEY CLUSTERED 
(
	[MAGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GD_GOIRUT]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD_GOIRUT](
	[MAGD] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SOTK] [nchar](9) NOT NULL,
	[LOAIGD] [nchar](2) NOT NULL,
	[NGAYGD] [datetime] NOT NULL CONSTRAINT [DF_GD_GOIRUT_NGAYGD]  DEFAULT (getdate()),
	[SOTIEN] [money] NOT NULL CONSTRAINT [DF_GD_GOIRUT_SOTIEN]  DEFAULT ((100000)),
	[MANV] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_3A1767C0538F414AB9F633DFD660A83F]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GD_GOIRUT] PRIMARY KEY CLUSTERED 
(
	[MAGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[CMND] [nchar](10) NOT NULL,
	[HO] [nvarchar](50) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[PHAI] [nvarchar](3) NULL,
	[NGAYCAP] [date] NOT NULL,
	[SODT] [nvarchar](15) NOT NULL,
	[MACN] [nchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_2A65CDA4041049C7AD52D440A33DC716]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [nchar](10) NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[PHAI] [nvarchar](3) NOT NULL CONSTRAINT [DF_NhanVien_PHAI]  DEFAULT (N'Nam'),
	[SODT] [nvarchar](15) NOT NULL,
	[MACN] [nchar](10) NULL,
	[TrangThaiXoa] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_51FED69F3CCE43339992F10A869A1416]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[SOTK] [nchar](9) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[SODU] [money] NULL DEFAULT ((0)),
	[MACN] [nchar](10) NULL,
	[NGAYMOTK] [date] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_52AF0E9C41CF4B2D9F800C277A733DE3]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[SOTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_DS_PHANMANH]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DS_PHANMANH]
AS
SELECT        TOP (2) PUBS.description AS TENCN, SUBS.subscriber_server AS TENSERVER
FROM            dbo.sysmergepublications AS PUBS INNER JOIN
                         dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server
GO
INSERT [dbo].[ChiNhanh] ([MACN], [TENCN], [DIACHI], [SoDT], [rowguid]) VALUES (N'BENTHANH  ', N'Chi nhánh Bến Thành', N'211 Lê Lợi, Quận 1, TPHCM', N'..', N'ecba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[ChiNhanh] ([MACN], [TENCN], [DIACHI], [SoDT], [rowguid]) VALUES (N'TANDINH   ', N'Chi nhánh Tân Định', N'234 Hai Bà Trưng, phường Đakao, Quận 1, TPHCM', N'...', N'edba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
SET IDENTITY_INSERT [dbo].[GD_CHUYENTIEN] ON 

INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (2002, N'999999999', CAST(N'2023-04-19 12:36:49.530' AS DateTime), 100000.0000, N'555555555', N'NV01      ', N'0abb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (90004, N'111111111', CAST(N'2023-04-09 12:49:01.103' AS DateTime), 2000000.0000, N'555555555', N'NV04      ', N'0bbb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (90005, N'999999999', CAST(N'2023-04-09 12:50:02.467' AS DateTime), 4000000.0000, N'111111111', N'NV01      ', N'0cbb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (92006, N'111111111', CAST(N'2023-05-21 16:24:24.250' AS DateTime), 500000.0000, N'555555555', N'NV01      ', N'b8c9ec45-b9f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (114006, N'111111111', CAST(N'2023-05-22 15:33:44.003' AS DateTime), 500000.0000, N'625454671', N'NV04      ', N'bf27365c-7bf8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_CHUYENTIEN] ([MAGD], [SOTK_CHUYEN], [NGAYGD], [SOTIEN], [SOTK_NHAN], [MANV], [rowguid]) VALUES (114007, N'111111111', CAST(N'2023-05-22 15:34:48.793' AS DateTime), 100000.0000, N'991818824', N'NV02      ', N'7e09d482-7bf8-ed11-9f12-e8b1fcd14ebb')
SET IDENTITY_INSERT [dbo].[GD_CHUYENTIEN] OFF
SET IDENTITY_INSERT [dbo].[GD_GOIRUT] ON 

INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2002, N'123456789', N'GT', CAST(N'2023-04-19 12:37:16.407' AS DateTime), 1000000.0000, N'NV01      ', N'0dbb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2004, N'223893755', N'GT', CAST(N'2023-05-11 14:17:25.610' AS DateTime), 100000.0000, N'NV01      ', N'0ebb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2006, N'223893755', N'GT', CAST(N'2023-05-11 14:21:29.177' AS DateTime), 100000.0000, N'NV01      ', N'0fbb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2007, N'223893755', N'GT', CAST(N'2023-05-11 14:21:46.487' AS DateTime), 100000.0000, N'NV01      ', N'10bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2010, N'555555555', N'GT', CAST(N'2023-05-11 14:38:19.400' AS DateTime), 10000000.0000, N'NV01      ', N'11bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2011, N'999999999', N'RT', CAST(N'2023-05-11 14:39:02.007' AS DateTime), 900000.0000, N'NV01      ', N'12bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (2012, N'123456789', N'GT', CAST(N'2023-05-15 10:05:50.753' AS DateTime), 100000.0000, N'NV01      ', N'13bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (90004, N'987654321', N'RT', CAST(N'2023-04-09 12:42:12.623' AS DateTime), 3000000.0000, N'NV02      ', N'14bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (90005, N'999999999', N'GT', CAST(N'2022-07-21 12:42:12.623' AS DateTime), 100000.0000, N'NV04      ', N'15bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (92006, N'111111111', N'GT', CAST(N'2023-05-21 16:21:53.120' AS DateTime), 200000.0000, N'NV01      ', N'2bf9d7eb-b8f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (92007, N'111111111', N'RT', CAST(N'2023-05-21 16:22:20.750' AS DateTime), 100000.0000, N'NV01      ', N'5c8950fc-b8f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (114006, N'111111111', N'RT', CAST(N'2023-05-22 15:24:20.060' AS DateTime), 200000.0000, N'NV02      ', N'aec0120c-7af8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[GD_GOIRUT] ([MAGD], [SOTK], [LOAIGD], [NGAYGD], [SOTIEN], [MANV], [rowguid]) VALUES (114007, N'111111111', N'GT', CAST(N'2023-05-22 15:28:05.137' AS DateTime), 100000.0000, N'NV02      ', N'20083b92-7af8-ed11-9f12-e8b1fcd14ebb')
SET IDENTITY_INSERT [dbo].[GD_GOIRUT] OFF
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'011111111 ', N'Đỗ Quỳnh', N'Như', NULL, N'NỮ', CAST(N'2020-08-09' AS Date), N'0987654324', N'TANDINH   ', N'eeba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'0123456789', N'Nguyễn Quang', N'Hải', NULL, N'NAM', CAST(N'2018-05-08' AS Date), N'0987654321', N'BENTHANH  ', N'efba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'0753010143', N'Trần', N'Vy', NULL, NULL, CAST(N'2023-05-14' AS Date), N'0373162586', N'TANDINH   ', N'd0b5f002-78f8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'0999999999', N'Quế Ngọc', N'Hải', NULL, N'NAM', CAST(N'2009-05-02' AS Date), N'0987654323', N'TANDINH   ', N'f0ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'16558994  ', N'Trần Thùy ', N'Vy', N'Thủ Đức', N'NAM', CAST(N'2023-04-19' AS Date), N'036665442', N'BENTHANH  ', N'f1ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'184434252 ', N'Nguyễn Xuân ', N'Tiến', N'Quận 9', N'NAM', CAST(N'2019-09-30' AS Date), N'0385557612', N'TANDINH   ', N'f2ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[KhachHang] ([CMND], [HO], [TEN], [DIACHI], [PHAI], [NGAYCAP], [SODT], [MACN], [rowguid]) VALUES (N'9876543210', N'Lê Công', N'Vinh', N'Hà Nội', N'NAM', CAST(N'2002-10-03' AS Date), N'0987654322', N'BENTHANH  ', N'f3ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV01      ', N'Trần Minh', N'Nguyên', N'0123456789', NULL, N'Nam', N'1111111111', N'BENTHANH  ', 0, N'f4ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV02      ', N'Lê Văn', N'Anh', N'1234567890', NULL, N'Nam', N'2222222222', N'TANDINH   ', 0, N'f5ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV03      ', N'Nguyễn', N'Thanh', N'0963837291', N'Quận 9', N'NỮ', N'0845002405', N'BENTHANH  ', 0, N'f6ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV04      ', N'Trịnh Mỹ', N'Duyên', N'184434252 ', N'Quận 9', N'NỮ', N'0987654321', N'TANDINH   ', 0, N'f7ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV05      ', N'Nguyễn', N'Vy', N'1234562742', N'Quận 1', N'NỮ', N'0986475321', N'BENTHANH  ', 0, N'f8ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV06      ', N'Nguyễn', N'Duyên', N'1323342221', N'Quận 9', N'NỮ', N'038887772', N'TANDINH   ', 0, N'f9ba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV07      ', N'Trần Thùy', N'Vy', N'198896624 ', N'Tân Phú', N'NỮ', N'0366988531', N'BENTHANH  ', 0, N'faba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV08      ', N'Xuân ', N'Tiến', N'123456789 ', N'Man Thiện', N'NAM', N'0385566111', N'TANDINH   ', 0, N'fbba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV09      ', N'Huỳnh', N'Thanh', N'9876545769', N'Quận 9', N'NỮ', N'085476324', N'BENTHANH  ', 1, N'a274dff0-6af8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [CMND], [DIACHI], [PHAI], [SODT], [MACN], [TrangThaiXoa], [rowguid]) VALUES (N'NV12      ', N'Huỳnh', N'Vy', N'8726572631', N'Quận 2', N'NỮ', N'0987653422', N'TANDINH   ', 0, N'00c49147-76f8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'111111111', N'0999999999', 5900000.0000, N'TANDINH   ', CAST(N'2022-01-01' AS Date), N'fcba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'115423583', N'011111111 ', 0.0000, N'TANDINH   ', CAST(N'2023-02-02' AS Date), N'fdba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'123456789', N'9876543210', 11100000.0000, N'BENTHANH  ', CAST(N'2023-02-03' AS Date), N'feba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'223893755', N'0999999999', 300000.0000, N'BENTHANH  ', CAST(N'2023-04-02' AS Date), N'ffba4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'402005068', N'0123456789', 0.0000, N'TANDINH   ', CAST(N'2023-05-02' AS Date), N'00bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'437159004', N'0123456789', 0.0000, N'TANDINH   ', CAST(N'2023-06-02' AS Date), N'01bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'555555555', N'011111111 ', 18600000.0000, N'BENTHANH  ', CAST(N'2023-02-06' AS Date), N'02bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'555888555', N'0999999999', 0.0000, N'BENTHANH  ', CAST(N'2023-04-04' AS Date), N'03bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'555888666', N'0999999999', 0.0000, N'TANDINH   ', CAST(N'2023-05-01' AS Date), N'04bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'625454671', N'184434252 ', 500000.0000, N'BENTHANH  ', CAST(N'2023-05-15' AS Date), N'05bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'632854590', N'0123456789', 0.0000, N'BENTHANH  ', CAST(N'2023-04-15' AS Date), N'06bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'85298808 ', N'0123456789', 0.0000, N'BENTHANH  ', CAST(N'2023-05-01' AS Date), N'07bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'987654321', N'9876543210', 5000000.0000, N'TANDINH   ', CAST(N'2023-05-04' AS Date), N'08bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'991818824', N'0999999999', 100000.0000, N'TANDINH   ', NULL, N'805fa3b6-79f8-ed11-9f12-e8b1fcd14ebb')
INSERT [dbo].[TaiKhoan] ([SOTK], [CMND], [SODU], [MACN], [NGAYMOTK], [rowguid]) VALUES (N'999999999', N'0123456789', 9000000.0000, N'BENTHANH  ', CAST(N'2023-04-01' AS Date), N'09bb4bf6-92f7-ed11-9f12-e8b1fcd14ebb')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_ChiNhanh]    Script Date: 5/29/2023 3:27:01 PM ******/
ALTER TABLE [dbo].[ChiNhanh] ADD  CONSTRAINT [UK_ChiNhanh] UNIQUE NONCLUSTERED 
(
	[TENCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_NhanVien]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan] FOREIGN KEY([SOTK_CHUYEN])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan1] FOREIGN KEY([SOTK_NHAN])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan1]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [FK_GD_GOIRUT_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [FK_GD_GOIRUT_NhanVien]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [FK_GD_GOIRUT_TaiKhoan] FOREIGN KEY([SOTK])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [FK_GD_GOIRUT_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ChiNhanh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanh]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ChiNhanh]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_KhachHang] FOREIGN KEY([CMND])
REFERENCES [dbo].[KhachHang] ([CMND])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_KhachHang]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [CK_GD_CHUYENTIEN] CHECK  (([SOTIEN]>(0)))
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [CK_GD_CHUYENTIEN]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_7035A777_4374_43A7_B744_E7246032D95C] CHECK NOT FOR REPLICATION (([MAGD]>(90005) AND [MAGD]<=(91005) OR [MAGD]>(91005) AND [MAGD]<=(92005)))
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [repl_identity_range_7035A777_4374_43A7_B744_E7246032D95C]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [CK_LOAIGD] CHECK  (([LOAIGD]='RT' OR [LOAIGD]='GT'))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [CK_LOAIGD]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [CK_SOTIEN] CHECK  (([SOTIEN]>=(100000)))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [CK_SOTIEN]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_C569D3B0_108A_498D_A54A_6AA9221899DD] CHECK NOT FOR REPLICATION (([MAGD]>(90005) AND [MAGD]<=(91005) OR [MAGD]>(91005) AND [MAGD]<=(92005)))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [repl_identity_range_C569D3B0_108A_498D_A54A_6AA9221899DD]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckCMND]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CheckCMND]
	@cmnd NVARCHAR(10)
AS
BEGIN
DECLARE @check int
	IF EXISTS(SELECT * FROM dbo.KhachHang WHERE dbo.KhachHang.CMND = @cmnd)
		SET @check = 1	--Mã tồn tại ở phân mãnh hiện tại	
	ELSE IF EXISTS(SELECT * FROM LINK0.NGANHANG.dbo.KhachHang AS KH WHERE KH.CMND = @cmnd)
		SET @check = 2	--Mã tồn tại ở phân mãnh khác
	ELSE
		SET @check = 0
SELECT @check	--Không bị trùng được thêm
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckMANV]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CheckMANV]
	@maNV NCHAR(10)
AS
BEGIN
DECLARE @check int
	IF EXISTS(SELECT * FROM dbo.NhanVien WHERE dbo.NhanVien.MANV = @maNV)
		SET @check = 1	--Mã tồn tại ở phân mãnh hiện tại	
	ELSE IF EXISTS(SELECT * FROM LINK0.NGANHANG.dbo.NhanVien AS NV WHERE NV.MANV = @maNV)
		SET @check = 2	--Mã tồn tại ở phân mãnh khác
	ELSE
		SET @check = 0
SELECT @check	--Không bị trùng được thêm
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ChuyenCN]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ChuyenCN]
	@manv nvarchar(10),
	@macngo nvarchar(10)
AS
DECLARE @check int
DECLARE @manvmax nvarchar(10) = (RIGHT((SELECT TOP 1 MANV FROM LINK1.NGANHANG.DBO.NhanVien ORDER BY MANV DESC), 2))
IF (@manvmax < 10)
	SET @manvmax = CONCAT('NV', '0', @manvmax + 1)
ELSE
	SET @manvmax = CONCAT('NV', @manvmax + 1)
SET XACT_ABORT ON
BEGIN DISTRIBUTED TRANSACTION
BEGIN TRY
	IF EXISTS (SELECT * FROM LINK1.NGANHANG.DBO.NhanVien
				WHERE SODT = (SELECT SODT FROM NhanVien WHERE MANV = @manv))
	BEGIN
		UPDATE NhanVien
			SET TrangThaiXoa = 1
			WHERE MANV = @manv

		UPDATE LINK1.NGANHANG.DBO.NhanVien
			SET TrangThaiXoa = 0
			WHERE SODT = (SELECT SODT FROM NhanVien WHERE MANV = @manv)
	END
	ELSE
	BEGIN
		INSERT INTO LINK1.NGANHANG.DBO.NhanVien(MANV, HO, TEN,CMND, DIACHI, PHAI, SODT, MACN, TrangThaiXoa)
			SELECT @manvmax AS MANV, HO, TEN,CMND, DIACHI, PHAI, SODT, @macngo AS MACN, 0 FROM NhanVien WHERE MANV = @manv

		UPDATE NhanVien
			SET TrangThaiXoa = 1
			WHERE MANV = @manv
	END

	IF (@@TRANCOUNT > 0)
	BEGIN
		COMMIT TRANSACTION
		SET @check = 1
	END
END TRY
BEGIN CATCH
	IF (@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK TRANSACTION
		SET @check = 0
	END
END CATCH
SELECT @check
GO
/****** Object:  StoredProcedure [dbo].[SP_ChuyenTien]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ChuyenTien]
	@sotkchuyen nvarchar(10),
	@sotknhan nvarchar(10),
	@sotien money,
	@manv nvarchar(10)
AS
DECLARE @sodu money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotkchuyen)
DECLARE @check int = 1

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotkchuyen)
BEGIN
	SET @check = 2
	SELECT @check
	RETURN
END

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotknhan)
BEGIN
	SET @check = 3
	SELECT @check
	RETURN
END

IF (@sotien <= @sodu)
BEGIN
	SET XACT_ABORT ON /*lỗi tự động rollback */
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO GD_CHUYENTIEN(SOTK_CHUYEN, NGAYGD, SOTIEN, SOTK_NHAN, MANV)
			VALUES(@sotkchuyen, GETDATE(), @sotien, @sotknhan, @manv)
		UPDATE TaiKhoan 
			SET SODU = SODU - @sotien
			WHERE SOTK = @sotkchuyen
		UPDATE TaiKhoan 
			SET SODU = SODU + @sotien
			WHERE SOTK = @sotknhan			  
							
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SET @check = 0
	END CATCH
END
ELSE
	SET @check = 4

SELECT @check
GO
/****** Object:  StoredProcedure [dbo].[SP_DangNhap]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DangNhap]
	@tenLogin nvarchar(50)
AS
BEGIN
	DECLARE @tenUser nvarchar(50)
	SELECT @tenUser = NAME FROM sys.sysusers WHERE sid = SUSER_SID(@tenLogin)
 
	SELECT USERNAME = @tenUser,
		HOTEN = (SELECT HO + ' ' + TEN FROM NHANVIEN WHERE MANV = @tenUser),
		TENNHOM = NAME
	FROM sys.sysusers 
	WHERE UID = (SELECT GROUPUID
                 FROM SYS.SYSMEMBERS
					WHERE MEMBERUID = (SELECT UID FROM sys.sysusers
										WHERE NAME = @tenUser))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GDGoiRut]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GDGoiRut]
	@sotk nvarchar(10),
	@loaigd nvarchar(2),
	@sotien money,
	@manv nvarchar(10)
AS
DECLARE @sodu money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotk)
DECLARE @check int = 1

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotk)
BEGIN
	SET @check = -1
	SELECT @check
	RETURN
END

IF (@loaigd = 'GT')
BEGIN
	SET XACT_ABORT ON
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO GD_GOIRUT(SOTK, LOAIGD, NGAYGD, SOTIEN, MANV)
			VALUES(@sotk, @loaigd, GETDATE(), @sotien, @manv)
		UPDATE TaiKhoan
			SET SODU = SODU + @sotien
			WHERE SOTK = @sotk
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SET @check = 0
	END CATCH
END
ELSE
BEGIN
	IF (@sotien > @sodu)
		SET @check = 2
	ELSE
	BEGIN
		SET XACT_ABORT ON
		BEGIN TRANSACTION
		BEGIN TRY
			INSERT INTO GD_GOIRUT(SOTK, LOAIGD, NGAYGD, SOTIEN, MANV)
				VALUES(@sotk, @loaigd, GETDATE(), @sotien, @manv)
			UPDATE TaiKhoan
				SET SODU = SODU - @sotien
				WHERE SOTK = @sotk
			COMMIT TRAN
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			SET @check = 0
		END CATCH
	END
END
SELECT @check
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCNChuyen]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GetCNChuyen]
	@macn nvarchar(10)
AS
SELECT MACN, TENCN FROM LINK0.NGANHANG.DBO.ChiNhanh WHERE MACN <> @macn
GO
/****** Object:  StoredProcedure [dbo].[SP_LietKeKhachHang]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_LietKeKhachHang]
AS
SELECT CMND, HOTEN = HO + ' ' + TEN, DIACHI, PHAI, NGAYCAP, SODT
	FROM KhachHang
	ORDER BY TEN, HO
GO
/****** Object:  StoredProcedure [dbo].[SP_LietKeTaiKhoan]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_LietKeTaiKhoan]
	@tungay nvarchar(10),
	@denngay nvarchar(10),
	@all int
AS
SET DATEFORMAT DMY

IF (@all = 0)
SELECT SOTK, NGAYMOTK, TaiKhoan.MACN
	FROM TaiKhoan INNER JOIN ChiNhanh ON TaiKhoan.MACN = ChiNhanh.MACN
	WHERE (NGAYMOTK >= @tungay AND NGAYMOTK < @denngay)
ELSE
SELECT SOTK, NGAYMOTK, TaiKhoan.MACN
	FROM TaiKhoan
	WHERE (NGAYMOTK >= @tungay AND NGAYMOTK < @denngay)
GO
/****** Object:  StoredProcedure [dbo].[SP_MoTaiKhoan]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_MoTaiKhoan] @cmnd NVARCHAR(10),
	@macn NVARCHAR(10)
AS
BEGIN
	DECLARE @NewSoTK nchar(9) =  CAST(RAND()*1000000000 AS INT)
	WHILE (EXISTS(SELECT SOTK from [dbo].TaiKhoan WHERE [dbo].TaiKhoan.SOTK = @NewSoTK) AND EXISTS(select SOTK from LINK0.NGANHANG.dbo.TaiKhoan as NewSoTK WHERE NewSoTK.SOTK = @NewSoTK))
		BEGIN
			SET @NewSoTK =  CAST(RAND()*1000000000 AS INT)
		END
	INSERT INTO TaiKhoan(SOTK, CMND, SODU,MACN) VALUES (@NewSoTK,@cmnd, 0,@macn);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaoKeGD]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SaoKeGD]
	@tungay nvarchar(10),
	@denngay nvarchar(10),
	@sotk nvarchar(10)
AS
SET DATEFORMAT DMY

DECLARE @sodudau money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotk)
DECLARE @ngaygd datetime, @loaigd nvarchar(2), @sotien money, @macn nvarchar(10)

DECLARE cursorGD CURSOR FOR
SELECT NGAYGD, LOAIGD, SOTIEN
	FROM GD_GOIRUT INNER JOIN NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND NGAYGD >= @tungay
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN
	FROM GD_CHUYENTIEN INNER JOIN NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND NGAYGD >= @tungay
UNION ALL
SELECT NGAYGD, LOAIGD, SOTIEN
	FROM LINK0.NGANHANG.DBO.GD_GOIRUT INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND NGAYGD >= @tungay AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN
	FROM LINK0.NGANHANG.DBO.GD_CHUYENTIEN INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND NGAYGD >= @tungay AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
--ORDER BY NGAYGD DESC
OPEN cursorGD
FETCH NEXT FROM cursorGD
	INTO @ngaygd, @loaigd, @sotien
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @loaigd = 'GT'
		SET @sodudau -= @sotien
	ELSE
		SET @sodudau += @sotien

	FETCH NEXT FROM cursorGD
		INTO @ngaygd, @loaigd, @sotien
END
CLOSE cursorGD
DEALLOCATE cursorGD

CREATE TABLE #TAM (
	SODUDAU money,
	NGAYGD datetime,
	LOAIGD nvarchar(2),
	SOTIEN money,
	SODUSAU money,
	MACN nvarchar(10)
)

DECLARE cursorSaoKe CURSOR FOR
SELECT NGAYGD, LOAIGD, SOTIEN, MACN
	FROM GD_GOIRUT INNER JOIN NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN, MACN
	FROM GD_CHUYENTIEN INNER JOIN NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay)
UNION ALL
SELECT NGAYGD, LOAIGD, SOTIEN, MACN
	FROM LINK0.NGANHANG.DBO.GD_GOIRUT INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay) AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN, MACN
	FROM LINK0.NGANHANG.DBO.GD_CHUYENTIEN INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay) AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
ORDER BY NGAYGD
OPEN cursorSaoKe
FETCH NEXT FROM cursorSaoKe
	INTO @ngaygd, @loaigd, @sotien, @macn
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @loaigd = 'GT'
	BEGIN
		INSERT INTO #TAM
			SELECT @sodudau, @ngaygd, @loaigd, @sotien, @sodudau + @sotien, @macn
		SET @sodudau += @sotien
	END
	ELSE
	BEGIN
		INSERT INTO #TAM
			SELECT @sodudau, @ngaygd, @loaigd, @sotien, @sodudau - @sotien, @macn
		SET @sodudau -= @sotien
	END

	FETCH NEXT FROM cursorSaoKe
		INTO @ngaygd, @loaigd, @sotien, @macn
END
CLOSE cursorSaoKe
DEALLOCATE cursorSaoKe

SELECT * FROM #TAM
GO
/****** Object:  StoredProcedure [dbo].[SP_TaoTaiKhoan]    Script Date: 5/29/2023 3:27:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TaoTaiKhoan]
	@LGNAME nvarchar(10),
	@PASS nvarchar(20),
	@USERNAME nvarchar(10),
	@ROLE nvarchar(20)
AS
BEGIN
DECLARE @check int = 0
	DECLARE @RET INT

	EXEC @RET = SP_ADDLOGIN @LGNAME, @PASS, 'NGANHANG'                     
	IF (@RET = 1)	--	LOGIN NAME BI TRUNG
	BEGIN
		SET @check = 1
		SELECT @check
		RETURN 1
	END

	EXEC @RET = SP_GRANTDBACCESS @LGNAME, @USERNAME
	IF (@RET = 1)	--	USER NAME BI TRUNG
	BEGIN
		EXEC SP_DROPLOGIN @LGNAME
		SET @check = 2
		SELECT @check
		RETURN 2
	END

	EXEC sp_addrolemember @ROLE, @USERNAME

	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
SELECT @check
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'‘GT’ : gởi tiền vào TK , ‘RT’ : rút tiền khỏi TK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GD_GOIRUT', @level2type=N'COLUMN',@level2name=N'LOAIGD'
GO
