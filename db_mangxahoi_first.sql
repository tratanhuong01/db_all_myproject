USE [MXH_22]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDUser] [varchar](20) NOT NULL,
	[Ho] [nvarchar](100) NULL,
	[Ten] [nvarchar](100) NULL,
	[SoDienThoai] [char](10) NULL,
	[Email] [varchar](100) NULL,
	[PassWords] [varchar](30) NULL,
	[Education] [nvarchar](max) NULL,
	[Work] [nvarchar](max) NULL,
	[AddressLocal] [nvarchar](max) NULL,
	[Gender] [nvarchar](5) NULL,
	[DateOfBirth] [date] NULL,
	[Follow] [int] NULL,
	[LinkImageAvatar] [nvarchar](max) NULL,
	[TimeCreateAccount] [date] NULL,
	[States] [nvarchar](100) NULL,
	[LinkImageBia] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[NULL Users]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NULL Users] AS
SELECT IDUser, Ho
FROM Users
WHERE IDUser = NULL
GO
/****** Object:  View [dbo].[NAM Users]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NAM Users] AS
SELECT IDUser, Ho
FROM Users
GO
/****** Object:  View [dbo].[1000000001 Users]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[1000000001 Users] AS
SELECT Gender, Ho
FROM Users
WHERE Gender = 'Nam'
GO
/****** Object:  View [dbo].[IDUSer]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[IDUSer] AS
SELECT Gender, Ho
FROM Users
GO
/****** Object:  View [dbo].[IDUSers]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[IDUSers] AS
SELECT Gender, Ho
FROM Users
GO
/****** Object:  View [dbo].[MyView]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MyView] AS
SELECT AddressLocal,Email
FROM Users
WHERE Gender = 'Nam'
GO
/****** Object:  View [dbo].[MyView1]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MyView1] AS
SELECT AddressLocal,Email
FROM Users
WHERE Gender = 'Nam'
GO
/****** Object:  View [dbo].[VIEW_DEMO]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_DEMO] AS
SELECT AddressLocal,Email
FROM Users
WHERE Gender = N'Nữ'
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[IDAds] [varchar](20) NOT NULL,
	[ImageAds] [nvarchar](max) NULL,
	[NameAds] [nvarchar](100) NULL,
	[LinkWebAds] [nvarchar](max) NULL,
	[TimeCreated] [datetime] NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[IDAds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendWithUser]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendWithUser](
	[IDUser] [varchar](20) NULL,
	[IDFriend] [varchar](20) NULL,
	[IDRequest] [varchar](20) NULL,
	[IDBlock] [varchar](20) NULL,
	[States] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagesUser]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesUser](
	[IDImage] [varchar](20) NOT NULL,
	[IDUser] [varchar](20) NULL,
	[LinkImage] [varchar](max) NULL,
	[TimeAdded] [datetime] NULL,
	[IsAvatar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDImage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassWordChanged]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassWordChanged](
	[IDUser] [varchar](20) NULL,
	[PassOld] [varchar](30) NULL,
	[PassNew] [varchar](30) NULL,
	[TimeChange] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POST]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POST](
	[IDPOST] [varchar](20) NOT NULL,
	[IDUser] [varchar](20) NULL,
	[Content] [nvarchar](max) NULL,
	[Feel] [nvarchar](max) NULL,
	[IDVideo] [varchar](20) NULL,
	[IDImage] [varchar](20) NULL,
	[Mode] [int] NULL,
	[Locals] [nvarchar](max) NULL,
	[IDPersonShared] [varchar](20) NULL,
	[IDLove] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPOST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestFriend]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestFriend](
	[IDUser] [varchar](20) NULL,
	[IDFriendRequest] [varchar](20) NULL,
	[States] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Story]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story](
	[IDStory] [varchar](20) NOT NULL,
	[IDUser] [varchar](20) NULL,
	[IDView] [varchar](20) NULL,
	[IDImageStory] [varchar](20) NULL,
	[IDVideoStory] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDStory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoUser]    Script Date: 08/12/2020 4:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoUser](
	[IDVideo] [varchar](20) NOT NULL,
	[IDUser] [varchar](20) NULL,
	[LinkVideo] [varchar](max) NULL,
	[TimeAdded] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Ads] ([IDAds], [ImageAds], [NameAds], [LinkWebAds], [TimeCreated]) VALUES (N'ADS0001', N'\img\Ads\ADS0001.jpg', N'Tiki', N'tiki.vn', CAST(N'2020-09-18T20:40:00.000' AS DateTime))
INSERT [dbo].[Ads] ([IDAds], [ImageAds], [NameAds], [LinkWebAds], [TimeCreated]) VALUES (N'ADS0002', N'\img\Ads\ADS0002.jpg', N'Lazada', N'lazada.vn', CAST(N'2020-09-18T20:41:00.000' AS DateTime))
GO
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000001', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000003', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000003', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000004', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000004', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', NULL, N'1000000007', NULL, 1)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000005', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000005', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000007', NULL, N'1000000002', NULL, 2)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000012', N'1000000013', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000013', N'1000000012', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000012', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000012', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', N'1000000004', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000004', N'1000000001', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', N'1000000003', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000003', N'1000000001', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', N'1000000005', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000005', N'1000000001', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', NULL, N'1000000006', NULL, 1)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000006', NULL, N'1000000001', NULL, 2)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000001', NULL, N'1000000007', NULL, 1)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000007', NULL, N'1000000001', NULL, 2)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000018', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000018', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', N'1000000015', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000015', N'1000000002', NULL, NULL, 3)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000002', NULL, N'1000000017', NULL, 1)
INSERT [dbo].[FriendWithUser] ([IDUser], [IDFriend], [IDRequest], [IDBlock], [States]) VALUES (N'1000000017', NULL, N'1000000002', NULL, 2)
GO
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000000', NULL, NULL, NULL, NULL)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000001', N'1000000002', N'\img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-17T12:05:09.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000002', N'1000000002', N'\img\avatarImage\10000000021000000002.jpg', CAST(N'2020-09-17T12:06:05.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000003', N'1000000002', N'\img\avatarImage\10000000021000000003.jpg', CAST(N'2020-09-17T12:09:05.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000004', N'1000000002', N'\img\avatarImage\10000000021000000004.jpg', CAST(N'2020-09-17T12:10:19.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000005', N'1000000002', N'\img\avatarImage\10000000021000000005.jpg', CAST(N'2020-09-17T12:10:29.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000006', N'1000000002', N'\img\avatarImage\10000000021000000006.jpg', CAST(N'2020-09-17T12:14:30.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000007', N'1000000002', N'\img\avatarImage\10000000021000000007.jpg', CAST(N'2020-09-17T12:14:50.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000008', N'1000000002', N'\img\avatarImage\10000000021000000008.jpg', CAST(N'2020-09-17T12:17:46.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000009', N'1000000002', N'\img\avatarImage\10000000021000000009.jpg', CAST(N'2020-09-17T12:20:51.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000010', N'1000000002', N'\img\avatarImage\10000000021000000010.jpg', CAST(N'2020-09-17T12:21:14.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000011', N'1000000002', N'\img\avatarImage\10000000021000000011.jpg', CAST(N'2020-09-17T12:23:22.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000012', N'1000000002', N'\img\avatarImage\10000000021000000012.jpg', CAST(N'2020-09-17T12:24:43.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000013', N'1000000002', N'\img\avatarImage\10000000021000000013.jpg', CAST(N'2020-09-17T12:25:09.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000014', N'1000000002', N'\img\avatarImage\10000000021000000014.jpg', CAST(N'2020-09-17T12:25:52.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000015', N'1000000002', N'\img\avatarImage\10000000021000000015.jpg', CAST(N'2020-09-17T12:26:38.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000016', N'1000000002', N'\img\avatarImage\10000000021000000016.jpg', CAST(N'2020-09-17T12:29:50.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000017', N'1000000002', N'\img\avatarImage\10000000021000000017.jpg', CAST(N'2020-09-17T12:31:58.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000018', N'1000000002', N'\img\avatarImage\10000000021000000018.jpg', CAST(N'2020-09-17T12:33:40.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000019', N'1000000002', N'\img\avatarImage\10000000021000000019.jpg', CAST(N'2020-09-17T12:39:10.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000020', N'1000000002', N'\img\imageBia\10000000021000000020.jpg', CAST(N'2020-09-17T12:51:57.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000021', N'1000000002', N'\img\imageBia\10000000021000000021.jpg', CAST(N'2020-09-17T12:54:24.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000022', N'1000000002', N'\img\avatarImage\10000000021000000022.jpg', CAST(N'2020-09-17T13:45:25.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000023', N'1000000002', N'\img\imageBia\10000000021000000023.jpg', CAST(N'2020-09-17T13:53:59.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000024', N'1000000011', N'\img\avatarImage\10000000111000000024.jpg', CAST(N'2020-09-17T14:22:26.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000025', N'1000000012', N'\img\avatarImage\10000000121000000025.jpg', CAST(N'2020-09-17T14:26:02.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000026', N'1000000012', N'\img\imageBia\10000000121000000026.jpg', CAST(N'2020-09-17T14:26:20.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000027', N'1000000012', N'\img\avatarImage\10000000121000000027.jpg', CAST(N'2020-09-17T14:48:42.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000028', N'1000000012', N'\img\avatarImage\10000000121000000028.jpg', CAST(N'2020-09-17T15:04:48.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000029', N'1000000012', N'\img\avatarImage\10000000121000000029.jpg', CAST(N'2020-09-17T15:05:00.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000030', N'1000000002', N'\img\imageBia\10000000021000000030.jpg', CAST(N'2020-09-17T18:03:19.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000031', N'1000000002', N'\img\avatarImage\10000000021000000031.jpg', CAST(N'2020-09-17T18:04:46.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000032', N'1000000002', N'\img\avatarImage\10000000021000000032.jpg', CAST(N'2020-09-17T18:07:07.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000033', N'1000000002', N'\img\imageBia\10000000021000000033.jpg', CAST(N'2020-09-17T18:08:15.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000034', N'1000000001', N'\img\avatarImage\10000000011000000034.jpg', CAST(N'2020-09-17T18:09:17.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000035', N'1000000001', N'\img\imageBia\10000000011000000035.jpg', CAST(N'2020-09-17T18:09:27.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000036', N'1000000003', N'\img\avatarImage\10000000031000000036.jpg', CAST(N'2020-09-17T18:09:54.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000037', N'1000000003', N'\img\imageBia\10000000031000000037.jpg', CAST(N'2020-09-17T18:10:05.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000038', N'1000000004', N'\img\avatarImage\10000000041000000038.jpg', CAST(N'2020-09-17T18:10:34.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000039', N'1000000004', N'\img\imageBia\10000000041000000039.jpg', CAST(N'2020-09-17T18:10:36.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000040', N'1000000004', N'\img\imageBia\10000000041000000040.jpg', CAST(N'2020-09-17T18:10:45.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000041', N'1000000005', N'\img\avatarImage\10000000051000000041.jpg', CAST(N'2020-09-17T20:06:45.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000042', N'1000000005', N'\img\imageBia\10000000051000000042.jpg', CAST(N'2020-09-17T20:06:55.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000043', N'1000000014', N'\img\avatarImage\10000000141000000043.jpg', CAST(N'2020-09-17T20:35:15.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000044', N'1000000014', N'\img\imageBia\10000000141000000044.jpg', CAST(N'2020-09-17T20:35:30.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000045', N'1000000002', N'\img\imageBia\10000000021000000045.jpg', CAST(N'2020-09-17T20:36:44.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000046', N'1000000015', N'\img\avatarImage\10000000151000000046.jpg', CAST(N'2020-09-17T20:40:49.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000047', N'1000000016', N'\img\avatarImage\10000000161000000047.jpg', CAST(N'2020-09-17T20:41:39.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000048', N'1000000016', N'\img\imageBia\10000000161000000048.jpg', CAST(N'2020-09-17T20:41:45.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000049', N'1000000017', N'\img\avatarImage\10000000171000000049.jpg', CAST(N'2020-09-17T20:42:30.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000050', N'1000000017', N'\img\imageBia\10000000171000000050.jpg', CAST(N'2020-09-17T20:42:36.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000051', N'1000000002', N'\img\imageBia\10000000021000000051.jpg', CAST(N'2020-09-17T20:43:06.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000052', N'1000000002', N'\img\imageBia\10000000021000000052.jpg', CAST(N'2020-09-17T20:43:11.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000053', N'1000000015', N'\img\avatarImage\10000000151000000053.jpg', CAST(N'2020-09-18T16:58:22.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000054', N'1000000002', N'\img\imageBia\10000000021000000054.jpg', CAST(N'2020-09-18T19:54:53.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000055', N'1000000002', N'\img\imageBia\10000000021000000055.jpg', CAST(N'2020-09-18T19:55:36.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000056', N'1000000002', N'\img\avatarImage\10000000021000000056.jpg', CAST(N'2020-09-18T20:31:28.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000057', N'1000000002', N'\img\avatarImage\10000000021000000057.jpg', CAST(N'2020-09-19T13:28:01.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000058', N'1000000002', N'\img\imageBia\10000000021000000058.jpg', CAST(N'2020-09-19T13:46:15.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000059', N'1000000015', N'\img\imageBia\10000000151000000059.jpg', CAST(N'2020-09-19T14:16:11.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000060', N'1000000018', N'\img\avatarImage\10000000181000000060.jpg', CAST(N'2020-09-19T14:18:44.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000061', N'1000000018', N'\img\imageBia\10000000181000000061.jpg', CAST(N'2020-09-19T14:18:58.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000062', N'1000000015', N'\img\avatarImage\10000000151000000062.jpg', CAST(N'2020-09-21T16:18:03.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000063', N'1000000015', N'\img\imageBia\10000000151000000063.jpg', CAST(N'2020-09-21T16:18:22.000' AS DateTime), 0)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000064', N'1000000015', N'\img\avatarImage\10000000151000000064.jpg', CAST(N'2020-09-21T16:18:36.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000065', N'1000000019', N'\img\avatarImage\10000000191000000065.jpg', CAST(N'2020-09-26T09:53:29.000' AS DateTime), 1)
INSERT [dbo].[ImagesUser] ([IDImage], [IDUser], [LinkImage], [TimeAdded], [IsAvatar]) VALUES (N'1000000066', N'1000000019', N'\img\imageBia\10000000191000000066.jpg', CAST(N'2020-09-26T09:54:35.000' AS DateTime), 0)
GO
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000001', N'1000000002', N'hehe', NULL, NULL, N'1000000001', NULL, NULL, NULL, N'1000000001')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000002', N'1000000002', N'kkkk', NULL, NULL, N'1000000002', NULL, NULL, NULL, N'1000000002')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000003', N'1000000002', N'kkk', NULL, NULL, N'1000000003', NULL, NULL, NULL, N'1000000003')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000004', N'1000000002', N'chan vay', NULL, NULL, N'1000000004', NULL, NULL, NULL, N'1000000004')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000005', N'1000000002', N'chan vay', NULL, NULL, N'1000000005', NULL, NULL, NULL, N'1000000005')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000006', N'1000000002', N'', NULL, NULL, N'1000000006', NULL, NULL, NULL, N'1000000006')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000007', N'1000000002', N'', NULL, NULL, N'1000000007', NULL, NULL, NULL, N'1000000007')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000008', N'1000000002', N'', NULL, NULL, N'1000000008', NULL, NULL, NULL, N'1000000008')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000009', N'1000000002', N'', NULL, NULL, N'1000000009', NULL, NULL, NULL, N'1000000009')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000010', N'1000000002', N'', NULL, NULL, N'1000000010', NULL, NULL, NULL, N'1000000010')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000011', N'1000000002', N'', NULL, NULL, N'1000000011', NULL, NULL, NULL, N'1000000011')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000012', N'1000000002', N'', NULL, NULL, N'1000000012', NULL, NULL, NULL, N'1000000012')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000013', N'1000000002', N'', NULL, NULL, N'1000000013', NULL, NULL, NULL, N'1000000013')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000014', N'1000000002', N'', NULL, NULL, N'1000000014', NULL, NULL, NULL, N'1000000014')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000015', N'1000000002', N'', NULL, NULL, N'1000000015', NULL, NULL, NULL, N'1000000015')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000016', N'1000000002', N'', NULL, NULL, N'1000000016', NULL, NULL, NULL, N'1000000016')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000017', N'1000000002', N'', NULL, NULL, N'1000000017', NULL, NULL, NULL, N'1000000017')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000018', N'1000000002', N'', NULL, NULL, N'1000000018', NULL, NULL, NULL, N'1000000018')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000019', N'1000000002', N'admin', NULL, NULL, N'1000000019', NULL, NULL, NULL, N'1000000019')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000020', N'1000000002', NULL, NULL, NULL, N'1000000020', NULL, NULL, NULL, N'1000000020')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000021', N'1000000002', NULL, NULL, NULL, N'1000000021', NULL, NULL, NULL, N'1000000021')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000022', N'1000000002', N'chÃ o má»i ngÆ°á»i', NULL, NULL, N'1000000022', NULL, NULL, NULL, N'1000000022')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000023', N'1000000002', NULL, NULL, NULL, N'1000000023', NULL, NULL, NULL, N'1000000023')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000024', N'1000000011', N'', NULL, NULL, N'1000000024', NULL, NULL, NULL, N'1000000024')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000025', N'1000000012', N'admin', NULL, NULL, N'1000000025', NULL, NULL, NULL, N'1000000025')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000026', N'1000000012', NULL, NULL, NULL, N'1000000026', NULL, NULL, NULL, N'1000000026')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000027', N'1000000012', N'', NULL, NULL, N'1000000027', NULL, NULL, NULL, N'1000000027')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000028', N'1000000012', N'', NULL, NULL, N'1000000028', NULL, NULL, NULL, N'1000000028')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000029', N'1000000012', N'', NULL, NULL, N'1000000029', NULL, NULL, NULL, N'1000000029')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000030', N'1000000002', NULL, NULL, NULL, N'1000000030', NULL, NULL, NULL, N'1000000030')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000031', N'1000000002', N'', NULL, NULL, N'1000000031', NULL, NULL, NULL, N'1000000031')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000032', N'1000000002', N'', NULL, NULL, N'1000000032', NULL, NULL, NULL, N'1000000032')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000033', N'1000000002', NULL, NULL, NULL, N'1000000033', NULL, NULL, NULL, N'1000000033')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000034', N'1000000001', N'', NULL, NULL, N'1000000034', NULL, NULL, NULL, N'1000000034')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000035', N'1000000001', NULL, NULL, NULL, N'1000000035', NULL, NULL, NULL, N'1000000035')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000036', N'1000000003', N'', NULL, NULL, N'1000000036', NULL, NULL, NULL, N'1000000036')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000037', N'1000000003', NULL, NULL, NULL, N'1000000037', NULL, NULL, NULL, N'1000000037')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000038', N'1000000004', N'', NULL, NULL, N'1000000038', NULL, NULL, NULL, N'1000000038')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000039', N'1000000004', NULL, NULL, NULL, N'1000000039', NULL, NULL, NULL, N'1000000039')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000040', N'1000000004', NULL, NULL, NULL, N'1000000040', NULL, NULL, NULL, N'1000000040')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000041', N'1000000005', N'', NULL, NULL, N'1000000041', NULL, NULL, NULL, N'1000000041')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000042', N'1000000005', NULL, NULL, NULL, N'1000000042', NULL, NULL, NULL, N'1000000042')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000043', N'1000000014', N'', NULL, NULL, N'1000000043', NULL, NULL, NULL, N'1000000043')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000044', N'1000000014', NULL, NULL, NULL, N'1000000044', NULL, NULL, NULL, N'1000000044')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000045', N'1000000002', NULL, NULL, NULL, N'1000000045', NULL, NULL, NULL, N'1000000045')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000046', N'1000000015', N'', NULL, NULL, N'1000000046', NULL, NULL, NULL, N'1000000046')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000047', N'1000000016', N'', NULL, NULL, N'1000000047', NULL, NULL, NULL, N'1000000047')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000048', N'1000000016', NULL, NULL, NULL, N'1000000048', NULL, NULL, NULL, N'1000000048')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000049', N'1000000017', N'', NULL, NULL, N'1000000049', NULL, NULL, NULL, N'1000000049')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000050', N'1000000017', NULL, NULL, NULL, N'1000000050', NULL, NULL, NULL, N'1000000050')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000051', N'1000000002', NULL, NULL, NULL, N'1000000051', NULL, NULL, NULL, N'1000000051')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000052', N'1000000002', NULL, NULL, NULL, N'1000000052', NULL, NULL, NULL, N'1000000052')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000053', N'1000000015', N'', NULL, NULL, N'1000000053', NULL, NULL, NULL, N'1000000053')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000054', N'1000000002', NULL, NULL, NULL, N'1000000054', NULL, NULL, NULL, N'1000000054')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000055', N'1000000002', NULL, NULL, NULL, N'1000000055', NULL, NULL, NULL, N'1000000055')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000056', N'1000000002', N'', NULL, NULL, N'1000000056', NULL, NULL, NULL, N'1000000056')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000057', N'1000000002', N'', NULL, NULL, N'1000000057', NULL, NULL, NULL, N'1000000057')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000058', N'1000000002', NULL, NULL, NULL, N'1000000058', NULL, NULL, NULL, N'1000000058')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000059', N'1000000015', NULL, NULL, NULL, N'1000000059', NULL, NULL, NULL, N'1000000059')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000060', N'1000000018', N'hello', NULL, NULL, N'1000000060', NULL, NULL, NULL, N'1000000060')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000061', N'1000000018', NULL, NULL, NULL, N'1000000061', NULL, NULL, NULL, N'1000000061')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000062', N'1000000015', N'', NULL, NULL, N'1000000062', NULL, NULL, NULL, N'1000000062')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000063', N'1000000015', NULL, NULL, NULL, N'1000000063', NULL, NULL, NULL, N'1000000063')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000064', N'1000000015', N'', NULL, NULL, N'1000000064', NULL, NULL, NULL, N'1000000064')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000065', N'1000000019', N'', NULL, NULL, N'1000000065', NULL, NULL, NULL, N'1000000065')
INSERT [dbo].[POST] ([IDPOST], [IDUser], [Content], [Feel], [IDVideo], [IDImage], [Mode], [Locals], [IDPersonShared], [IDLove]) VALUES (N'1000000066', N'1000000019', NULL, NULL, NULL, N'1000000066', NULL, NULL, NULL, N'1000000066')
GO
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000000', N'Admin', NULL, NULL, N'ADMIN', N'ADMIN', NULL, NULL, NULL, NULL, NULL, NULL, N'img\avatarImage\10000000021000000001.jpg', NULL, NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000001', N'Kim', N'Nana', N'0987365412', N'', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1922-12-19' AS Date), NULL, N'\img\avatarImage\10000000011000000034.jpg', CAST(N'2001-04-13' AS Date), NULL, N'\img\imageBia\10000000011000000035.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000002', N'Trà', N'Hưởng', N'          ', N'tratanhuong01@gmail.com', N'huongtra2001', N'Trường Cao Đăng Công Nghệ Thông Tin - Đại Học Đà Nẵng', NULL, N'Quang Nam , Quang Nam - Da Nang , Viet Nam', N'Nam', CAST(N'1936-02-16' AS Date), NULL, N'\img\avatarImage\10000000021000000057.jpg', CAST(N'2020-09-13' AS Date), N'Đã Kết Hôn', N'\img\imageBia\10000000021000000058.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000003', N'Hoàng', N'Anh', NULL, N'hoanganhblog2k@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'1936-03-19' AS Date), NULL, N'\img\avatarImage\10000000031000000036.jpg', CAST(N'2020-09-13' AS Date), N'Kết Hôn', N'\img\imageBia\10000000031000000037.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000004', N'Như', N'Khánh', NULL, N'nhukhanh111@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'1935-02-28' AS Date), NULL, N'\img\avatarImage\10000000041000000038.jpg', CAST(N'2020-09-13' AS Date), NULL, N'\img\imageBia\10000000041000000040.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000005', N'Diễm', N'Xưa', NULL, N'xuaroidiemoi@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'1936-03-20' AS Date), NULL, N'\img\avatarImage\10000000051000000041.jpg', CAST(N'2020-09-13' AS Date), NULL, N'\img\imageBia\10000000051000000042.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000006', N'Phan', N'Thịnh', NULL, N'pnthinh19i@cit.udn.vn', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'2001-01-01' AS Date), NULL, N'img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-14' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000007', N'Lê', N'Dũng', NULL, N'levandung@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1933-03-15' AS Date), NULL, N'img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-14' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000008', N'Alex', N'Nam', NULL, N'doyouunder123@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1936-04-17' AS Date), NULL, N'img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-14' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000009', N'Nguyễn', N'Nhàn', NULL, N'nguyennhan1111@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'1934-04-18' AS Date), NULL, N'img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-15' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000010', N'Thắm Thân ', N'Thiện', NULL, N'thamthanthien2k1@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1932-04-18' AS Date), NULL, N'img\avatarImage\10000000021000000001.jpg', CAST(N'2020-09-15' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000011', N'Chu', N'Hoài', NULL, N'hsjdhsahdjhasj@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1932-03-18' AS Date), NULL, N'\img\avatarImage\10000000111000000024.jpg', CAST(N'2020-09-17' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000012', N'Dương Sơn ', N'Bá', NULL, N'duongsonba01@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'2001-04-18' AS Date), NULL, N'\img\avatarImage\10000000121000000029.jpg', CAST(N'2020-09-17' AS Date), NULL, N'\img\imageBia\10000000121000000026.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000013', N'Nam', N'Nhân', NULL, N'namnhan11111@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'1936-03-20' AS Date), NULL, N'https://i.imgur.com/SPRzy63.png', CAST(N'2020-09-17' AS Date), NULL, NULL)
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000014', N'Hoài', N'Huỳnh', NULL, N'hoaihuynh11111@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nữ', CAST(N'2001-03-20' AS Date), NULL, N'\img\avatarImage\10000000141000000043.jpg', CAST(N'2020-09-17' AS Date), NULL, N'\img\imageBia\10000000141000000044.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000015', N'Hiếu', N'Nguyễn', NULL, N'nguyenvanhieu@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1936-02-19' AS Date), NULL, N'\img\avatarImage\10000000151000000064.jpg', CAST(N'2020-09-17' AS Date), NULL, N'\img\imageBia\10000000151000000063.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000016', N'Canh', N'Nguyen', NULL, N'phamnguyenvietcanh@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1939-02-19' AS Date), NULL, N'\img\avatarImage\10000000161000000047.jpg', CAST(N'2020-09-17' AS Date), NULL, N'\img\imageBia\10000000161000000048.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000017', N'Anh', N'Hoang', NULL, N'hoangvananh@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1936-03-22' AS Date), NULL, N'\img\avatarImage\10000000171000000049.jpg', CAST(N'2020-09-17' AS Date), NULL, N'\img\imageBia\10000000171000000050.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000018', N'Hoàng', N'Hùng', NULL, N'hoanghung123@gmail.com', N'huongtra2001', NULL, NULL, NULL, N'Nam', CAST(N'1934-04-22' AS Date), NULL, N'\img\avatarImage\10000000181000000060.jpg', CAST(N'2020-09-19' AS Date), NULL, N'\img\imageBia\10000000181000000061.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000019', N'Nguyễn', N'Hiếu', N'0901935740', NULL, N'hieudeptrai123', NULL, NULL, NULL, NULL, CAST(N'2001-04-02' AS Date), NULL, N'\img\avatarImage\10000000191000000065.jpg', CAST(N'2020-09-26' AS Date), NULL, N'\img\imageBia\10000000191000000066.jpg')
INSERT [dbo].[Users] ([IDUser], [Ho], [Ten], [SoDienThoai], [Email], [PassWords], [Education], [Work], [AddressLocal], [Gender], [DateOfBirth], [Follow], [LinkImageAvatar], [TimeCreateAccount], [States], [LinkImageBia]) VALUES (N'1000000020', N'Trà', N'Tấn Hưởng', N'0337463732', NULL, N'54211430', NULL, NULL, NULL, N'Nam', CAST(N'1937-06-03' AS Date), NULL, N'https://i.imgur.com/SPRzy63.png', CAST(N'2020-10-14' AS Date), NULL, NULL)
GO
ALTER TABLE [dbo].[FriendWithUser]  WITH CHECK ADD  CONSTRAINT [FK_FriendWithUser_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[FriendWithUser] CHECK CONSTRAINT [FK_FriendWithUser_Users]
GO
ALTER TABLE [dbo].[ImagesUser]  WITH CHECK ADD  CONSTRAINT [FK_ImagesUser_Users1] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ImagesUser] CHECK CONSTRAINT [FK_ImagesUser_Users1]
GO
ALTER TABLE [dbo].[PassWordChanged]  WITH CHECK ADD  CONSTRAINT [FK_PassWordChanged_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[PassWordChanged] CHECK CONSTRAINT [FK_PassWordChanged_Users]
GO
ALTER TABLE [dbo].[POST]  WITH CHECK ADD  CONSTRAINT [FK_POST_ImagesUser] FOREIGN KEY([IDVideo])
REFERENCES [dbo].[ImagesUser] ([IDImage])
GO
ALTER TABLE [dbo].[POST] CHECK CONSTRAINT [FK_POST_ImagesUser]
GO
ALTER TABLE [dbo].[POST]  WITH CHECK ADD  CONSTRAINT [FK_POST_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[POST] CHECK CONSTRAINT [FK_POST_Users]
GO
ALTER TABLE [dbo].[POST]  WITH CHECK ADD  CONSTRAINT [FK_POST_VideoUser] FOREIGN KEY([IDVideo])
REFERENCES [dbo].[VideoUser] ([IDVideo])
GO
ALTER TABLE [dbo].[POST] CHECK CONSTRAINT [FK_POST_VideoUser]
GO
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Users]
GO
ALTER TABLE [dbo].[VideoUser]  WITH CHECK ADD  CONSTRAINT [FK_VideoUser_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[VideoUser] CHECK CONSTRAINT [FK_VideoUser_Users]
GO
ALTER TABLE [dbo].[VideoUser]  WITH CHECK ADD  CONSTRAINT [FK_VideoUser_Users1] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[VideoUser] CHECK CONSTRAINT [FK_VideoUser_Users1]
GO
