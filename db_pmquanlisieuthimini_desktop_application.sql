USE [QuanLiSieuThiMini]
GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGia](
	[IDBangGia] [varchar](10) NOT NULL,
	[DonGia] [float] NULL,
	[Giam] [float] NULL,
	[GiaVonSP] [float] NULL,
 CONSTRAINT [PK_BangGia] PRIMARY KEY CLUSTERED 
(
	[IDBangGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[IDBoPhan] [varchar](10) NOT NULL,
	[TenBoPhan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBoPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaLam]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLam](
	[IDCaLam] [varchar](10) NOT NULL,
	[BatDauTu] [time](7) NULL,
	[KetThucLuc] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCaLam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenTinh] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongHoaDon]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongHoaDon](
	[IDDongHoaDon] [varchar](10) NOT NULL,
	[IDHoaDon] [varchar](10) NULL,
	[IDSanPham] [varchar](10) NULL,
	[IDDonViTinh] [nvarchar](20) NULL,
	[SoLuong] [int] NULL,
	[Giam] [float] NULL,
	[TraLai] [float] NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDongHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[IDDonViTinh] [nvarchar](20) NOT NULL,
	[MacDinh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [varchar](10) NOT NULL,
	[NgayTao] [datetime] NULL,
	[IDKhachHang] [varchar](10) NULL,
	[IDNhanVien] [varchar](10) NULL,
	[TongTien] [float] NULL,
	[TrangThai] [int] NULL,
	[IDThongTin] [varchar](10) NULL,
	[LoaiHoaDon] [int] NULL,
	[ThueVAT] [float] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[IDPhieu] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [varchar](10) NOT NULL,
	[IDNhomKH] [varchar](10) NULL,
	[HoTen] [nvarchar](150) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[SoDienThoai] [char](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaSoThue] [varchar](10) NULL,
	[TraDK] [float] NULL,
	[ThuDK] [float] NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[SKU] [varchar](25) NOT NULL,
	[IDSanPham] [varchar](10) NULL,
	[NgayNhap] [datetime] NULL,
	[NgayXuat] [datetime] NULL,
	[SoLuongNhap] [int] NULL,
	[SoLuongXuat] [int] NULL,
	[TinhTrang] [int] NULL,
	[IDKVKho] [varchar](10) NULL,
	[SoLuongTonKho] [int] NULL,
	[SoLuongHienTai] [int] NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[IDKhuVuc] [varchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVucKho]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVucKho](
	[IDKVKho] [varchar](10) NOT NULL,
	[TenKho] [nvarchar](130) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKVKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [varchar](10) NOT NULL,
	[IDBoPhan] [varchar](10) NULL,
	[HoTen] [nvarchar](150) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[SoDienThoai] [char](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TinhTrang] [int] NULL,
	[IDCaLam] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomKhachHang]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomKhachHang](
	[IDNhomKH] [varchar](10) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[LoaiNhom] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhomKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[IDNhomSanPham] [varchar](10) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[LoaiNhom] [int] NULL,
	[IDKhuVuc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhomSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuKho]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKho](
	[IDPhieu] [varchar](10) NOT NULL,
	[IDHoaDon] [varchar](10) NULL,
	[NgayNhap] [datetime] NULL,
	[NgayXuat] [datetime] NULL,
	[IDKVKho] [varchar](10) NULL,
 CONSTRAINT [PK_PhieuKho] PRIMARY KEY CLUSTERED 
(
	[IDPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[IDPTThanhToan] [varchar](10) NOT NULL,
	[TenPTThanhToan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPTThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [varchar](10) NOT NULL,
	[IDNhomSanPham] [varchar](10) NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[IDDonViTinh] [nvarchar](20) NULL,
	[NgaySanXuat] [date] NULL,
	[HanSuDung] [date] NULL,
	[UrlImage] [varchar](20) NULL,
	[IDBangGia] [varchar](10) NULL,
	[IDKhachHang] [varchar](10) NULL,
	[TinhTrang] [int] NULL,
	[SKU] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[IDBoPhan] [varchar](10) NULL,
	[IDNhanVien] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinThanhToan]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinThanhToan](
	[IDThongTin] [varchar](10) NOT NULL,
	[IDPTThanhToan] [varchar](10) NULL,
	[LoaiThe] [varchar](40) NULL,
	[SoTaiKhoan] [varchar](20) NULL,
	[TenTaiKhoan] [varchar](100) NULL,
	[ChiNhanh] [nvarchar](100) NULL,
	[TenNganHang] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDThongTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TichDiem]    Script Date: 31/01/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TichDiem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhachHang] [varchar](10) NULL,
	[SoDiem] [int] NULL,
	[IsVip] [int] NULL,
	[QuyDoiDiem] [int] NULL,
	[TienQuyDoi] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000000', 1, 1, 1)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000001', 63000, 0, 57400)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000002', 102000, 0, 91200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000003', 65000, 0, 58800)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000004', 13000, 0, 9700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000005', 20000, 0, 14400)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000006', 28900, 0, 21000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000007', 45900, 0, 39900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000008', 35000, 0, 27700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000009', 6500, 0, 4300)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000010', 193700, 0, 176000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000011', 41600, 0, 36700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000012', 21000, 0, 18000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000013', 14500, 0, 10000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000014', 103600, 0, 95000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000015', 29900, 0, 23300)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000016', 14000, 0, 9300)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000017', 59000, 0, 50000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000018', 30100, 0, 26500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000019', 26600, 0, 18100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000020', 47900, 0, 40100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000021', 41000, 0, 37000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000022', 12000, 0, 8000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000023', 19900, 0, 15500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000024', 157000, 0, 143000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000025', 120000, 0, 110000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000026', 205000, 0, 192000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000027', 249000, 0, 249000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000028', 38000, 0, 34500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000029', 210000, 0, 199900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000030', 99000, 0, 92000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000031', 301000, 0, 275600)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000032', 87000, 0, 81000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000033', 56000, 0, 51000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000034', 128100, 0, 120100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000035', 64000, 0, 58000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000036', 23700, 0, 19000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000037', 35000, 0, 30000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000038', 43000, 0, 39000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000039', 54000, 0, 47800)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000040', 98000, 0, 90000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000041', 76000, 0, 72100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000042', 37000, 0, 32000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000043', 210000, 0, 197000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000044', 18000, 0, 16000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000045', 9800, 0, 8000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000046', 76200, 0, 70000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000047', 99000, 0, 90000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000048', 32100, 0, 27800)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000049', 27000, 0, 24000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000050', 20000, 0, 15900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000051', 29900, 0, 26700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000052', 15000, 0, 12000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000053', 17000, 0, 13900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000054', 31000, 0, 28000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000055', 299000, 0, 25000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000056', 34500, 0, 29500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000057', 16500, 0, 11100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000058', 15000, 0, 10000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000059', 12000, 0, 9100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000060', 7500, 0, 4600)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000061', 8000, 0, 5600)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000062', 8000, 0, 5600)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000063', 10000, 0, 7500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000064', 9000, 0, 7200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000065', 9000, 0, 7200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000066', 11000, 0, 8000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000067', 17500, 0, 12500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000068', 9500, 0, 7200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000069', 28700, 0, 23700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000070', 24000, 0, 21000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000071', 57500, 0, 55700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000072', 41000, 0, 38900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000073', 6700, 0, 5000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000074', 31900, 0, 28900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000075', 27600, 0, 24600)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000076', 26000, 0, 20000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000077', 24300, 0, 21000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000078', 17500, 0, 15100)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000079', 15000, 0, 12000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000080', 101000, 0, 90000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000081', 19000, 0, 16700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000082', 98000, 0, 95000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000083', 20100, 0, 17200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000084', 18700, 0, 15200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000085', 210500, 0, 195000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000086', 108000, 0, 100000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000087', 58900, 0, 53800)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000088', 49500, 0, 45000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000089', 158000, 0, 150000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000090', 66500, 0, 60000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000091', 21500, 0, 17500)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000092', 30000, 0, 25000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000093', 82300, 0, 76000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000094', 22000, 0, 20000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000095', 22000, 0, 20000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000096', 31000, 0, 27000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000097', 120000, 0, 110000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000098', 34500, 0, 28700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000099', 17600, 0, 14500)
GO
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000100', 16700, 0, 13900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000101', 16700, 0, 13900)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000102', 230000, 0, 214000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000103', 4500, 0, 3000)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000104', 5000, 0, 3400)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000105', 6000, 0, 4200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000106', 2500, 0, 1700)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000107', 5500, 0, 4200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000108', 3800, 0, 2200)
INSERT [dbo].[BangGia] ([IDBangGia], [DonGia], [Giam], [GiaVonSP]) VALUES (N'BG10000109', 8700, 0, 5000)
GO
INSERT [dbo].[BoPhan] ([IDBoPhan], [TenBoPhan]) VALUES (N'BP100001', N'Quản Lí')
INSERT [dbo].[BoPhan] ([IDBoPhan], [TenBoPhan]) VALUES (N'BP100002', N'Thủ Kho')
INSERT [dbo].[BoPhan] ([IDBoPhan], [TenBoPhan]) VALUES (N'BP100003', N'Nhân Viên Bán Hàng')
GO
INSERT [dbo].[CaLam] ([IDCaLam], [BatDauTu], [KetThucLuc]) VALUES (N'CALAM1', CAST(N'06:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[CaLam] ([IDCaLam], [BatDauTu], [KetThucLuc]) VALUES (N'CALAM2', CAST(N'11:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[CaLam] ([IDCaLam], [BatDauTu], [KetThucLuc]) VALUES (N'CALAM3', CAST(N'17:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[DiaChi] ON 

INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (1, N'An Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (2, N'Bà Rịa-Vũng Tàu')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (3, N'Bạc Liêu')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (5, N'Bắc Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (7, N'Bến Tre')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (8, N'Bình Dương')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (9, N'Bình Định')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (10, N'Bình Phước')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (12, N'Cà Mau')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (14, N'Cần Thơ')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (15, N'Đà Nẵng')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (16, N'Đắk Lắk')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (17, N'Đắk Nông')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (18, N'Điện Biên')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (19, N'Đồng Nai')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (20, N'Đồng Tháp')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (21, N'Gia Lai')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (22, N'Hà Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (23, N'Hà Nam')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (24, N'Hà Nội (TP)')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (25, N'Hà Tây')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (26, N'Hà Tĩnh')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (27, N'Hải Dương')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (28, N'Hải Phòng (TP)')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (29, N'Hòa Bình')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (30, N'Hồ Chí Minh (TP)')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (31, N'Hậu Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (32, N'Hưng Yên')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (33, N'Khánh Hòa')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (34, N'Kiên Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (35, N'Kon Tum')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (36, N'Lai Châu')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (37, N'Lào Cai')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (38, N'Lạng Sơn')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (39, N'Lâm Đồng')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (40, N'Long An')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (41, N'Nam Định')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (42, N'Nghệ An')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (43, N'Ninh Bình')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (44, N'Ninh Thuận')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (45, N'Phú Thọ')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (46, N'Phú Yên')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (47, N'Quảng Bình')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (48, N'Quảng Nam')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (49, N'Quảng Ngãi')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (50, N'Quảng Ninh')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (51, N'Quảng Trị')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (52, N'Sóc Trăng')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (53, N'Sơn La')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (54, N'Tây Ninh')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (55, N'Thái Bình')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (56, N'Thái Nguyên')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (57, N'Thanh Hóa')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (58, N'Thừa Thiên – Huế')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (59, N'Tiền Giang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (60, N'Trà Vinh')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (61, N'Tuyên Quang')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (62, N'Vĩnh Long')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (63, N'Vĩnh Phúc')
INSERT [dbo].[DiaChi] ([STT], [TenTinh]) VALUES (64, N'Yên Bái')
SET IDENTITY_INSERT [dbo].[DiaChi] OFF
GO
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000002', N'HD10000002', N'SP10000001', N'Hộp', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000003', N'HD10000002', N'SP10000002', N'Chai', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000004', N'HD10000002', N'SP10000003', N'Gói', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000005', N'HD10000002', N'SP10000004', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000006', N'HD10000002', N'SP10000005', N'Bịch', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000007', N'HD10000002', N'SP10000006', N'Hủ', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000008', N'HD10000002', N'SP10000007', N'Hộp', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000009', N'HD10000002', N'SP10000008', N'Gói', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000010', N'HD10000002', N'SP10000009', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000011', N'HD10000002', N'SP10000010', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000012', N'HD10000002', N'SP10000011', N'Bịch', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000013', N'HD10000002', N'SP10000012', N'Gói', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000014', N'HD10000002', N'SP10000013', N'Hộp', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000015', N'HD10000002', N'SP10000014', N'Hộp', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000016', N'HD10000002', N'SP10000015', N'Hủ', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000017', N'HD10000002', N'SP10000016', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000018', N'HD10000002', N'SP10000017', N'Hộp', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000019', N'HD10000002', N'SP10000018', N'Hủ', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000020', N'HD10000002', N'SP10000019', N'Túi', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000021', N'HD10000003', N'SP10000020', N'Hộp', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000022', N'HD10000003', N'SP10000021', N'Hộp', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000023', N'HD10000003', N'SP10000022', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000024', N'HD10000003', N'SP10000023', N'Bịch', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000025', N'HD10000003', N'SP10000024', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000026', N'HD10000003', N'SP10000025', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000027', N'HD10000003', N'SP10000026', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000028', N'HD10000003', N'SP10000027', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000029', N'HD10000003', N'SP10000028', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000030', N'HD10000003', N'SP10000029', N'Chai', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000031', N'HD10000003', N'SP10000030', N'Chai', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000032', N'HD10000003', N'SP10000031', N'Hộp', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000033', N'HD10000003', N'SP10000032', N'Chai', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000034', N'HD10000003', N'SP10000033', N'Chai', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000035', N'HD10000003', N'SP10000034', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000036', N'HD10000003', N'SP10000035', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000037', N'HD10000004', N'SP10000036', N'Chai', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000038', N'HD10000004', N'SP10000037', N'Bịch', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000039', N'HD10000004', N'SP10000038', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000040', N'HD10000004', N'SP10000039', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000041', N'HD10000004', N'SP10000040', N'Hộp', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000042', N'HD10000004', N'SP10000041', N'Hộp', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000043', N'HD10000004', N'SP10000042', N'Bịch', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000044', N'HD10000004', N'SP10000043', N'Hộp', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000045', N'HD10000004', N'SP10000044', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000046', N'HD10000004', N'SP10000045', N'Bịch', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000047', N'HD10000004', N'SP10000046', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000048', N'HD10000004', N'SP10000047', N'Bịch', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000049', N'HD10000004', N'SP10000048', N'Bịch', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000050', N'HD10000004', N'SP10000049', N'Bịch', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000051', N'HD10000004', N'SP10000050', N'Hộp', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000052', N'HD10000004', N'SP10000051', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000053', N'HD10000005', N'SP10000052', N'Lon', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000054', N'HD10000005', N'SP10000053', N'Lon', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000055', N'HD10000005', N'SP10000054', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000056', N'HD10000005', N'SP10000055', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000057', N'HD10000005', N'SP10000056', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000058', N'HD10000005', N'SP10000057', N'Chai', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000059', N'HD10000005', N'SP10000058', N'Chai', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000060', N'HD10000005', N'SP10000059', N'Chai', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000061', N'HD10000005', N'SP10000060', N'Chai', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000062', N'HD10000005', N'SP10000061', N'Chai', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000063', N'HD10000005', N'SP10000062', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000064', N'HD10000005', N'SP10000063', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000065', N'HD10000005', N'SP10000064', N'Chai', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000066', N'HD10000005', N'SP10000065', N'Chai', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000067', N'HD10000005', N'SP10000066', N'Lon', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000068', N'HD10000005', N'SP10000067', N'Chai', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000069', N'HD10000005', N'SP10000068', N'Lon', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000070', N'HD10000005', N'SP10000069', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000071', N'HD10000006', N'SP10000070', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000072', N'HD10000006', N'SP10000071', N'Bịch', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000073', N'HD10000006', N'SP10000072', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000074', N'HD10000006', N'SP10000073', N'Gói', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000075', N'HD10000006', N'SP10000074', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000076', N'HD10000006', N'SP10000075', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000077', N'HD10000006', N'SP10000076', N'Hộp', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000078', N'HD10000006', N'SP10000077', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000079', N'HD10000006', N'SP10000078', N'Hộp', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000080', N'HD10000006', N'SP10000079', N'Lon', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000081', N'HD10000006', N'SP10000080', N'Bịch', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000082', N'HD10000006', N'SP10000081', N'Lon', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000083', N'HD10000006', N'SP10000082', N'Hộp', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000084', N'HD10000006', N'SP10000083', N'Lon', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000085', N'HD10000006', N'SP10000084', N'Lon', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000086', N'HD10000006', N'SP10000085', N'Bịch', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000087', N'HD10000007', N'SP10000086', N'Hộp', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000088', N'HD10000007', N'SP10000087', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000089', N'HD10000007', N'SP10000088', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000090', N'HD10000007', N'SP10000089', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000091', N'HD10000007', N'SP10000090', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000092', N'HD10000007', N'SP10000091', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000093', N'HD10000007', N'SP10000092', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000094', N'HD10000007', N'SP10000093', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000095', N'HD10000008', N'SP10000094', N'Bịch', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000096', N'HD10000008', N'SP10000095', N'Bịch', 700, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000097', N'HD10000008', N'SP10000096', N'Bịch', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000098', N'HD10000008', N'SP10000097', N'Bịch', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000099', N'HD10000008', N'SP10000098', N'Gói', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000100', N'HD10000008', N'SP10000099', N'Gói', 800, 0, 0, 1)
GO
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000101', N'HD10000008', N'SP10000100', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000102', N'HD10000008', N'SP10000101', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000103', N'HD10000008', N'SP10000102', N'Hộp', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000104', N'HD10000008', N'SP10000103', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000105', N'HD10000008', N'SP10000104', N'Gói', 600, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000106', N'HD10000008', N'SP10000105', N'Gói', 1000, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000107', N'HD10000008', N'SP10000106', N'Gói', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000108', N'HD10000008', N'SP10000107', N'Gói', 800, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000109', N'HD10000008', N'SP10000108', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000110', N'HD10000008', N'SP10000109', N'Gói', 900, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000111', N'HD10000009', N'SP10000001', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000112', N'HD10000009', N'SP10000002', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000113', N'HD10000009', N'SP10000003', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000114', N'HD10000009', N'SP10000004', N'Gói', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000115', N'HD10000009', N'SP10000005', N'Bịch', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000116', N'HD10000009', N'SP10000006', N'Hủ', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000117', N'HD10000009', N'SP10000007', N'Hộp', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000118', N'HD10000009', N'SP10000008', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000119', N'HD10000009', N'SP10000009', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000120', N'HD10000009', N'SP10000010', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000121', N'HD10000009', N'SP10000011', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000122', N'HD10000009', N'SP10000012', N'Gói', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000123', N'HD10000009', N'SP10000013', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000124', N'HD10000009', N'SP10000014', N'Hộp', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000125', N'HD10000009', N'SP10000015', N'Hủ', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000126', N'HD10000009', N'SP10000016', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000127', N'HD10000009', N'SP10000017', N'Hộp', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000128', N'HD10000009', N'SP10000018', N'Hủ', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000129', N'HD10000009', N'SP10000019', N'Túi', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000130', N'HD10000010', N'SP10000020', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000131', N'HD10000010', N'SP10000021', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000132', N'HD10000010', N'SP10000022', N'Hộp', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000133', N'HD10000010', N'SP10000023', N'Bịch', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000134', N'HD10000010', N'SP10000024', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000135', N'HD10000010', N'SP10000025', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000136', N'HD10000010', N'SP10000026', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000137', N'HD10000010', N'SP10000027', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000138', N'HD10000010', N'SP10000028', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000139', N'HD10000010', N'SP10000029', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000140', N'HD10000010', N'SP10000030', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000141', N'HD10000010', N'SP10000031', N'Hộp', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000142', N'HD10000010', N'SP10000032', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000143', N'HD10000010', N'SP10000033', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000144', N'HD10000010', N'SP10000034', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000145', N'HD10000010', N'SP10000035', N'Chai', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000146', N'HD10000011', N'SP10000036', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000147', N'HD10000011', N'SP10000037', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000148', N'HD10000011', N'SP10000038', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000149', N'HD10000011', N'SP10000039', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000150', N'HD10000011', N'SP10000040', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000151', N'HD10000011', N'SP10000041', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000152', N'HD10000011', N'SP10000042', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000153', N'HD10000011', N'SP10000043', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000154', N'HD10000011', N'SP10000044', N'Chai', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000155', N'HD10000011', N'SP10000045', N'Bịch', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000156', N'HD10000011', N'SP10000046', N'Chai', 500, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000157', N'HD10000011', N'SP10000047', N'Bịch', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000158', N'HD10000011', N'SP10000048', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000159', N'HD10000011', N'SP10000049', N'Bịch', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000160', N'HD10000011', N'SP10000050', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000161', N'HD10000011', N'SP10000051', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000162', N'HD10000012', N'SP10000052', N'Lon', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000163', N'HD10000012', N'SP10000053', N'Lon', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000164', N'HD10000012', N'SP10000054', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000165', N'HD10000012', N'SP10000055', N'Chai', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000166', N'HD10000012', N'SP10000056', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000167', N'HD10000012', N'SP10000057', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000168', N'HD10000012', N'SP10000058', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000169', N'HD10000012', N'SP10000059', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000170', N'HD10000012', N'SP10000060', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000171', N'HD10000012', N'SP10000061', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000172', N'HD10000012', N'SP10000062', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000173', N'HD10000012', N'SP10000063', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000174', N'HD10000012', N'SP10000064', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000175', N'HD10000012', N'SP10000065', N'Chai', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000176', N'HD10000012', N'SP10000066', N'Lon', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000177', N'HD10000012', N'SP10000067', N'Chai', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000178', N'HD10000012', N'SP10000068', N'Lon', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000179', N'HD10000012', N'SP10000069', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000180', N'HD10000013', N'SP10000070', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000181', N'HD10000013', N'SP10000071', N'Bịch', 150, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000182', N'HD10000013', N'SP10000072', N'Gói', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000183', N'HD10000013', N'SP10000073', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000184', N'HD10000013', N'SP10000074', N'Gói', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000185', N'HD10000013', N'SP10000075', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000186', N'HD10000013', N'SP10000076', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000187', N'HD10000013', N'SP10000077', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000188', N'HD10000013', N'SP10000078', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000189', N'HD10000013', N'SP10000079', N'Lon', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000190', N'HD10000013', N'SP10000080', N'Bịch', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000191', N'HD10000013', N'SP10000081', N'Lon', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000192', N'HD10000013', N'SP10000082', N'Hộp', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000193', N'HD10000013', N'SP10000083', N'Lon', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000194', N'HD10000013', N'SP10000084', N'Lon', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000195', N'HD10000013', N'SP10000085', N'Bịch', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000196', N'HD10000014', N'SP10000086', N'Hộp', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000197', N'HD10000014', N'SP10000087', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000198', N'HD10000014', N'SP10000088', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000199', N'HD10000014', N'SP10000089', N'Gói', 150, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000200', N'HD10000014', N'SP10000090', N'Gói', 500, 0, 0, 1)
GO
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000201', N'HD10000014', N'SP10000091', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000202', N'HD10000014', N'SP10000092', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000203', N'HD10000014', N'SP10000093', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000204', N'HD10000015', N'SP10000094', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000205', N'HD10000015', N'SP10000095', N'Bịch', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000206', N'HD10000015', N'SP10000096', N'Bịch', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000207', N'HD10000015', N'SP10000097', N'Bịch', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000208', N'HD10000015', N'SP10000098', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000209', N'HD10000015', N'SP10000099', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000210', N'HD10000015', N'SP10000100', N'Gói', 200, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000211', N'HD10000015', N'SP10000101', N'Gói', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000212', N'HD10000015', N'SP10000102', N'Hộp', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000213', N'HD10000015', N'SP10000103', N'Gói', 300, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000214', N'HD10000015', N'SP10000104', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000215', N'HD10000015', N'SP10000105', N'Gói', 400, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000216', N'HD10000015', N'SP10000106', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000217', N'HD10000015', N'SP10000107', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000218', N'HD10000015', N'SP10000108', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000219', N'HD10000015', N'SP10000109', N'Gói', 100, 0, 0, 1)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000220', N'HD10000016', N'SP10000007', N'Hộp', 3, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000221', N'HD10000016', N'SP10000008', N'Gói', 7, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000222', N'HD10000016', N'SP10000009', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000223', N'HD10000016', N'SP10000011', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000224', N'HD10000016', N'SP10000012', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000225', N'HD10000016', N'SP10000013', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000226', N'HD10000016', N'SP10000014', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000227', N'HD10000016', N'SP10000010', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000228', N'HD10000016', N'SP10000015', N'Hủ', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000229', N'HD10000016', N'SP10000017', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000230', N'HD10000016', N'SP10000018', N'Hủ', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000231', N'HD10000016', N'SP10000019', N'Túi', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000232', N'HD10000017', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000233', N'HD10000017', N'SP10000007', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000234', N'HD10000017', N'SP10000009', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000235', N'HD10000017', N'SP10000012', N'Gói', 3, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000236', N'HD10000018', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000237', N'HD10000018', N'SP10000012', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000238', N'HD10000018', N'SP10000007', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000239', N'HD10000018', N'SP10000009', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000240', N'HD10000019', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000241', N'HD10000019', N'SP10000012', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000242', N'HD10000019', N'SP10000007', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000243', N'HD10000020', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000244', N'HD10000020', N'SP10000012', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000245', N'HD10000020', N'SP10000007', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000246', N'HD10000020', N'SP10000009', N'Gói', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000247', N'HD10000021', N'SP10000001', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000248', N'HD10000021', N'SP10000002', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000249', N'HD10000022', N'SP10000020', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000250', N'HD10000022', N'SP10000021', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000251', N'HD10000022', N'SP10000022', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000252', N'HD10000023', N'SP10000023', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000253', N'HD10000023', N'SP10000024', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000254', N'HD10000023', N'SP10000025', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000255', N'HD10000023', N'SP10000026', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000256', N'HD10000023', N'SP10000027', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000257', N'HD10000023', N'SP10000029', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000258', N'HD10000023', N'SP10000030', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000259', N'HD10000023', N'SP10000031', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000260', N'HD10000023', N'SP10000032', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000261', N'HD10000023', N'SP10000033', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000262', N'HD10000023', N'SP10000034', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000263', N'HD10000023', N'SP10000035', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000264', N'HD10000023', N'SP10000036', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000265', N'HD10000024', N'SP10000038', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000266', N'HD10000024', N'SP10000039', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000267', N'HD10000024', N'SP10000040', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000268', N'HD10000024', N'SP10000041', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000269', N'HD10000024', N'SP10000042', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000270', N'HD10000024', N'SP10000043', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000271', N'HD10000024', N'SP10000044', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000272', N'HD10000024', N'SP10000045', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000273', N'HD10000024', N'SP10000046', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000274', N'HD10000024', N'SP10000047', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000275', N'HD10000024', N'SP10000048', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000276', N'HD10000024', N'SP10000049', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000277', N'HD10000024', N'SP10000050', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000278', N'HD10000024', N'SP10000051', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000279', N'HD10000024', N'SP10000052', N'Lon', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000280', N'HD10000024', N'SP10000053', N'Lon', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000281', N'HD10000024', N'SP10000054', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000282', N'HD10000024', N'SP10000055', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000283', N'HD10000024', N'SP10000056', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000284', N'HD10000024', N'SP10000057', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000285', N'HD10000024', N'SP10000058', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000286', N'HD10000024', N'SP10000059', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000287', N'HD10000024', N'SP10000060', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000288', N'HD10000025', N'SP10000061', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000289', N'HD10000025', N'SP10000062', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000290', N'HD10000025', N'SP10000063', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000291', N'HD10000025', N'SP10000064', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000292', N'HD10000025', N'SP10000065', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000293', N'HD10000025', N'SP10000066', N'Lon', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000294', N'HD10000025', N'SP10000067', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000295', N'HD10000025', N'SP10000068', N'Lon', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000296', N'HD10000025', N'SP10000069', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000297', N'HD10000025', N'SP10000070', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000298', N'HD10000025', N'SP10000071', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000299', N'HD10000025', N'SP10000072', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000300', N'HD10000025', N'SP10000073', N'Gói', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000301', N'HD10000025', N'SP10000086', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000302', N'HD10000025', N'SP10000087', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000303', N'HD10000025', N'SP10000088', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000304', N'HD10000025', N'SP10000089', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000305', N'HD10000025', N'SP10000090', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000306', N'HD10000026', N'SP10000108', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000307', N'HD10000026', N'SP10000106', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000308', N'HD10000026', N'SP10000104', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000309', N'HD10000026', N'SP10000102', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000310', N'HD10000026', N'SP10000099', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000311', N'HD10000026', N'SP10000098', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000312', N'HD10000026', N'SP10000097', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000313', N'HD10000026', N'SP10000096', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000314', N'HD10000026', N'SP10000095', N'Bịch', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000315', N'HD10000027', N'SP10000086', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000316', N'HD10000028', N'SP10000041', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000317', N'HD10000028', N'SP10000040', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000318', N'HD10000028', N'SP10000039', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000319', N'HD10000028', N'SP10000038', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000320', N'HD10000028', N'SP10000024', N'Chai', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000321', N'HD10000028', N'SP10000023', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000322', N'HD10000028', N'SP10000022', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000323', N'HD10000028', N'SP10000021', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000324', N'HD10000029', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000325', N'HD10000029', N'SP10000012', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000326', N'HD10000029', N'SP10000007', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000327', N'HD10000030', N'SP10000073', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000328', N'HD10000030', N'SP10000072', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000329', N'HD10000030', N'SP10000071', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000330', N'HD10000030', N'SP10000070', N'Hộp', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000331', N'HD10000031', N'SP10000088', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000332', N'HD10000031', N'SP10000089', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000333', N'HD10000032', N'SP10000001', N'Hộp', 10, 0, 0, 0)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000334', N'HD10000033', N'SP10000095', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000335', N'HD10000033', N'SP10000099', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000336', N'HD10000033', N'SP10000098', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000337', N'HD10000033', N'SP10000097', N'Bịch', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000338', N'HD10000034', N'SP10000001', N'Hộp', 8, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000339', N'HD10000034', N'SP10000002', N'Chai', 6, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000340', N'HD10000035', N'SP10000002', N'Chai', 100, 0, 0, 0)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000341', N'HD10000036', N'SP10000012', N'Gói', 24, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000342', N'HD10000037', N'SP10000012', N'Gói', 3, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000343', N'HD10000037', N'SP10000007', N'Hộp', 4, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000344', N'HD10000038', N'SP10000012', N'Gói', 1, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000345', N'HD10000038', N'SP10000007', N'Hộp', 2, NULL, NULL, NULL)
INSERT [dbo].[DongHoaDon] ([IDDongHoaDon], [IDHoaDon], [IDSanPham], [IDDonViTinh], [SoLuong], [Giam], [TraLai], [TinhTrang]) VALUES (N'DHD1000346', N'HD10000038', N'SP10000008', N'Gói', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Bát', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Bịch', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Bình', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Chai', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Cốc', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Đôi', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'g', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Gói', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Hộp', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Hủ', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Kg', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Lốc', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Lon', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Ly', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Ổ', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Thùng', 0)
INSERT [dbo].[DonViTinh] ([IDDonViTinh], [MacDinh]) VALUES (N'Túi', 0)
GO
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000001', CAST(N'2020-01-02T07:21:43.000' AS DateTime), NULL, NULL, 1, 1, NULL, -1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000002', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000002', N'NV100001', 672968960, 1, NULL, 1, 6, N'', N'PK10000001')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000003', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000004', N'NV100001', 1584049280, 1, NULL, 1, 7, N'', N'PK10000002')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000004', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000013', N'NV100001', 731508672, 1, NULL, 1, 5, N'', N'PK10000003')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000005', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000005', N'NV100001', 225581792, 1, NULL, 1, 8, N'', N'PK10000004')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000006', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000013', N'NV100001', 553234432, 1, NULL, 1, 5, N'', N'PK10000005')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000007', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000003', N'NV100001', 544672576, 1, NULL, 1, 9, N'', N'PK10000006')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000008', CAST(N'2020-01-02T07:21:43.000' AS DateTime), N'KH1000003', N'NV100001', 507920576, 1, NULL, 1, 8, N'', N'PK10000007')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000009', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 142740000, 1, NULL, 2, 0, N'ok', N'PK10000008')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000010', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 259430000, 1, NULL, 2, 0, N'Tốt', N'PK10000009')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000011', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 123110000, 1, NULL, 2, 0, N'Tốt', N'PK10000010')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000012', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 32920000, 1, NULL, 2, 0, N'Tốt', N'PK10000011')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000013', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 110925000, 1, NULL, 2, 0, N'OK', N'PK10000012')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000014', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 98480000, 1, NULL, 2, 0, N'Tốt', N'PK10000013')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000015', CAST(N'2020-03-02T07:38:27.000' AS DateTime), NULL, N'NV100001', 127500000, 1, NULL, 2, 0, N'Tốt', N'PK10000014')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000016', CAST(N'2020-10-03T10:56:18.000' AS DateTime), N'KH1000021', N'NV100003', 1054800, 1, N'TTTT1001', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000017', CAST(N'2020-10-03T12:14:46.000' AS DateTime), N'KH1000025', N'NV100003', 156900, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000018', CAST(N'2020-11-02T12:22:00.000' AS DateTime), N'KH1000028', N'NV100003', 175300, 1, N'TTTT1002', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000019', CAST(N'2020-11-03T10:29:55.000' AS DateTime), N'KH1000030', N'NV100003', 101900, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000020', CAST(N'2020-11-03T11:22:36.000' AS DateTime), N'KH1000031', N'NV100003', 181800, 1, N'TTTT1003', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000021', CAST(N'2020-12-03T11:30:13.000' AS DateTime), N'KH1000033', N'NV100003', 165000, 1, N'TTTT1004', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000022', CAST(N'2020-12-03T11:36:24.000' AS DateTime), N'KH1000034', N'NV100003', 100900, 1, N'TTTT1005', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000023', CAST(N'2021-01-01T11:38:32.000' AS DateTime), N'KH1000035', N'NV100003', 1719700, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000024', CAST(N'2021-01-02T11:41:13.000' AS DateTime), N'KH1000036', N'NV100003', 1277500, 1, N'TTTT1006', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000025', CAST(N'2021-01-02T11:44:02.000' AS DateTime), N'KH1000037', N'NV100003', 788800, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000026', CAST(N'2021-01-02T11:45:21.000' AS DateTime), N'KH1000038', N'NV100003', 488400, 1, N'TTTT1007', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000027', CAST(N'2021-01-02T11:46:55.000' AS DateTime), N'KH1000039', N'NV100003', 108000, 1, N'TTTT1008', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000028', CAST(N'2020-12-27T11:57:17.000' AS DateTime), N'KH1000040', N'NV100003', 500900, 1, N'TTTT1009', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000029', CAST(N'2020-12-27T11:57:17.000' AS DateTime), N'KH1000041', N'NV100003', 101900, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000030', CAST(N'2020-12-27T11:57:17.000' AS DateTime), N'KH1000042', N'NV100003', 129200, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000031', CAST(N'2021-01-03T11:58:53.000' AS DateTime), N'KH1000043', N'NV100003', 207500, 1, N'TTTT1010', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000032', CAST(N'2021-01-04T07:04:56.000' AS DateTime), NULL, N'NV100001', 574000, 0, NULL, 2, 0, N'111', N'PK10000015')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000033', CAST(N'2021-01-04T08:17:30.000' AS DateTime), N'KH1000044', N'NV100003', 194100, 1, N'TTTT1011', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000034', CAST(N'2021-01-04T08:25:35.000' AS DateTime), N'KH1000045', N'NV100003', 1116000, 1, N'TTTT1012', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000035', CAST(N'2021-01-04T08:56:10.000' AS DateTime), N'KH1000002', N'NV100001', 9120000, 0, NULL, 1, 0, N'jjj', N'PK10000016')
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000036', CAST(N'2021-01-04T09:04:22.000' AS DateTime), N'KH1000046', N'NV100003', 504000, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000037', CAST(N'2021-01-04T09:16:40.000' AS DateTime), N'KH1000047', N'NV100003', 246600, 1, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([IDHoaDon], [NgayTao], [IDKhachHang], [IDNhanVien], [TongTien], [TrangThai], [IDThongTin], [LoaiHoaDon], [ThueVAT], [NoiDung], [IDPhieu]) VALUES (N'HD10000038', CAST(N'2021-01-05T09:34:30.000' AS DateTime), N'KH1000048', N'NV100003', 147800, 1, N'TTTT1013', 0, 0, NULL, NULL)
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000001', N'NKH10003', N'Công Ty Phân Phối Rau Sạch Hạnh Nhân', NULL, N'18008261  ', N'Đà Nẵng', N'MSS10192', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000002', N'NKH10003', N'Công Ty Bánh Kẹo Nhật Cường', NULL, N'023938464 ', N'Hải Phòng', N'MSS10193', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000003', N'NKH10003', N'Siêu Thị Big C', NULL, N'19002311  ', N'Đà Nẵng', N'MSS10194', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000004', N'NKH10003', N'Công Ty Mỹ Phẩm Hoa Sơn', NULL, N'19000011  ', N'Đồng Tháp', N'MSS10195', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000005', N'NKH10003', N'Công Ty Nước Giải Khát Hòa Minh', NULL, N'19283634  ', N'Điện Biên', N'MSS10196', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000006', N'NKH10003', N'Công Ty Phân Phối Rượu Bia Hải Yến', NULL, N'19282453  ', N'Quảng Nam', N'MSS10197', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000007', N'NKH10003', N'Công Ty Sản Xuất Sữa Khánh Huy', NULL, N'098922534 ', N'Bình Dương', N'MSS10198', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000008', N'NKH10002', N'KH1000008', N'Nam', N'KH1000008 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000009', N'NKH10002', N'KH1000009', N'Nam', N'KH1000009 ', N'Bà Rịa-Vũng Tàu', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000010', N'NKH10002', N'KH1000010', N'Nam', N'KH1000010 ', N'Bến Tre', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000011', N'NKH10002', N'KH1000011', N'Nam', N'KH1000011 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000012', N'NKH10002', N'KH1000012', N'Nam', N'KH1000012 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000013', N'NKH10003', N'Công Ty Sản Xuất Hàng Tiêu Dùng', NULL, N'092826356 ', N'Bắc Ninh', N'MSS10198', 0, 0, 0)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000014', N'NKH10002', N'KH1000014', N'Nam', N'KH1000014 ', N'Lạng Sơn', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000015', N'NKH10002', N'KH1000015', N'Nam', N'KH1000015 ', N'Bắc Ninh', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000016', N'NKH10002', N'KH1000016', N'Nam', N'KH1000016 ', N'Cà Mau', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000017', N'NKH10002', N'KH1000017', N'Nam', N'KH1000017 ', N'Phú Thọ', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000018', N'NKH10002', N'KH1000018', N'Nam', N'KH1000018 ', N'Bạc Liêu', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000019', N'NKH10002', N'KH1000019', N'Nữ', N'KH1000019 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000020', N'NKH10002', N'KH1000020', N'Nam', N'KH1000020 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000021', N'NKH10002', N'KH1000021', N'Nam', N'KH1000021 ', N'Bạc Liêu', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000022', N'NKH10002', N'KH1000022', N'Nam', N'KH1000022 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000023', N'NKH10002', N'KH1000023', N'Nam', N'KH1000023 ', N'Bắc Kạn', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000024', N'NKH10002', N'KH1000024', N'Nam', N'KH1000024 ', N'Hà Nội (TP)', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000025', N'NKH10002', N'KH1000025', N'Nam', N'KH1000025 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000026', N'NKH10002', N'KH1000026', N'Nam', N'KH1000026 ', N'Bạc Liêu', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000027', N'NKH10002', N'KH1000027', N'Nam', N'KH1000027 ', N'Hà Tĩnh', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000028', N'NKH10002', N'KH1000028', N'Nam', N'KH1000028 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000029', N'NKH10002', N'KH1000029', N'Nam', N'KH1000029 ', N'Kiên Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000030', N'NKH10002', N'KH1000030', N'Nam', N'KH1000030 ', N'Bắc Ninh', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000031', N'NKH10002', N'KH1000031', N'Nam', N'KH1000031 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000032', N'NKH10002', N'KH1000032', N'Nam', N'KH1000032 ', N'Bến Tre', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000033', N'NKH10002', N'KH1000033', N'Nam', N'KH1000033 ', N'Bắc Ninh', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000034', N'NKH10002', N'KH1000034', N'Nam', N'KH1000034 ', N'Kiên Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000035', N'NKH10002', N'KH1000035', N'Nam', N'KH1000035 ', N'Hậu Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000036', N'NKH10002', N'KH1000036', N'Nam', N'KH1000036 ', N'Lâm Đồng', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000037', N'NKH10002', N'KH1000037', N'Nam', N'KH1000037 ', N'Bến Tre', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000038', N'NKH10002', N'KH1000038', N'Nam', N'KH1000038 ', N'Quảng Bình', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000039', N'NKH10002', N'MV23456875', N'Nam', N'MV23456875', N'Bình Định', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000040', N'NKH10002', N'KH1000040', N'Nam', N'KH1000040 ', N'Bắc Ninh', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000041', N'NKH10002', N'KH1000041', N'Nam', N'KH1000041 ', N'Nam Định', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000042', N'NKH10002', N'KH1000042', N'Nam', N'KH1000042 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000043', N'NKH10002', N'KH1000043', N'Nam', N'KH1000043 ', N'Tiền Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000044', N'NKH10002', N'KH1000044', N'Nam', N'KH1000044 ', N'Bắc Kạn', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000045', N'NKH10002', N'KH1000045', N'Nam', N'KH1000045 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000046', N'NKH10002', N'KH1000046', N'Nữ', N'KH1000046 ', N'Bình Định', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000047', N'NKH10002', N'KH1000047', N'Nam', N'KH1000047 ', N'Bắc Giang', N'0', 0, 0, NULL)
INSERT [dbo].[KhachHang] ([IDKhachHang], [IDNhomKH], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [MaSoThue], [TraDK], [ThuDK], [TinhTrang]) VALUES (N'KH1000048', N'NKH10002', N'KH1000048', N'Nam', N'KH1000048 ', N'Bắc Ninh', N'0', 0, 0, NULL)
GO
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456790', N'SP10000001', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 391)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456791', N'SP10000002', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 393)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456792', N'SP10000003', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 400)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456793', N'SP10000004', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 500, 0, N'IDKV10001', 500, 500)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456794', N'SP10000005', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 500, 0, N'IDKV10001', 500, 500)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456795', N'SP10000006', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456796', N'SP10000007', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 384)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456797', N'SP10000008', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 587)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456798', N'SP10000009', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 593)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456799', N'SP10000010', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456800', N'SP10000011', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456801', N'SP10000012', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 500, 300, 0, N'IDKV10001', 200, 161)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456802', N'SP10000013', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 398)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456803', N'SP10000014', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 300, 0, N'IDKV10001', 700, 698)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456804', N'SP10000015', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456805', N'SP10000016', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456806', N'SP10000017', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456807', N'SP10000018', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456808', N'SP10000019', CAST(N'2021-01-02T07:31:56.000' AS DateTime), CAST(N'2021-01-02T07:46:23.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456809', N'SP10000020', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456810', N'SP10000021', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 598)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456811', N'SP10000022', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 698)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456812', N'SP10000023', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 698)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456813', N'SP10000024', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 898)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456814', N'SP10000025', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456815', N'SP10000026', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456816', N'SP10000027', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456817', N'SP10000028', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456818', N'SP10000029', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456819', N'SP10000030', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456820', N'SP10000031', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456821', N'SP10000032', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456822', N'SP10000033', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456823', N'SP10000034', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456824', N'SP10000035', CAST(N'2021-01-02T07:32:22.000' AS DateTime), CAST(N'2021-01-02T07:46:43.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456825', N'SP10000036', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456826', N'SP10000037', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456827', N'SP10000038', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 798)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456828', N'SP10000039', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 898)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456829', N'SP10000040', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 398)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456830', N'SP10000041', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 898)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456831', N'SP10000042', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 700, 200, 0, N'IDKV10001', 500, 499)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456832', N'SP10000043', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456833', N'SP10000044', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 900, 300, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456834', N'SP10000045', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456835', N'SP10000046', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 1000, 500, 0, N'IDKV10001', 500, 499)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456836', N'SP10000047', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456837', N'SP10000048', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456838', N'SP10000049', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456839', N'SP10000050', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456840', N'SP10000051', CAST(N'2021-01-02T07:32:36.000' AS DateTime), CAST(N'2021-01-02T07:46:57.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456841', N'SP10000052', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456842', N'SP10000053', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456843', N'SP10000054', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456844', N'SP10000055', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 1000, 300, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456845', N'SP10000056', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456846', N'SP10000057', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456847', N'SP10000058', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456848', N'SP10000059', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456849', N'SP10000060', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456850', N'SP10000061', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456851', N'SP10000062', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456852', N'SP10000063', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 899)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456853', N'SP10000064', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456854', N'SP10000065', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456855', N'SP10000066', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456856', N'SP10000067', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 899)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456857', N'SP10000068', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456858', N'SP10000069', CAST(N'2021-01-02T07:32:49.000' AS DateTime), CAST(N'2021-01-02T07:47:03.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456859', N'SP10000070', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 798)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456860', N'SP10000071', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 900, 150, 0, N'IDKV10001', 750, 748)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456861', N'SP10000072', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 800, 300, 0, N'IDKV10001', 500, 498)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456862', N'SP10000073', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 700, 200, 0, N'IDKV10001', 500, 498)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456863', N'SP10000074', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456864', N'SP10000075', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 900)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456865', N'SP10000076', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 1000, 100, 0, N'IDKV10001', 900, 900)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456866', N'SP10000077', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 700)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456867', N'SP10000078', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456868', N'SP10000079', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456869', N'SP10000080', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 700, 300, 0, N'IDKV10001', 400, 400)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456870', N'SP10000081', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 600, 300, 0, N'IDKV10001', 300, 300)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456871', N'SP10000082', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 400)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456872', N'SP10000083', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456873', N'SP10000084', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456874', N'SP10000085', CAST(N'2021-01-02T07:33:18.000' AS DateTime), CAST(N'2021-01-02T07:47:08.000' AS DateTime), 700, 100, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456875', N'SP10000086', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 600, 200, 0, N'IDKV10001', 400, 397)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456876', N'SP10000087', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456877', N'SP10000088', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 798)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456878', N'SP10000089', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 1000, 150, 0, N'IDKV10001', 850, 848)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456879', N'SP10000090', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 1000, 500, 0, N'IDKV10001', 500, 499)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456880', N'SP10000091', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 800, 200, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456881', N'SP10000092', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 700)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456882', N'SP10000093', CAST(N'2021-01-02T07:33:31.000' AS DateTime), CAST(N'2021-01-02T07:47:24.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456883', N'SP10000094', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456884', N'SP10000095', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 700, 300, 0, N'IDKV10001', 400, 397)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456885', N'SP10000096', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 900, 200, 0, N'IDKV10001', 700, 699)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456886', N'SP10000097', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 698)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456887', N'SP10000098', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 600, 100, 0, N'IDKV10001', 500, 498)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456888', N'SP10000099', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 698)
GO
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456889', N'SP10000100', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 1000, 200, 0, N'IDKV10001', 800, 800)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456890', N'SP10000101', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 900, 300, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456891', N'SP10000102', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 599)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456892', N'SP10000103', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 1000, 300, 0, N'IDKV10001', 700, 700)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456893', N'SP10000104', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 600, 100, 0, N'IDKV10001', 500, 499)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456894', N'SP10000105', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 1000, 400, 0, N'IDKV10001', 600, 600)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456895', N'SP10000106', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 500, 100, 0, N'IDKV10001', 400, 399)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456896', N'SP10000107', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 800, 100, 0, N'IDKV10001', 700, 700)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456897', N'SP10000108', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 799)
INSERT [dbo].[Kho] ([SKU], [IDSanPham], [NgayNhap], [NgayXuat], [SoLuongNhap], [SoLuongXuat], [TinhTrang], [IDKVKho], [SoLuongTonKho], [SoLuongHienTai]) VALUES (N'MV23456898', N'SP10000109', CAST(N'2021-01-02T07:33:41.000' AS DateTime), CAST(N'2021-01-02T07:47:30.000' AS DateTime), 900, 100, 0, N'IDKV10001', 800, 800)
GO
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV001', N'A')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV002', N'B')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV003', N'C')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV004', N'D')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV005', N'E')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV006', N'F')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV007', N'G')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV008', N'H')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV009', N'J')
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV010', N'K')
GO
INSERT [dbo].[KhuVucKho] ([IDKVKho], [TenKho]) VALUES (N'IDKV10001', N'Hải Châu')
INSERT [dbo].[KhuVucKho] ([IDKVKho], [TenKho]) VALUES (N'IDKV10002', N'Ngũ Hành Sơn')
GO
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100001', N'BP100001', N'Trà Tấn Hưởng', N'Nam', N'0354114665', N'Quảng Nam', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100002', N'BP100002', N'Trần Nguyễn Nguyên Thảo', N'Nữ', N'0123456789', N'Quảng Nam', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100003', N'BP100003', N'Cường Seven', N'Nữ', N'0122334455', N'Thái Nguyên', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100004', N'BP100003', N'Nguyễn Tấn Lợi', N'Nam', N'0983643522', N'Huế', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100005', N'BP100002', N'Hoàng Thị Thám', N'Nữ', N'0782363524', N'Núi Thành', 0, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100006', N'BP100002', N'Lê Văn Tiến', N'Nam', N'0989827252', N'Hà Nội', 2, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100007', N'BP100002', N'Hoàng Thu Uyên', N'Nữ', N'0982635241', N'Thái Bình', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100008', N'BP100003', N'Lê Văn Hùng', N'Nam', N'0782454361', N'Đồng Tháp', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100009', N'BP100003', N'Hòa ', N'Nam', N'0928273662', N'Bình Dương', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100010', N'BP100003', N'Lê Lợi', N'Nam', N'0876222412', N'Hòa Bình', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100011', N'BP100002', N'Nguyễn Thị Hải', N'Nữ', N'0971561142', N'Bắc Ninh', 1, NULL)
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDBoPhan], [HoTen], [GioiTinh], [SoDienThoai], [DiaChi], [TinhTrang], [IDCaLam]) VALUES (N'NV100012', N'BP100001', N'NV100012', N'Nam', N'NV100012  ', N'Bắc Ninh', 1, NULL)
GO
INSERT [dbo].[NhomKhachHang] ([IDNhomKH], [TenNhom], [LoaiNhom]) VALUES (N'NKH10001', N'Khách VIP', 1)
INSERT [dbo].[NhomKhachHang] ([IDNhomKH], [TenNhom], [LoaiNhom]) VALUES (N'NKH10002', N'Khách Defa', 2)
INSERT [dbo].[NhomKhachHang] ([IDNhomKH], [TenNhom], [LoaiNhom]) VALUES (N'NKH10003', N'Nhà Cung Cấp', 3)
GO
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'BANKEO1', N'Bánh Kẹo Và Đồ Ăn Vặt', 5, N'KV005')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'HHMP01', N'Hàng Hóa Mỹ Phẩm', 1, N'KV001')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'NHTHVU1', N'Gia Đình', 7, N'KV007')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'RBNGK0', N'Rượu Bia Nước Giải Khát', 3, N'KV003')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'SVSPVS1', N'Sữa Và Các Sản Phẩm Về Sữa', 4, N'KV004')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'TCFTUDD', N'Trà Cà Phê Thức Uống Dinh Dưỡng', 4, N'KV004')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'TPCBSDL', N'Thực Phẩm Chế Biến Sẵn Đông Lạnh', 6, N'KV006')
INSERT [dbo].[NhomSanPham] ([IDNhomSanPham], [TenNhom], [LoaiNhom], [IDKhuVuc]) VALUES (N'TPKVCB1', N'Thực Phẩm Khô Và Chế Biến', 2, N'KV002')
GO
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000000', NULL, NULL, NULL, NULL)
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000001', N'HD10000002', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000002', N'HD10000003', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000003', N'HD10000004', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000004', N'HD10000005', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000005', N'HD10000006', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000006', N'HD10000007', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000007', N'HD10000008', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000008', N'HD10000009', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000009', N'HD10000010', NULL, NULL, N'IDKV10002')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000010', N'HD10000011', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000011', N'HD10000012', NULL, NULL, N'IDKV10002')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000012', N'HD10000013', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000013', N'HD10000014', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000014', N'HD10000015', NULL, NULL, N'IDKV10001')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000015', N'HD10000032', NULL, NULL, N'IDKV10002')
INSERT [dbo].[PhieuKho] ([IDPhieu], [IDHoaDon], [NgayNhap], [NgayXuat], [IDKVKho]) VALUES (N'PK10000016', N'HD10000035', NULL, NULL, N'IDKV10001')
GO
INSERT [dbo].[PhuongThucThanhToan] ([IDPTThanhToan], [TenPTThanhToan]) VALUES (N'TIENMAT1', N'Tiền Mặt')
INSERT [dbo].[PhuongThucThanhToan] ([IDPTThanhToan], [TenPTThanhToan]) VALUES (N'TTTATM01', N'ATM')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000001', N'BANKEO1', N'Bánh flan Ánh Hồng lốc 10 hộp 54g', N'Hộp', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'BANKEO1.png', N'BG10000001', N'KH1000002', 0, N'MV23456790')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000002', N'BANKEO1', N'Kem tươi Paysan Breton dạng xịt chai 250g        ', N'Chai', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'BANKEO1.png', N'BG10000002', N'KH1000002', 0, N'MV23456791')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000003', N'BANKEO1', N'Phô mai que Mozzarella Baker Brand gói 140g ', N'Gói', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'BANKEO1.png', N'BG10000003', N'KH1000002', 0, N'MV23456792')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000004', N'BANKEO1', N'Bánh quy nhân kem vani Oreo gói 133g ', N'Gói', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'BANKEO1.png', N'BG10000004', N'KH1000002', 0, N'MV23456793')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000005', N'BANKEO1', N'Bánh gạo nướng orin vị tảo biển', N'Bịch', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'BANKEO1.png', N'BG10000005', N'KH1000002', 0, N'MV23456794')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000006', N'BANKEO1', N'Kẹo gum không đường hướng chanh ', N'Hủ', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'BANKEO1.png', N'BG10000006', N'KH1000002', 0, N'MV23456795')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000007', N'BANKEO1', N'Bánh choco-Pie Orion hộp 396g', N'Hộp', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'BANKEO1.png', N'BG10000007', N'KH1000002', 0, N'MV23456796')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000008', N'BANKEO1', N'Mít sấy vinamit gói 100g', N'Gói', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'BANKEO1.png', N'BG10000008', N'KH1000002', 0, N'MV23456797')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000009', N'BANKEO1', N'Snack tonnnies vị phô mai gói 36g', N'Gói', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'BANKEO1.png', N'BG10000009', N'KH1000002', 0, N'MV23456798')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000010', N'BANKEO1', N'Bánh quy bơ Danasia hộp 681g', N'Hộp', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'BANKEO1.png', N'BG10000010', N'KH1000002', 0, N'MV23456799')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000011', N'BANKEO1', N'Bánh kem xốp phômai Richeese Nabati cheese wafer 320g', N'Bịch', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'BANKEO1.png', N'BG10000011', N'KH1000002', 0, N'MV23456800')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000012', N'BANKEO1', N'Mực tẩm gia vị Thái Bento gói 24g', N'Gói', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'BANKEO1.png', N'BG10000012', N'KH1000002', 0, N'MV23456801')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000013', N'BANKEO1', N'Bánh gấu vị sô cô la Lotte Koala''s March hộp 37g', N'Hộp', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'BANKEO1.png', N'BG10000013', N'KH1000002', 0, N'MV23456802')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000014', N'BANKEO1', N'Bánh quy bơ Pháp Lu hộp 300g', N'Hộp', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'BANKEO1.png', N'BG10000014', N'KH1000002', 0, N'MV23456803')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000015', N'BANKEO1', N'Kẹo gum Lotte Doraemon hương cam 3,2g', N'Hủ', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'BANKEO1.png', N'BG10000015', N'KH1000002', 0, N'MV23456804')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000016', N'BANKEO1', N'Kẹo dẻo hương trái cây CHUPA CHIPS gói 56g', N'Gói', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'BANKEO1.png', N'BG10000016', N'KH1000002', 0, N'MV23456805')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000017', N'BANKEO1', N'Kẹo lồng cún cảnh PlayMore', N'Hộp', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'BANKEO1.png', N'BG10000017', N'KH1000002', 0, N'MV23456806')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000018', N'BANKEO1', N'Kẹo the vị táo xanh PlayMore Hủ 22g', N'Hủ', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'BANKEO1.png', N'BG10000018', N'KH1000002', 0, N'MV23456807')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000019', N'BANKEO1', N'Thạch rau câu trái cây tổng hợp túi 1kg', N'Túi', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'BANKEO1.png', N'BG10000019', N'KH1000002', 0, N'MV23456808')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000020', N'HHMP01', N'Sữa rửa tay Vinmart Home bọt tuyết trà chanh', N'Hộp', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'HHMP01.png', N'BG10000020', N'KH1000004', 0, N'MV23456809')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000021', N'HHMP01', N'Kem đánh răng Closeup bạc hà the mát 230g ', N'Hộp', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'HHMP01.png', N'BG10000021', N'KH1000004', 0, N'MV23456810')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000022', N'HHMP01', N'Gel rửa tay Kleen hương trà xanh 40ml', N'Hộp', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'HHMP01.png', N'BG10000022', N'KH1000004', 0, N'MV23456811')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000023', N'HHMP01', N'Mặt nạ linh chi Vinmart Mart Care 25ml', N'Bịch', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'HHMP01.png', N'BG10000023', N'KH1000004', 0, N'MV23456812')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000024', N'HHMP01', N'Dầu gội đầu Clear mát lạnh Bạc Hà 630g', N'Chai', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'HHMP01.png', N'BG10000024', N'KH1000004', 0, N'MV23456813')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000025', N'HHMP01', N'Dầu gội siêu mượt rejoice chai 650g', N'Chai', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'HHMP01.png', N'BG10000025', N'KH1000004', 0, N'MV23456814')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000026', N'HHMP01', N'Dầu gội cao cấp Romano Classic 900g', N'Chai', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'HHMP01.png', N'BG10000026', N'KH1000004', 0, N'MV23456815')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000027', N'HHMP01', N'Kem dưỡng trắng ban ngày senka', N'Chai', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'HHMP01.png', N'BG10000027', N'KH1000004', 0, N'MV23456816')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000028', N'HHMP01', N'Bàn chải đánh răng Colgate Slim Soft Characoost', N'Hộp', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'HHMP01.png', N'BG10000028', N'KH1000004', 0, N'MV23456817')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000029', N'HHMP01', N'Sữa tấm BIORE dưỡng ẩm mịn da sữa tinh khiết dịu nhẹ 530g', N'Chai', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'HHMP01.png', N'BG10000029', N'KH1000004', 0, N'MV23456818')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000030', N'HHMP01', N'Sữa tắm Bioré hương trà xanh mát dịu sảng khoái 200g', N'Chai', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'HHMP01.png', N'BG10000030', N'KH1000004', 0, N'MV23456819')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000031', N'HHMP01', N'Nước giặt Ariel 1.6 lít', N'Hộp', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'HHMP01.png', N'BG10000031', N'KH1000004', 0, N'MV23456820')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000032', N'HHMP01', N'Pantene chăm sóc tóc hư tổn 335g', N'Chai', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'HHMP01.png', N'BG10000032', N'KH1000004', 0, N'MV23456821')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000033', N'HHMP01', N'Lăn khử mùi Nivea ngọc trai đẹp quyến rũ 50ml', N'Chai', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'HHMP01.png', N'BG10000033', N'KH1000004', 0, N'MV23456822')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000034', N'HHMP01', N'Sữa rữa mặt mud Nivea men anti-acne 100g ', N'Chai', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'HHMP01.png', N'BG10000034', N'KH1000004', 0, N'MV23456823')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000035', N'HHMP01', N'Sữa rữa mặt mud Nivea men anti-acne 50g ', N'Chai', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'HHMP01.png', N'BG10000035', N'KH1000004', 0, N'MV23456824')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000036', N'NHTHVU1', N'Tương ớt Chinsu Rồng Việt 200g', N'Chai', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'NHTHVU1.png', N'BG10000036', N'KH1000013', 0, N'MV23456825')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000037', N'NHTHVU1', N'Hạt nêm Chinsu 3 vị 800g ', N'Bịch', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'NHTHVU1.png', N'BG10000037', N'KH1000013', 0, N'MV23456826')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000038', N'NHTHVU1', N'Nước tương Chinsu Tam Thái Tử nhất ca 500ml', N'Chai', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'NHTHVU1.png', N'BG10000038', N'KH1000013', 0, N'MV23456827')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000039', N'NHTHVU1', N'Nước chấm Chinsu Nam Ngư  Đê Nhị 900ml', N'Chai', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'NHTHVU1.png', N'BG10000039', N'KH1000013', 0, N'MV23456828')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000040', N'NHTHVU1', N'Bột giặt SURF hương nước xả vải 2.2kg', N'Hộp', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'NHTHVU1.png', N'BG10000040', N'KH1000013', 0, N'MV23456829')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000041', N'NHTHVU1', N'Nước xả vải Comfort Cho da nhạy cảm 1,8L', N'Hộp', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'NHTHVU1.png', N'BG10000041', N'KH1000013', 0, N'MV23456830')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000042', N'NHTHVU1', N'Bột giặt Omo Dịu nhẹ trên da 720g', N'Bịch', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'NHTHVU1.png', N'BG10000042', N'KH1000013', 0, N'MV23456831')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000043', N'NHTHVU1', N'Bột giặt Omo Matic Máy giặt cửa trước 3kg ', N'Hộp', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'NHTHVU1.png', N'BG10000043', N'KH1000013', 0, N'MV23456832')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000044', N'NHTHVU1', N'Nước lau kính Cif 520ml', N'Chai', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'NHTHVU1.png', N'BG10000044', N'KH1000013', 0, N'MV23456833')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000045', N'NHTHVU1', N'Hạt nêm nấm hương Maggi 200g', N'Bịch', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'NHTHVU1.png', N'BG10000045', N'KH1000013', 0, N'MV23456834')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000046', N'NHTHVU1', N'Dàu hào Maggi 530g', N'Chai', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'NHTHVU1.png', N'BG10000046', N'KH1000013', 0, N'MV23456835')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000047', N'NHTHVU1', N'Giấy lụa hộp Nano 150 tờ', N'Bịch', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'NHTHVU1.png', N'BG10000047', N'KH1000013', 0, N'MV23456836')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000048', N'NHTHVU1', N'Khăn lau vật dụng đa năng Nano 30 miếng', N'Bịch', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'NHTHVU1.png', N'BG10000048', N'KH1000013', 0, N'MV23456837')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000049', N'NHTHVU1', N'Giấy vệ sinh Nano 2 cuộn có lõi', N'Bịch', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'NHTHVU1.png', N'BG10000049', N'KH1000013', 0, N'MV23456838')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000050', N'NHTHVU1', N'Tiêu đen hạt 50g', N'Hộp', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'NHTHVU1.png', N'BG10000050', N'KH1000013', 0, N'MV23456839')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000051', N'NHTHVU1', N'Dầu Cooking Oil Tường An 250ml', N'Chai', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'NHTHVU1.png', N'BG10000051', N'KH1000013', 0, N'MV23456840')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000052', N'RBNGK0', N'Bia tiger 330ml', N'Lon', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'RBNGK0.png', N'BG10000052', N'KH1000005', 0, N'MV23456841')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000053', N'RBNGK0', N'Bia heineken 330ml', N'Lon', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'RBNGK0.png', N'BG10000053', N'KH1000005', 0, N'MV23456842')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000054', N'RBNGK0', N'Coca Cola 1,5l', N'Chai', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'RBNGK0.png', N'BG10000054', N'KH1000005', 0, N'MV23456843')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000055', N'RBNGK0', N'Sprite 1,5l', N'Chai', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'RBNGK0.png', N'BG10000055', N'KH1000005', 0, N'MV23456844')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000056', N'RBNGK0', N'Fanta hương cam 1,5l', N'Chai', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'RBNGK0.png', N'BG10000056', N'KH1000005', 0, N'MV23456845')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000057', N'RBNGK0', N'Teppy nho nha đam 327ml', N'Chai', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'RBNGK0.png', N'BG10000057', N'KH1000005', 0, N'MV23456846')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000058', N'RBNGK0', N'Teppy táo 327ml', N'Chai', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'RBNGK0.png', N'BG10000058', N'KH1000005', 0, N'MV23456847')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000059', N'RBNGK0', N'Cocacola chai 600ml', N'Chai', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'RBNGK0.png', N'BG10000059', N'KH1000005', 0, N'MV23456848')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000060', N'RBNGK0', N'Coca Cola 330ml', N'Chai', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'RBNGK0.png', N'BG10000060', N'KH1000005', 0, N'MV23456849')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000061', N'RBNGK0', N'Fanta hương cam 330ml', N'Chai', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'RBNGK0.png', N'BG10000061', N'KH1000005', 0, N'MV23456850')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000062', N'RBNGK0', N'Fanta hương xá xị 330ml', N'Chai', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'RBNGK0.png', N'BG10000062', N'KH1000005', 0, N'MV23456851')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000063', N'RBNGK0', N'Sprite 390ml', N'Chai', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'RBNGK0.png', N'BG10000063', N'KH1000005', 0, N'MV23456852')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000064', N'RBNGK0', N'Nutri boost cam 297ml', N'Chai', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'RBNGK0.png', N'BG10000064', N'KH1000005', 0, N'MV23456853')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000065', N'RBNGK0', N'Aquarius 390ml', N'Chai', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'RBNGK0.png', N'BG10000065', N'KH1000005', 0, N'MV23456854')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000066', N'RBNGK0', N'Bia Sài Gòn Lager lon 330ml', N'Lon', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'RBNGK0.png', N'BG10000066', N'KH1000005', 0, N'MV23456855')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000067', N'RBNGK0', N'Nước táo lên men StrongBow Apple ', N'Chai', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'RBNGK0.png', N'BG10000067', N'KH1000005', 0, N'MV23456856')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000068', N'RBNGK0', N'Nước giải khát hương chanh 330ml', N'Lon', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'RBNGK0.png', N'BG10000068', N'KH1000005', 0, N'MV23456857')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000069', N'RBNGK0', N'Trà chanh mật ong Lipton Ice Tea', N'Hộp', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'RBNGK0.png', N'BG10000069', N'KH1000005', 0, N'MV23456858')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000070', N'TCFTUDD', N'Nescafe đỏ hộp giấy 3in1 340g', N'Hộp', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'TCFTUDD.png', N'BG10000070', N'KH1000013', 0, N'MV23456859')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000071', N'TCFTUDD', N'Nescafe bịch đỏ 782g 3in1', N'Bịch', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'TCFTUDD.png', N'BG10000071', N'KH1000013', 0, N'MV23456860')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000072', N'TCFTUDD', N'café Trung Nguyên Khát vọng I 500g', N'Gói', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'TCFTUDD.png', N'BG10000072', N'KH1000013', 0, N'MV23456861')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000073', N'TCFTUDD', N'café Trung Nguyên G7 30g', N'Gói', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'TCFTUDD.png', N'BG10000073', N'KH1000013', 0, N'MV23456862')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000074', N'TCFTUDD', N'café Trung Nguyên G7 3 in 1 320g', N'Gói', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'TCFTUDD.png', N'BG10000074', N'KH1000013', 0, N'MV23456863')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000075', N'TCFTUDD', N'Café phinn uống liền Vina Café 255g', N'Gói', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'TCFTUDD.png', N'BG10000075', N'KH1000013', 0, N'MV23456864')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000076', N'TCFTUDD', N'Cà phê đen đá Café Việt Nescafe hộp 240g', N'Hộp', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'TCFTUDD.png', N'BG10000076', N'KH1000013', 0, N'MV23456865')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000077', N'TCFTUDD', N'Cà phê hòa tan 3in1 G7 Gói 800g', N'Gói', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'TCFTUDD.png', N'BG10000077', N'KH1000013', 0, N'MV23456866')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000078', N'TCFTUDD', N'Cà phê hòa tan đậm vị 3 trong 1 hộp 255g', N'Hộp', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'TCFTUDD.png', N'BG10000078', N'KH1000013', 0, N'MV23456867')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000079', N'TCFTUDD', N'Cà phê sữa Mr Brown hương vani lon 240ml', N'Lon', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'TCFTUDD.png', N'BG10000079', N'KH1000013', 0, N'MV23456868')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000080', N'TCFTUDD', N'Kẹo café có thể ăn hoặc hòa tan', N'Bịch', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'TCFTUDD.png', N'BG10000080', N'KH1000013', 0, N'MV23456869')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000081', N'TCFTUDD', N'Cà phê Blue Mountain Blen Mr Brown lon 240ml', N'Lon', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'TCFTUDD.png', N'BG10000081', N'KH1000013', 0, N'MV23456870')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000082', N'TCFTUDD', N'Cà phê cappuccino Trung Nguyên hộp 216g', N'Hộp', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'TCFTUDD.png', N'BG10000082', N'KH1000013', 0, N'MV23456871')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000083', N'TCFTUDD', N'Cà phê sữa đá Highlands Coffee lon 235ml', N'Lon', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'TCFTUDD.png', N'BG10000083', N'KH1000013', 0, N'MV23456872')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000084', N'TCFTUDD', N'Cà phê sữa Mr Brown vị sô cô la lon 240ml', N'Lon', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'TCFTUDD.png', N'BG10000084', N'KH1000013', 0, N'MV23456873')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000085', N'TCFTUDD', N'Cà phê sữa Make up Vinacafe hương chồn  306g', N'Bịch', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'TCFTUDD.png', N'BG10000085', N'KH1000013', 0, N'MV23456874')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000086', N'TPCBSDL', N'Thịt ba chỉ bò Mỹ 300g', N'Hộp', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'TPCBSDL.png', N'BG10000086', N'KH1000003', 0, N'MV23456875')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000087', N'TPCBSDL', N'Cá viên chiên đông lạnh Home Food gói 500g', N'Gói', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'TPCBSDL.png', N'BG10000087', N'KH1000003', 0, N'MV23456876')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000088', N'TPCBSDL', N'Chả giò rễ con tôm Vissan gói 300g', N'Gói', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'TPCBSDL.png', N'BG10000088', N'KH1000003', 0, N'MV23456877')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000089', N'TPCBSDL', N'Tôm thịt size 71/90 Home Food gói 450g', N'Gói', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'TPCBSDL.png', N'BG10000089', N'KH1000003', 0, N'MV23456878')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000090', N'TPCBSDL', N'Cá viên SG Food gói 500g', N'Gói', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'TPCBSDL.png', N'BG10000090', N'KH1000003', 0, N'MV23456879')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000091', N'TPCBSDL', N'Xúc xích dinh dưỡng heo Vissan gói 175g', N'Gói', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'TPCBSDL.png', N'BG10000091', N'KH1000003', 0, N'MV23456880')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000092', N'TPCBSDL', N'Xúc xích heo tiệt trùng Vissan gói 280g', N'Gói', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'TPCBSDL.png', N'BG10000092', N'KH1000003', 0, N'MV23456881')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000093', N'TPCBSDL', N'Cá trứng Tân hải Hòa gói 500g', N'Gói', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'TPCBSDL.png', N'BG10000093', N'KH1000003', 0, N'MV23456882')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000094', N'TPKVCB1', N'Xủi Cảo Cầu Tre 200g ', N'Bịch', CAST(N'2019-12-21' AS Date), CAST(N'2020-12-31' AS Date), N'TPKVCB1.png', N'BG10000094', N'KH1000003', 0, N'MV23456883')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000095', N'TPKVCB1', N'Bò viên Cầu Tre 200g', N'Bịch', CAST(N'2019-10-10' AS Date), CAST(N'2021-02-03' AS Date), N'TPKVCB1.png', N'BG10000095', N'KH1000003', 0, N'MV23456884')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000096', N'TPKVCB1', N'Tupy xúc xích heo', N'Bịch', CAST(N'2019-03-03' AS Date), CAST(N'2021-01-03' AS Date), N'TPKVCB1.png', N'BG10000096', N'KH1000003', 0, N'MV23456885')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000097', N'TPKVCB1', N'Vây cá hồi tẩm gia vị  SG Food 500g', N'Bịch', CAST(N'2020-11-09' AS Date), CAST(N'2021-10-10' AS Date), N'TPKVCB1.png', N'BG10000097', N'KH1000003', 0, N'MV23456886')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000098', N'TPKVCB1', N'cháo thịt thăn bằm với bí đỏ 270gr', N'Gói', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'TPKVCB1.png', N'BG10000098', N'KH1000003', 0, N'MV23456887')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000099', N'TPKVCB1', N'NDCĐ Vị lẩu Thái 150g', N'Gói', CAST(N'2019-07-19' AS Date), CAST(N'2021-01-08' AS Date), N'TPKVCB1.png', N'BG10000099', N'KH1000003', 0, N'MV23456888')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000100', N'TPKVCB1', N'Cháo tươi thịt thăn bằm & bí đỏ 240g', N'Gói', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'TPKVCB1.png', N'BG10000100', N'KH1000003', 0, N'MV23456889')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000101', N'TPKVCB1', N'cháo tổ yến hạt sen lá dứa 240gr', N'Gói', CAST(N'2018-11-22' AS Date), CAST(N'2021-01-01' AS Date), N'TPKVCB1.png', N'BG10000101', N'KH1000003', 0, N'MV23456890')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000102', N'TPKVCB1', N'Cá viên BIBI SG Food 1kg', N'Hộp', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'TPKVCB1.png', N'BG10000102', N'KH1000003', 0, N'MV23456891')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000103', N'TPKVCB1', N'Komi cháo thịt bằm ', N'Gói', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'TPKVCB1.png', N'BG10000103', N'KH1000003', 0, N'MV23456892')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000104', N'TPKVCB1', N'Kokomi gà quay sợi phở', N'Gói', CAST(N'2020-03-03' AS Date), CAST(N'2021-09-03' AS Date), N'TPKVCB1.png', N'BG10000104', N'KH1000003', 0, N'MV23456893')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000105', N'TPKVCB1', N'Mì khoai tây omachi 825g', N'Gói', CAST(N'2020-10-20' AS Date), CAST(N'2021-09-09' AS Date), N'TPKVCB1.png', N'BG10000105', N'KH1000003', 0, N'MV23456894')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000106', N'TPKVCB1', N'Kokomi tôm chua cay', N'Gói', CAST(N'2020-12-22' AS Date), CAST(N'2021-12-22' AS Date), N'TPKVCB1.png', N'BG10000106', N'KH1000003', 0, N'MV23456895')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000107', N'TPKVCB1', N'Mì 3 miền tôm chua cay', N'Gói', CAST(N'2020-09-09' AS Date), CAST(N'2022-09-09' AS Date), N'TPKVCB1.png', N'BG10000107', N'KH1000003', 0, N'MV23456896')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000108', N'TPKVCB1', N'Mì 3 miền gà sợi phở', N'Gói', CAST(N'2020-08-18' AS Date), CAST(N'2021-01-19' AS Date), N'TPKVCB1.png', N'BG10000108', N'KH1000003', 0, N'MV23456897')
INSERT [dbo].[SanPham] ([IDSanPham], [IDNhomSanPham], [TenSanPham], [IDDonViTinh], [NgaySanXuat], [HanSuDung], [UrlImage], [IDBangGia], [IDKhachHang], [TinhTrang], [SKU]) VALUES (N'SP10000109', N'TPKVCB1', N'Mì Waxada hương vị mì xá xíu ', N'Gói', CAST(N'2019-01-23' AS Date), CAST(N'2021-01-06' AS Date), N'TPKVCB1.png', N'BG10000109', N'KH1000003', 0, N'MV23456898')
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (11, N'admin', N'admin', N'BP100001', N'NV100001')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (12, N'nhanvien', N'nhanvien', N'BP100003', N'NV100003')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (13, N'thukho1', N'123', N'BP100002', N'NV100002')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (14, N'loi', N'123', N'BP100003', N'NV100010')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (15, N'thukho2', N'123', N'BP100002', N'NV100011')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (16, N'123', N'1', N'BP100003', N'NV100004')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (17, N'333', N'222', N'BP100002', N'NV100005')
INSERT [dbo].[TaiKhoan] ([ID], [TaiKhoan], [MatKhau], [IDBoPhan], [IDNhanVien]) VALUES (1016, N'vantien', N'123', N'BP100002', N'NV100006')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1000', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1001', N'TTTATM01', N'TPBank', N'KH1000021', N'KH1000021', N'KH1000021', N'NgÃ¢n HÃ ng TiÃªn Phong')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1002', N'TTTATM01', N'Sacombank', N'KH1000028', N'KH1000028', N'KH1000028', N'Ngân Hàng Sài Gòn Thương Tín')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1003', N'TTTATM01', N'ABBANK', N'KH1000031', N'KH1000031', N'KH1000031', N'Ngân Hàng An Bình')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1004', N'TTTATM01', N'Agribank', N'HHMP01.png', N'HHMP01.png', N'HHMP01.png', N'Ngân Hàng NN&PT Nông thôn Việt Nam')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1005', N'TTTATM01', N'BAOVIETBank', N'0193736', N'0193736', N'0193736', N'Ngân Hàng Bảo Việt')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1006', N'TTTATM01', N'LienVietPostBank', N'Coca Cola 330ml', N'Coca Cola 330ml', N'Coca Cola 330ml', N'Ngân Hàng Bưu điện Liên Việt')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1007', N'TTTATM01', N'Vietcombank', N'Bò viên C?u Tre 200g', N'Bò viên C?u Tre 200g', N'Bò viên Cầu Tre 200g', N'Ngân Hàng Ngoại Thương Việt Nam')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1008', N'TTTATM01', N'Eximbank', N'MV23456875', N'MV23456875', N'MV23456875', N'Ngân Hàng Xuất Nhập Khẩu')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1009', N'TTTATM01', N'DongABank', N'KH1000040', N'KH1000040', N'KH1000040', N'Ngân Hàng Đông Á')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1010', N'TTTATM01', N'VietABank', N'KH1000043', N'KH1000043', N'KH1000043', N'Ngân Hàng Việt Á')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1011', N'TTTATM01', N'DongABank', N'KH1000044', N'KH1000044', N'KH1000044', N'Ngân Hàng Đông Á')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1012', N'TTTATM01', N'BAOVIETBank', N'KH1000045', N'KH1000045', N'KH1000045', N'Ngân Hàng Bảo Việt')
INSERT [dbo].[ThongTinThanhToan] ([IDThongTin], [IDPTThanhToan], [LoaiThe], [SoTaiKhoan], [TenTaiKhoan], [ChiNhanh], [TenNganHang]) VALUES (N'TTTT1013', N'TTTATM01', N'LienVietPostBank', N'KH1000048', N'KH1000048', N'KH1000048', N'Ngân Hàng Bưu điện Liên Việt')
GO
SET IDENTITY_INSERT [dbo].[TichDiem] ON 

INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (165, N'KH1000008', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (166, N'KH1000009', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (167, N'KH1000010', 10, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (168, N'KH1000011', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (169, N'KH1000012', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (170, N'KH1000013', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (171, N'KH1000014', 3, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (172, N'KH1000015', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (173, N'KH1000016', 4, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (174, N'KH1000017', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (175, N'KH1000018', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (176, N'KH1000019', 4, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (177, N'KH1000020', 3, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (178, N'KH1000021', 10, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (179, N'KH1000022', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (180, N'KH1000023', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (181, N'KH1000024', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (182, N'KH1000025', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (183, N'KH1000026', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (184, N'KH1000027', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (185, N'KH1000028', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (186, N'KH1000029', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (187, N'KH1000030', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (188, N'KH1000031', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (189, N'KH1000032', 0, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (190, N'KH1000033', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (191, N'KH1000034', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (192, N'KH1000035', 17, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (193, N'KH1000036', 12, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (194, N'KH1000037', 7, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (195, N'KH1000038', 4, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (196, N'KH1000039', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (197, N'KH1000040', 5, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (198, N'KH1000041', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (199, N'KH1000042', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (200, N'KH1000043', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (201, N'KH1000044', 1, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (202, N'KH1000045', 11, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (1202, N'KH1000046', 4, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (1203, N'KH1000047', 2, 0, 100000, 1000)
INSERT [dbo].[TichDiem] ([ID], [IDKhachHang], [SoDiem], [IsVip], [QuyDoiDiem], [TienQuyDoi]) VALUES (1204, N'KH1000048', 1, 0, 100000, 1000)
SET IDENTITY_INSERT [dbo].[TichDiem] OFF
GO
ALTER TABLE [dbo].[DongHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_DongHoaDon_DonViTinh] FOREIGN KEY([IDDonViTinh])
REFERENCES [dbo].[DonViTinh] ([IDDonViTinh])
GO
ALTER TABLE [dbo].[DongHoaDon] CHECK CONSTRAINT [FK_DongHoaDon_DonViTinh]
GO
ALTER TABLE [dbo].[DongHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_DongHoaDon_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[DongHoaDon] CHECK CONSTRAINT [FK_DongHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[DongHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_DongHoaDon_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[DongHoaDon] CHECK CONSTRAINT [FK_DongHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuKho] FOREIGN KEY([IDPhieu])
REFERENCES [dbo].[PhieuKho] ([IDPhieu])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuKho]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ThongTinThanhToan] FOREIGN KEY([IDThongTin])
REFERENCES [dbo].[ThongTinThanhToan] ([IDThongTin])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_ThongTinThanhToan]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NhomKhachHang] FOREIGN KEY([IDNhomKH])
REFERENCES [dbo].[NhomKhachHang] ([IDNhomKH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_NhomKhachHang]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_KhuVucKho] FOREIGN KEY([IDKVKho])
REFERENCES [dbo].[KhuVucKho] ([IDKVKho])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_KhuVucKho]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_SanPham]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BoPhan] FOREIGN KEY([IDBoPhan])
REFERENCES [dbo].[BoPhan] ([IDBoPhan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BoPhan]
GO
ALTER TABLE [dbo].[NhomSanPham]  WITH CHECK ADD  CONSTRAINT [FK_NhomSanPham_KhuVuc] FOREIGN KEY([IDKhuVuc])
REFERENCES [dbo].[KhuVuc] ([IDKhuVuc])
GO
ALTER TABLE [dbo].[NhomSanPham] CHECK CONSTRAINT [FK_NhomSanPham_KhuVuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_BangGia1] FOREIGN KEY([IDBangGia])
REFERENCES [dbo].[BangGia] ([IDBangGia])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_BangGia1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonViTinh] FOREIGN KEY([IDDonViTinh])
REFERENCES [dbo].[DonViTinh] ([IDDonViTinh])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonViTinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomSanPham] FOREIGN KEY([IDNhomSanPham])
REFERENCES [dbo].[NhomSanPham] ([IDNhomSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomSanPham]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_BoPhan] FOREIGN KEY([IDBoPhan])
REFERENCES [dbo].[BoPhan] ([IDBoPhan])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_BoPhan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[ThongTinThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinThanhToan_PhuongThucThanhToan] FOREIGN KEY([IDPTThanhToan])
REFERENCES [dbo].[PhuongThucThanhToan] ([IDPTThanhToan])
GO
ALTER TABLE [dbo].[ThongTinThanhToan] CHECK CONSTRAINT [FK_ThongTinThanhToan_PhuongThucThanhToan]
GO
ALTER TABLE [dbo].[TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_TichDiem_KhachHang1] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[TichDiem] CHECK CONSTRAINT [FK_TichDiem_KhachHang1]
GO
