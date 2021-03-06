USE [DiDongShop]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[IDCart] [int] IDENTITY(10,10) NOT NULL,
	[IDProduct] [varchar](10) NULL,
	[IDUsers] [varchar](10) NULL,
	[Amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorProduct]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProduct](
	[IDColor] [varchar](10) NOT NULL,
	[NameColor] [nvarchar](30) NULL,
	[CodeColor] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[IDGProduct] [varchar](10) NOT NULL,
	[NameGProduct] [nvarchar](100) NULL,
	[MoTa_1] [nvarchar](max) NULL,
	[MoTa_2] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [varchar](10) NOT NULL,
	[IDGProduct] [varchar](10) NULL,
	[IDColor] [varchar](10) NULL,
	[Memory] [varchar](10) NULL,
	[CostProduct] [int] NULL,
	[CostSale] [float] NULL,
	[ImageProduct] [varchar](max) NULL,
	[States] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[ID] [varchar](10) NOT NULL,
	[stt] [int] NULL,
	[ten] [nchar](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 31/01/2021 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDUser] [varchar](10) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Passwords] [varchar](50) NULL,
	[NumberPhone] [char](10) NULL,
	[AddressUser] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (20, N'SPDDS1', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (100, N'SPDDS15', N'DDSUS3', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (110, N'SPDDS2', N'DDSUS3', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (120, N'SPDDS7', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (130, N'SPDDS4', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (140, N'SPDDS11', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (150, N'SPDDS15', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (160, N'SPDDS11', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (170, N'SPDDS11', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (180, N'SPDDS10', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (190, N'SPDDS10', N'DDSUS4', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (200, N'SPDDS1', N'DDSUS5', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (210, N'SPDDS10', N'DDSUS5', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (220, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (230, N'SPDDS10', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (240, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (250, N'SPDDS7', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (260, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (270, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (280, N'SPDDS10', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (290, N'SPDDS9', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (300, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (310, N'SPDDS1', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (320, N'SPDDS0', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (400, N'SPDDS4', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (410, N'SPDDS6', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (420, N'SPDDS6', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (430, N'SPDDS8', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (440, N'SPDDS8', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (450, N'SPDDS12', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (460, N'SPDDS12', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (470, N'SPDDS0', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (480, N'SPDDS11', N'DDSUS7', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (490, N'SPDDS2', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (500, N'SPDDS13', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (510, N'SPDDS13', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (520, N'SPDDS13', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (530, N'SPDDS13', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (540, N'SPDDS13', N'DDSUS8', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (550, N'SPDDS7', N'DDSUS0', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (560, N'SPDDS0', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (570, N'SPDDS0', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (580, N'SPDDS0', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (590, N'SPDDS0', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (600, N'SPDDS0', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (610, N'SPDDS10', N'DDSUS9', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (620, N'SPDDS0', N'DDSUS10', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (630, N'SPDDS10', N'DDSUS10', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (640, N'SPDDS11', N'DDSUS10', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (650, N'SPDDS0', N'DDSUS10', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (660, N'SPDDS1', N'DDSUS11', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (670, N'SPDDS1', N'DDSUS11', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (680, N'SPDDS0', N'DDSUS12', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (690, N'SPDDS10', N'DDSUS12', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (700, N'SPDDS7', N'DDSUS12', 1)
INSERT [dbo].[Cart] ([IDCart], [IDProduct], [IDUsers], [Amount]) VALUES (710, N'SPDDS2', N'DDSUS12', 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'BAC', N'Màu Bạc', N'#C0C0C0')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'DEN', N'Màu Đen Nhám', N'#000000')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'DENBONG', N'Màu Đen Bóng', N'#000000')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'DO', N'Màu Đỏ', N'#FF0000')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'TIM', N'Màu Tím', N'#8224E3')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'TRANG', N'Màu Trắng', N'#FFFFFF')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'VANG', N'Màu Vàng', N'#FFD700')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'XAM', N'Màu Xám', N'#707070')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'XANHDUONG', N'Màu Xanh Dương', N'#0000FF')
INSERT [dbo].[ColorProduct] ([IDColor], [NameColor], [CodeColor]) VALUES (N'XANHLA', N'Màu Xanh Lá', N'#009933')
GO
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP0', N'Iphone 6', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP1', N'Iphone 6s', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP10', N'Iphone XS', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP11', N'Iphone XS MAX', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP12', N'Iphone 11', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP13', N'Iphone 11 PRO MAX', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP14', N'Iphone XR', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP15', N'Iphone 11 PRO', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP2', N'Iphone 6s Plus', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP3', N'Iphone 7', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP4', N'Iphone 7 Plus', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP5', N'Iphone 8', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP6', N'Iphone 8 Plus', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSIP9', N'Iphone X', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSXA0', N'Xiaomi Redmi 6', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSXA1', N'Xiaomi Redmi 7', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSXA2', N'Xiaomi Redmi Note 7', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSXA3', N'Xiaomi Redmi 8', NULL, NULL)
INSERT [dbo].[GroupProduct] ([IDGProduct], [NameGProduct], [MoTa_1], [MoTa_2]) VALUES (N'DDSXA4', N'Xiaomi Redmi Note 8', NULL, NULL)
GO
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS0', N'DDSIP9', N'DEN', N'64GB', 10590000, 3, N'https://didongthongminh.vn/upload_images/2019/12/iphoneX-space-gray.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS1', N'DDSIP9', N'TRANG', N'64GB', 10790000, 3, N'https://didongthongminh.vn/upload_images/2017/10/iphoneX-silver-1.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS10', N'DDSIP13', N'VANG', N'256GB', 25290000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-gold-min.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS11', N'DDSIP13', N'XANHLA', N'256GB', 25290000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-green-1.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS12', N'DDSIP13', N'XAM', N'256GB', 24990000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-grey.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS13', N'DDSIP13', N'BAC', N'512GB', 26090000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-sliver-min.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS14', N'DDSIP13', N'VANG', N'512GB', 26090000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-gold-min.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS15', N'DDSIP13', N'XANHLA', N'512GB', 26090000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-green-1.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS16', N'DDSIP13', N'XAM', N'512GB', 25790000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-grey.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS17', NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS2', N'DDSIP9', N'DEN', N'256GB', 11690000, 3, N'https://didongthongminh.vn/upload_images/2019/12/iphoneX-space-gray.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS3', N'DDSIP9', N'TRANG', N'256GB', 11890000, 3, N'https://didongthongminh.vn/upload_images/2017/10/iphoneX-silver-1.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS4', N'DDSIP13', N'BAC', N'64GB', 23239000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-sliver-min.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS6', N'DDSIP13', N'VANG', N'64GB', 23239000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-gold-min.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS7', N'DDSIP13', N'XANHLA', N'64GB', 23239000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-green-1.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS8', N'DDSIP13', N'XAM', N'64GB', 22990000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-grey.png', 1)
INSERT [dbo].[Product] ([IDProduct], [IDGProduct], [IDColor], [Memory], [CostProduct], [CostSale], [ImageProduct], [States]) VALUES (N'SPDDS9', N'DDSIP13', N'BAC', N'256GB', 25290000, 1, N'https://didongthongminh.vn/upload_images/2020/01/iphone-11-pro-max-sliver-min.png', 1)
GO
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS0', N'Trà', N'Tấn Hưởng', N'tratanhuong01@gmail.com', N'huongtra2001', N'0354114665', N'Thăng Bình Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS1', N'Nguyễn', N'Tấn', N'huonggolike02@gmail.com', N'huong123', N'0826454321', N'Chu Lai Núi Thành')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS10', N'Hoàng', N'Thị Thám', N'hoangthitham01@gmail.com', N'hoangthitham01', N'0354114665', N'Thăng Bình Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS11', N'Trà', N'Hưởng', N'userAdmin@gmail.com', N'huong123', N'0982363533', N'Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS12', N'Trà', N'Hưởng', N'user111@gmail.com', N'123', N'0928326365', N'Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS2', N'Nguyễn', N'Văn Ngạn', N'nguyenvanngan@gmail.com', N'huong123', N'0987654321', N'Nghệ An Việt Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS3', N'Trần', N'Như Quỳnh', N'trannhuquynh2@gmail.com', N'huong123', N'0987655678', N'Hà Nội Việt Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS4', N'Thảo', N'Nguyễn', N'thaonguyen@gmail.com', N'huong123', N'0987654321', N'Thành Phố Hồ Chí Minh')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS5', N'Phạm', N'Cảnh', N'pnvcanh@gmail.com', N'12345678', N'0766681158', N'Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS6', N'le', N'ba', N'nNNN@gmai.com', N'12345678', N'0123456789', N'Da Nang')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS7', N'le', N'ba', N'nam@gmail.com', N'12345678', N'0123456789', N'Da Nang')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS8', N'Phan', N'Ngọc Thịnh', N'pnthinh.19i@cit.udn.vn', N'thinh123', N'0987654321', N'Hiệp Đức Quảng Nam')
INSERT [dbo].[Users] ([IDUser], [FirstName], [LastName], [Email], [Passwords], [NumberPhone], [AddressUser]) VALUES (N'DDSUS9', N'Kim', N'Hằng', N'doandu@gmail.com', N'1234567', N'0937364354', N'Quảng Nam')
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ColorProduct] FOREIGN KEY([IDColor])
REFERENCES [dbo].[ColorProduct] ([IDColor])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ColorProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupProduct] FOREIGN KEY([IDGProduct])
REFERENCES [dbo].[GroupProduct] ([IDGProduct])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupProduct]
GO
