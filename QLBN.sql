USE [master]
GO
/****** Object:  Database [QLBN]    Script Date: 10/9/2021 3:47:21 PM ******/
CREATE DATABASE [QLBN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBN.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBN_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBN] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBN] SET  MULTI_USER 
GO
ALTER DATABASE [QLBN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBN', N'ON'
GO
USE [QLBN]
GO
/****** Object:  Table [dbo].[BENHAN]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENHAN](
	[IDBA] [int] IDENTITY(1,1) NOT NULL,
	[TENBENH] [nvarchar](100) NOT NULL,
	[NGAYLAP] [datetime] NOT NULL,
	[IDBN] [int] NOT NULL,
 CONSTRAINT [PK_BENHAN] PRIMARY KEY CLUSTERED 
(
	[IDBA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BENHNHAN]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENHNHAN](
	[IDBN] [int] IDENTITY(1,1) NOT NULL,
	[HO] [nvarchar](30) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[GIOITINH] [nvarchar](3) NOT NULL,
	[NGAYSINH] [datetime] NOT NULL,
	[DIACHI] [nvarchar](50) NOT NULL,
	[CMND] [nvarchar](15) NOT NULL,
	[BHYT] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_BENHNHAN] PRIMARY KEY CLUSTERED 
(
	[IDBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_DICHVU]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DICHVU](
	[IDBA] [int] NOT NULL,
	[MADV] [nvarchar](10) NOT NULL,
	[NGAYSUDUNG] [datetime] NOT NULL,
 CONSTRAINT [PK_CT_DICHVU] PRIMARY KEY CLUSTERED 
(
	[IDBA] ASC,
	[MADV] ASC,
	[NGAYSUDUNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_TOATHUOC]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_TOATHUOC](
	[IDTT] [int] NOT NULL,
	[MATHUOC] [nvarchar](10) NOT NULL,
	[SOLUONG] [int] NOT NULL,
 CONSTRAINT [PK_CT_TOATHUOC] PRIMARY KEY CLUSTERED 
(
	[IDTT] ASC,
	[MATHUOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[TENDANGNHAP] [int] NOT NULL,
	[MATKHAU] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DANGNHAP] PRIMARY KEY CLUSTERED 
(
	[TENDANGNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MADV] [nvarchar](10) NOT NULL,
	[TENDV] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIADICHVU]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIADICHVU](
	[MADV] [nvarchar](10) NOT NULL,
	[NGAY] [datetime] NOT NULL,
	[GIA] [int] NOT NULL,
 CONSTRAINT [PK_GIADICHVU] PRIMARY KEY CLUSTERED 
(
	[MADV] ASC,
	[NGAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAPHONG]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAPHONG](
	[MAPHONG] [nvarchar](10) NOT NULL,
	[NGAY] [datetime] NOT NULL,
	[GIA] [int] NOT NULL,
 CONSTRAINT [PK_GIAPHONG] PRIMARY KEY CLUSTERED 
(
	[MAPHONG] ASC,
	[NGAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIATHUOC]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIATHUOC](
	[MATHUOC] [nvarchar](10) NOT NULL,
	[NGAY] [datetime] NOT NULL,
	[GIA] [int] NOT NULL,
 CONSTRAINT [PK_GIATHUOC] PRIMARY KEY CLUSTERED 
(
	[MATHUOC] ASC,
	[NGAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIUONG]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIUONG](
	[IDGIUONG] [int] IDENTITY(1,1) NOT NULL,
	[TRANGTHAI] [nvarchar](20) NOT NULL,
	[MAPHONG] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GIUONG] PRIMARY KEY CLUSTERED 
(
	[IDGIUONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[IDHD] [int] IDENTITY(1,1) NOT NULL,
	[TIENDV] [int] NOT NULL,
	[TIENTHUOC] [int] NOT NULL,
	[TIENGIUONG] [int] NOT NULL,
	[TIENBHYT] [int] NOT NULL,
	[TONGTIEN] [int] NOT NULL,
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[IDHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHAMBANDAU]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHAMBANDAU](
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
	[NGAYKHAM] [datetime] NOT NULL,
	[KETQUA] [nvarchar](100) NOT NULL,
	[LOAI] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_KHAMBANDAU] PRIMARY KEY CLUSTERED 
(
	[IDNV] ASC,
	[IDBA] ASC,
	[NGAYKHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHAMDIEUTRI]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHAMDIEUTRI](
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
	[NGAYKHAM] [datetime] NOT NULL,
	[KETQUA] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KHAMDIEUTRI] PRIMARY KEY CLUSTERED 
(
	[IDNV] ASC,
	[IDBA] ASC,
	[NGAYKHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKHOA] [nvarchar](10) NOT NULL,
	[TENKHOA] [nvarchar](30) NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[IDNV] [int] IDENTITY(1,1) NOT NULL,
	[HO] [nvarchar](30) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[LOAI] [nvarchar](20) NOT NULL,
	[MAKHOA] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[IDNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NOITRU]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOITRU](
	[IDBA] [int] NOT NULL,
	[IDGIUONG] [int] NOT NULL,
	[NGAYDEN] [datetime] NOT NULL,
	[NGAYDI] [datetime] NOT NULL,
 CONSTRAINT [PK_NOITRU] PRIMARY KEY CLUSTERED 
(
	[IDBA] ASC,
	[IDGIUONG] ASC,
	[NGAYDEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAPVIEN]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPVIEN](
	[IDPNV] [int] IDENTITY(1,1) NOT NULL,
	[TENBENHDUDOAN] [nvarchar](100) NOT NULL,
	[NGAYLAP] [datetime] NOT NULL,
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
 CONSTRAINT [PK_PHIEUNHAPVIEN] PRIMARY KEY CLUSTERED 
(
	[IDPNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTAMUNG]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTAMUNG](
	[IDPTU] [int] IDENTITY(1,1) NOT NULL,
	[NGAYUNG] [datetime] NOT NULL,
	[SOTIEN] [int] NOT NULL,
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
 CONSTRAINT [PK_PHIEUTAMUNG] PRIMARY KEY CLUSTERED 
(
	[IDPTU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTRONVIEN]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTRONVIEN](
	[IDPTV] [int] IDENTITY(1,1) NOT NULL,
	[GHICHU] [nvarchar](100) NOT NULL,
	[IDNV] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
 CONSTRAINT [PK_PHIEUTRONVIEN] PRIMARY KEY CLUSTERED 
(
	[IDPTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MAPHONG] [nvarchar](10) NOT NULL,
	[MAKHOA] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MAPHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THUOC]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUOC](
	[MATHUOC] [nvarchar](10) NOT NULL,
	[TENTHUOC] [nvarchar](30) NOT NULL,
	[CACHDUNG] [nvarchar](100) NOT NULL,
	[THYL] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_THUOC] PRIMARY KEY CLUSTERED 
(
	[MATHUOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOATHUOC]    Script Date: 10/9/2021 3:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOATHUOC](
	[IDTT] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [datetime] NOT NULL,
	[DONGIA] [int] NOT NULL,
	[IDBA] [int] NOT NULL,
	[IDNV] [int] NOT NULL,
 CONSTRAINT [PK_TOATHUOC] PRIMARY KEY CLUSTERED 
(
	[IDTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BENHAN] ON 

INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (1, N'Viêm Mũi', CAST(N'2021-06-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (4, N'Sốt xuất huyết', CAST(N'2021-08-22 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (5, N'Hở van tim', CAST(N'2020-07-03 00:00:00.000' AS DateTime), 19)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (6, N'Ung Thư Gan', CAST(N'2021-04-02 00:00:00.000' AS DateTime), 20)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (8, N'Cảm', CAST(N'2021-05-05 00:00:00.000' AS DateTime), 21)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (9, N'Thoát vị đĩa đệm', CAST(N'2021-05-12 00:00:00.000' AS DateTime), 22)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (10, N'Viêm dạ dày', CAST(N'2020-05-04 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (11, N'Cao huyết áp', CAST(N'2021-02-25 00:00:00.000' AS DateTime), 25)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (12, N'Đục thủy tinh thể', CAST(N'2021-03-05 00:00:00.000' AS DateTime), 26)
INSERT [dbo].[BENHAN] ([IDBA], [TENBENH], [NGAYLAP], [IDBN]) VALUES (13, N'Viêm Amidam', CAST(N'2021-05-29 00:00:00.000' AS DateTime), 27)
SET IDENTITY_INSERT [dbo].[BENHAN] OFF
SET IDENTITY_INSERT [dbo].[BENHNHAN] ON 

INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (1, N'Nguyễn Văn', N'Dũng', N'Nam', CAST(N'1975-10-01 00:00:00.000' AS DateTime), N'TP HCM', N'356214789', N'6589455876')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (2, N'Nguyễn Văn', N'Tâm', N'Nam', CAST(N'1979-08-20 00:00:00.000' AS DateTime), N'TP HCM', N'157894651', N'3698569327')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (19, N'Lê Ngọc ', N'Thảo', N'Nữ', CAST(N'1995-08-08 00:00:00.000' AS DateTime), N'Bình Phước', N'145789658', N'2589852648')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (20, N'Trần Thị', N'Chi', N'Nữ', CAST(N'1985-07-09 00:00:00.000' AS DateTime), N'TP HCM', N'898659876', N'3325879941')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (21, N'Phạm Thanh', N'Tài', N'Nam', CAST(N'1999-03-12 00:00:00.000' AS DateTime), N'Long An', N'332587965', N'4879875621')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (22, N'Lê Thị ', N'Thanh', N'Nữ', CAST(N'1970-06-07 00:00:00.000' AS DateTime), N'Bà Rịa - Vũng Tàu', N'559876321', N'5896478154')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (24, N'Nguyễn Thị Ngọc', N'Diệu', N'Nữ', CAST(N'1980-01-05 00:00:00.000' AS DateTime), N'Tây Ninh', N'258968456', N'6674881774')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (25, N'Tạ Văn', N'Chung', N'Nam', CAST(N'1955-07-07 00:00:00.000' AS DateTime), N'Đắk Lắk', N'258621463', N'2326587456')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (26, N'Trần Văn', N'Cảnh', N'Nam', CAST(N'1999-12-23 00:00:00.000' AS DateTime), N'Hưng Yên', N'456213873', N'5547896899')
INSERT [dbo].[BENHNHAN] ([IDBN], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [CMND], [BHYT]) VALUES (27, N'Lê Văn', N'Nam', N'Nam', CAST(N'1960-05-06 00:00:00.000' AS DateTime), N'Bình Định', N'558749686', N'3369869332')
SET IDENTITY_INSERT [dbo].[BENHNHAN] OFF
INSERT [dbo].[DICHVU] ([MADV], [TENDV]) VALUES (N'1', N'Chăm sóc theo yêu cầu')
INSERT [dbo].[DICHVU] ([MADV], [TENDV]) VALUES (N'2', N'Vận chuyển người bệnh')
INSERT [dbo].[DICHVU] ([MADV], [TENDV]) VALUES (N'3', N'Giặt ủi')
INSERT [dbo].[DICHVU] ([MADV], [TENDV]) VALUES (N'4', N'Chuyển phát nhanh - Ra viện sớm')
INSERT [dbo].[DICHVU] ([MADV], [TENDV]) VALUES (N'5', N'Tư vấn sức khỏe')
SET IDENTITY_INSERT [dbo].[GIUONG] ON 

INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (1, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (4, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (5, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (6, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (7, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (8, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (9, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (10, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (11, N'trống', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (12, N'trống ', N'P001')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (14, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (15, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (16, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (17, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (18, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (19, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (20, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (21, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (22, N'trống', N'P012')
INSERT [dbo].[GIUONG] ([IDGIUONG], [TRANGTHAI], [MAPHONG]) VALUES (23, N'trống', N'P012')
SET IDENTITY_INSERT [dbo].[GIUONG] OFF
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'1', N'Cấp cứu')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'10', N'Vật lý trị liệu')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'2', N'Nhi')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'3', N'Hồi sức')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'4', N'Xét nghiệm')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'5', N'Phụ sản')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'6', N'Truyền nhiễm')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'7', N'Khám bệnh')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'8', N'Tim mạch')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'9', N'Y học cổ truyền')
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (1, N'Nguyễn Minh', N'Cường', N'bác sĩ', N'1')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (4, N'Lê Thị Thanh', N'Thảo', N'bác sĩ', N'3')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (6, N'Trần Thị ', N'Hoa', N'y tá', N'7')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (7, N'Trần Minh', N'Lộc', N'bác sĩ', N'9')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (8, N'Phạm Mỹ', N'Duyên', N'y tá', N'8')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (9, N'Phan Trung', N'Duy', N'bác sĩ', N'2')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (11, N'Cao Văn', N'Hải', N'bác sĩ', N'4')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (12, N'Đặng Yến', N'Thu', N'bác sĩ', N'5')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (13, N'Mai Ngọc', N'Hân', N'y tá', N'6')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (14, N'Đõ Thị Kiều', N'Trinh', N'y tá', N'3')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (16, N'Trần Thành', N'Đạt', N'bác sĩ', N'4')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (17, N'Nguyễn Hồng ', N'Phong', N'bác sĩ', N'5')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (18, N'Lâm Ngọc', N'Hoa', N'bác sĩ', N'1')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (19, N'Lê Ngọc', N'Yến', N'y tá', N'7')
INSERT [dbo].[NHANVIEN] ([IDNV], [HO], [TEN], [LOAI], [MAKHOA]) VALUES (20, N'Phạm Quỳnh', N'Như', N'y tá', N'9')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P001', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P002', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P003', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P004', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P005', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P006', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P007', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P008', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P009', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P010', N'1')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P011', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P012', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P013', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P014', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P015', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P016', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P017', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P018', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P019', N'2')
INSERT [dbo].[PHONG] ([MAPHONG], [MAKHOA]) VALUES (N'P020', N'2')
ALTER TABLE [dbo].[BENHAN]  WITH CHECK ADD  CONSTRAINT [FK_BENHNHAN_BENHAN] FOREIGN KEY([IDBN])
REFERENCES [dbo].[BENHNHAN] ([IDBN])
GO
ALTER TABLE [dbo].[BENHAN] CHECK CONSTRAINT [FK_BENHNHAN_BENHAN]
GO
ALTER TABLE [dbo].[CT_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_CT_DICHVU] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[CT_DICHVU] CHECK CONSTRAINT [FK_BENHAN_CT_DICHVU]
GO
ALTER TABLE [dbo].[CT_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_CT_DICHVU] FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
ALTER TABLE [dbo].[CT_DICHVU] CHECK CONSTRAINT [FK_DICHVU_CT_DICHVU]
GO
ALTER TABLE [dbo].[CT_TOATHUOC]  WITH CHECK ADD  CONSTRAINT [FK_THUOC_CT_TOATHUOC] FOREIGN KEY([MATHUOC])
REFERENCES [dbo].[THUOC] ([MATHUOC])
GO
ALTER TABLE [dbo].[CT_TOATHUOC] CHECK CONSTRAINT [FK_THUOC_CT_TOATHUOC]
GO
ALTER TABLE [dbo].[CT_TOATHUOC]  WITH CHECK ADD  CONSTRAINT [FK_TOATHUOC_CT_TOATHUOC] FOREIGN KEY([IDTT])
REFERENCES [dbo].[TOATHUOC] ([IDTT])
GO
ALTER TABLE [dbo].[CT_TOATHUOC] CHECK CONSTRAINT [FK_TOATHUOC_CT_TOATHUOC]
GO
ALTER TABLE [dbo].[DANGNHAP]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_DANGNHAP] FOREIGN KEY([TENDANGNHAP])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[DANGNHAP] CHECK CONSTRAINT [FK_NHANVIEN_DANGNHAP]
GO
ALTER TABLE [dbo].[GIADICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_GIADICHVU] FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
ALTER TABLE [dbo].[GIADICHVU] CHECK CONSTRAINT [FK_DICHVU_GIADICHVU]
GO
ALTER TABLE [dbo].[GIAPHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_GIAPHONG] FOREIGN KEY([MAPHONG])
REFERENCES [dbo].[PHONG] ([MAPHONG])
GO
ALTER TABLE [dbo].[GIAPHONG] CHECK CONSTRAINT [FK_PHONG_GIAPHONG]
GO
ALTER TABLE [dbo].[GIATHUOC]  WITH CHECK ADD  CONSTRAINT [FK_THUOC_GIATHUOC] FOREIGN KEY([MATHUOC])
REFERENCES [dbo].[THUOC] ([MATHUOC])
GO
ALTER TABLE [dbo].[GIATHUOC] CHECK CONSTRAINT [FK_THUOC_GIATHUOC]
GO
ALTER TABLE [dbo].[GIUONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_GIUONG] FOREIGN KEY([MAPHONG])
REFERENCES [dbo].[PHONG] ([MAPHONG])
GO
ALTER TABLE [dbo].[GIUONG] CHECK CONSTRAINT [FK_PHONG_GIUONG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_HOADON] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_BENHAN_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_HOADON] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_NHANVIEN_HOADON]
GO
ALTER TABLE [dbo].[KHAMBANDAU]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_KHAMBANDAU] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[KHAMBANDAU] CHECK CONSTRAINT [FK_BENHAN_KHAMBANDAU]
GO
ALTER TABLE [dbo].[KHAMBANDAU]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_KHAMBANDAU] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[KHAMBANDAU] CHECK CONSTRAINT [FK_NHANVIEN_KHAMBANDAU]
GO
ALTER TABLE [dbo].[KHAMDIEUTRI]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_KHAMDIEUTRI] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[KHAMDIEUTRI] CHECK CONSTRAINT [FK_BENHAN_KHAMDIEUTRI]
GO
ALTER TABLE [dbo].[KHAMDIEUTRI]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_KHAMDIEUTRI] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[KHAMDIEUTRI] CHECK CONSTRAINT [FK_NHANVIEN_KHAMDIEUTRI]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_NHANVIEN] FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_KHOA_NHANVIEN]
GO
ALTER TABLE [dbo].[NOITRU]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_NOITRU] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[NOITRU] CHECK CONSTRAINT [FK_BENHAN_NOITRU]
GO
ALTER TABLE [dbo].[NOITRU]  WITH CHECK ADD  CONSTRAINT [FK_GIUONG_NOITRU] FOREIGN KEY([IDGIUONG])
REFERENCES [dbo].[GIUONG] ([IDGIUONG])
GO
ALTER TABLE [dbo].[NOITRU] CHECK CONSTRAINT [FK_GIUONG_NOITRU]
GO
ALTER TABLE [dbo].[PHIEUNHAPVIEN]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_PHIEUNHAPVIEN] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[PHIEUNHAPVIEN] CHECK CONSTRAINT [FK_BENHAN_PHIEUNHAPVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAPVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PHIEUNHAPVIEN] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[PHIEUNHAPVIEN] CHECK CONSTRAINT [FK_NHANVIEN_PHIEUNHAPVIEN]
GO
ALTER TABLE [dbo].[PHIEUTAMUNG]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_PHIEUTAMUNG] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[PHIEUTAMUNG] CHECK CONSTRAINT [FK_BENHAN_PHIEUTAMUNG]
GO
ALTER TABLE [dbo].[PHIEUTAMUNG]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PHIEUTAMUNG] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[PHIEUTAMUNG] CHECK CONSTRAINT [FK_NHANVIEN_PHIEUTAMUNG]
GO
ALTER TABLE [dbo].[PHIEUTRONVIEN]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_PHIEUTRONVIEN] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[PHIEUTRONVIEN] CHECK CONSTRAINT [FK_BENHAN_PHIEUTRONVIEN]
GO
ALTER TABLE [dbo].[PHIEUTRONVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PHIEUTRONVIEN] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[PHIEUTRONVIEN] CHECK CONSTRAINT [FK_NHANVIEN_PHIEUTRONVIEN]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_PHONG] FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_KHOA_PHONG]
GO
ALTER TABLE [dbo].[TOATHUOC]  WITH CHECK ADD  CONSTRAINT [FK_BENHAN_TOATHUOC] FOREIGN KEY([IDBA])
REFERENCES [dbo].[BENHAN] ([IDBA])
GO
ALTER TABLE [dbo].[TOATHUOC] CHECK CONSTRAINT [FK_BENHAN_TOATHUOC]
GO
ALTER TABLE [dbo].[TOATHUOC]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TOATHUOC] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NHANVIEN] ([IDNV])
GO
ALTER TABLE [dbo].[TOATHUOC] CHECK CONSTRAINT [FK_NHANVIEN_TOATHUOC]
GO
USE [master]
GO
ALTER DATABASE [QLBN] SET  READ_WRITE 
GO
