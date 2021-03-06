USE [master]
GO
/****** Object:  Database [AppQuanLy]    Script Date: 10/14/2021 7:40:47 AM ******/
CREATE DATABASE [AppQuanLy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppQuanLy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VUONGIT\MSSQL\DATA\AppQuanLy.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AppQuanLy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VUONGIT\MSSQL\DATA\AppQuanLy_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AppQuanLy] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppQuanLy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppQuanLy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppQuanLy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppQuanLy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppQuanLy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppQuanLy] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppQuanLy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppQuanLy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppQuanLy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppQuanLy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppQuanLy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppQuanLy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppQuanLy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppQuanLy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppQuanLy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppQuanLy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AppQuanLy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppQuanLy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppQuanLy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppQuanLy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppQuanLy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppQuanLy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppQuanLy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppQuanLy] SET RECOVERY FULL 
GO
ALTER DATABASE [AppQuanLy] SET  MULTI_USER 
GO
ALTER DATABASE [AppQuanLy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppQuanLy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppQuanLy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppQuanLy] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AppQuanLy] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AppQuanLy', N'ON'
GO
USE [AppQuanLy]
GO
/****** Object:  Table [dbo].[ct_gianhap]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ct_gianhap](
	[ngayapdung] [date] NOT NULL,
	[gia] [int] NOT NULL,
	[idhanghoa] [varchar](8) NOT NULL,
 CONSTRAINT [PK__ct_gianh__7D266DFDBC0E0516] PRIMARY KEY CLUSTERED 
(
	[idhanghoa] ASC,
	[ngayapdung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ct_phieu_dat_hang]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ct_phieu_dat_hang](
	[id] [varchar](12) NOT NULL,
	[so_luong] [int] NOT NULL,
	[idhh] [varchar](8) NOT NULL,
	[id_phieudh] [varchar](12) NOT NULL,
 CONSTRAINT [PK__ct_phieu__3213E83FF04C53A9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ct_phieu_nhap_hang]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ct_phieu_nhap_hang](
	[id] [varchar](12) NOT NULL,
	[so_luong] [int] NOT NULL,
	[idhh] [varchar](8) NOT NULL,
	[id_phieunh] [varchar](12) NOT NULL,
 CONSTRAINT [PK__ct_phieu__3213E83F492A6EAB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hang_hoa]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hang_hoa](
	[id] [varchar](8) NOT NULL,
	[the_loai_id] [varchar](8) NOT NULL,
	[thuong_hieu_id] [varchar](8) NOT NULL,
	[anh] [varchar](max) NOT NULL,
	[khoi_luong] [varchar](10) NOT NULL,
	[mo_ta] [nvarchar](max) NOT NULL,
	[so_luong_ton] [int] NOT NULL,
	[ten] [nvarchar](200) NOT NULL,
	[gia] [int] NULL,
 CONSTRAINT [PK__hang_hoa__3213E83FAA51CB2D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phieu_dat_hang]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phieu_dat_hang](
	[id] [varchar](12) NOT NULL,
	[ngay_lap] [date] NOT NULL,
	[tong_tien] [int] NOT NULL,
	[tai_khoan_id] [varchar](8) NOT NULL,
	[trangthai] [int] NOT NULL,
 CONSTRAINT [PK__phieu_da__3213E83F92F645B3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phieu_nhap_hang]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phieu_nhap_hang](
	[id] [varchar](12) NOT NULL,
	[ngay_lap] [date] NOT NULL,
	[tong_tien] [int] NOT NULL,
	[tai_khoan_id] [varchar](8) NOT NULL,
	[trangthai] [int] NOT NULL,
 CONSTRAINT [PK__phieu_nh__3213E83FE1D48D34] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [varchar](8) NOT NULL,
	[dia_chi] [nvarchar](200) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[ho_ten] [nvarchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[sdt] [varchar](10) NOT NULL,
	[quyen] [varchar](10) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[anh] [varchar](200) NULL,
 CONSTRAINT [PK__nhan_vie__3213E83F6E70AE17] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[the_loai]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[the_loai](
	[Id] [varchar](8) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[Id] [varchar](8) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[anh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tin_tuc]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tin_tuc](
	[Id] [varchar](8) NOT NULL,
	[chu_de] [nvarchar](50) NOT NULL,
	[anh] [nvarchar](50) NOT NULL,
	[noi_dung] [ntext] NOT NULL,
	[ngay_dang] [date] NOT NULL,
	[tai_khoan_id] [varchar](8) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 530000, N'HH001')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 320000, N'HH002')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 8900000, N'HH003')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 320000, N'HH004')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 530000, N'HH005')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 750000, N'HH006')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 1390000, N'HH007')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 2090000, N'HH008')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 128000, N'HH009')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 180000, N'HH010')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 610000, N'HH011')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 32000, N'HH012')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 210000, N'HH013')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 259000, N'HH014')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 150000, N'HH015')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 420000, N'HH016')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 230000, N'HH017')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 700000, N'HH018')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 440000, N'HH019')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 600000, N'HH020')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 1945000, N'HH021')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 2145000, N'HH022')
INSERT [dbo].[ct_gianhap] ([ngayapdung], [gia], [idhanghoa]) VALUES (CAST(N'2021-02-09' AS Date), 2000000, N'HH023')
INSERT [dbo].[ct_phieu_dat_hang] ([id], [so_luong], [idhh], [id_phieudh]) VALUES (N'CTDH03243', 5, N'HH001', N'PDH14241')
INSERT [dbo].[ct_phieu_dat_hang] ([id], [so_luong], [idhh], [id_phieudh]) VALUES (N'CTDH11214', 4, N'HH001', N'PDH04410')
INSERT [dbo].[ct_phieu_dat_hang] ([id], [so_luong], [idhh], [id_phieudh]) VALUES (N'CTDH22320', 4, N'HH001', N'PDH13324')
INSERT [dbo].[ct_phieu_nhap_hang] ([id], [so_luong], [idhh], [id_phieunh]) VALUES (N'CTNH001', 1, N'HH001', N'PNH001')
INSERT [dbo].[ct_phieu_nhap_hang] ([id], [so_luong], [idhh], [id_phieunh]) VALUES (N'CTNH002', 2, N'HH002', N'PNH002')
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH001', N'1', N'82X', N'tao-xoan.jpg', N'330g      ', N'Tảo xoắn Spirulina là thực phẩm được Tổ chức Y tế thế giới công nhận là thực phẩm tốt nhất cho sức khỏe con người ở thế kỷ 21 bởi chúng dồi dào dinh dưỡng, giúp tăng đề kháng, hỗ trợ ngăn ngừa các bệnh lý nguy hiểm, giảm thiểu nguy cơ mắc ung thư, ngoài ra còn là thực phẩm tuyệt vời cho làn da phái đẹp.', 80, N'Tảo xoắn Spirulina Nhật Bản, thực phẩm tuyệt vời cho làn da phái đẹp.', 550000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH002', N'1', N'82X', N'taibien.jpeg', N'300g      ', N'Orihiro Nattokinase với thành phần chính Nattokinase hàm lượng 2000FU/ngày, mang lại hiệu quả trong việc hỗ trợ điều trị và giảm thiểu nguy cơ tai biến. Viên uống được chứng nhận chất lượng bởi Hiệp hội Nattokinase Nhật Bản và được người Nhật tin dùng mỗi ngày, như một phương pháp bảo vệ sức khỏe.

Viên uống Orihiro Nattokinase - Bí quyết hỗ trợ điều trị tai biến đến từ Nhật Bản
Viên uống Orihiro Nattokinase 2000FU 60 viên
Điểm nổi bật của viên uống Orihiro Nattokinase 2000FU:
- Viên uống Orihiro Nattokinase 2000FU giúp hỗ trợ điều trị tai biến và giảm thiểu xuất hiện các biến chứng, bên cạnh đó giúp bổ sung năng lượng, dưỡng chất tăng cường sức khỏe và hoạt động não bộ, tim mạch.

- Orihiro Nattokinase 2000FU đến từ thương hiệu Orihiro có hàng trăm năm kinh nghiệm trong các dòng thực phẩm sức khỏe, với thành phần Nattokinase đạt chuẩn và hàm lượng trong liều dùng (2000FU/ngày), hiệu quả hơn cho người dùng.

- Nattokinase được xuất phát từ một món ăn truyền thống của Nhật có tên là Natto - đậu nành lên men, nên an toàn, tự nhiên. Đây cũng được xem là một món ăn rất bổ dưỡng và là một phương pháp dân gian hỗ trợ điều trị các vấn đề liên quan đến tim mạch, huyết áp. 

Viên uống Orihiro Nattokinase 2000FU 60 viên
Công dụng của viên uống Orihiro Nattokinase 2000FU:
- Viên uống Orihiro Nattokinase 2000FU giúp hỗ trợ cân bằng huyết áp và lưu thông máu.

- Nattokinase hỗ trợ lưu thông máu, từ đó giảm thiểu nguy cơ các bệnh về tim mạch và hỗ trợ điều trị tai biến.

- Ổn định quá trình tuần hoàn não, xoa dịu tinh thần, cải thiện trí nhớ, mang lại giấc ngủ ngon và tinh thần thư thái cho người dùng. 

- Bồi bổ sức khỏe và bổ sung năng lượng cho cơ thể khỏe khoắn.

Viên uống hỗ trợ điều trị tai biến Orihiro Nattokinase 2000FU 60 viên
Thành phần có trong viên uống Orihiro Nattokinase 2000FU:
Dầu đậu nành, gelatin, glycerin, axit béo glycerin ester, sáp ong, lecithin (nguồn gốc từ đậu nành)…

Hướng dẫn sử dụng:
- Uống 03 viên/ngày, chia đều làm 3 lần uống vào mỗi sáng, trưa và chiều.

- Nên sử dụng trước bữa ăn 30 phút hay sau bữa ăn 60 phút, không uống cùng với nước nóng trên 40 độ C.

Lưu ý:
- Đậy nắp kín sau khi sử dụng.

- Nên ghi lịch ngày đầu tiên sử dụng để theo dõi hiệu quả sử dụng thuốc.

- Hiệu quả sử dụng sản phẩm tùy thuộc vào cơ địa từng người.

- Thực phẩm này không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh.

Cách bảo quản: 
- Để xa tầm tay trẻ em.

- Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng mặt trời và nơi nhiệt độ cao.', 100, N'Viên uống hỗ trợ điều trị tai biến Orihiro Nattokinase 2000FU 60 viên', 359000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH003', N'2', N'FINEJPA', N'bonao.jpeg', N'200g      ', N'Viên uống bổ não Fine Ginkgo Plus Nhật Bản được sản xuất tại Nhật Bản có thành phần là các chiết xuất từ tự nhiên, an toàn cho sức khỏe. Với chiết xuất từ lá bạch quả, viên uống giúp cải thiện hoạt động não bộ, tăng khả năng ghi nhớ và tập trung, đồng thời giúp ngủ ngon và sâu giấc hơn, xoa dịu tinh thần.

Fine Ginkgo Plus – "Dinh dưỡng vàng" cho trí não khỏe mạnh

Siêu Thị Nhật Bản Japana là người bạn thân thiết của những nhãn hàng uy tín và nghệ sĩ Việt
Điểm nổi bật của viên uống bổ não Fine Ginkgo Plus:
- Thành phần thảo dược có trong sản phẩm đã được chứng nhận Organic JAS – đảm bảo độ thuần khiết, an toàn với người dùng.

- Nổi bật với công dùng bồi bổ trí não, gia tăng khả năng ghi nhớ và tập trung cho người dùng, xoa dịu tinh thần, mang lại cảm giác thư thái và giấc ngủ ngon hơn cho người dùng. 

- Hộp gồm 400 viên tiện lợi và dễ sử dụng, phù hợp với mọi lứa tuổi.

Viên uống bổ não Fine Ginkgo Plus Nhật Bản 400 viên
Công dụng của viên uống bổ não Fine Ginkgo Plus:
- Xoa dịu tinh thần, cải thiện khả năng ghi nhớ và tập trung.

- Hỗ trợ điều hòa quá trình dẫn truyền các xung thần kinh, cải thiện hoạt động của não bộ, từ đó mang đến giấc ngủ ngon và sâu giấc hơn cho bạn.

- Hỗ trợ thúc đẩy quá trình tuần hoàn máu não, từ đó giúp trí óc minh mẫn, thoải mái và thư thái. 

- Giảm thiểu nguy cơ mắc các bệnh như: rối loạn tiền đình, hội chứng Alzheimer và hỗ trợ vận động cho hệ xương khớp chắc khỏe, bền bỉ. 

- Hỗ trợ bảo vệ sức khỏe tim mạch, tăng cường sức đề kháng và duy trì chức năng não khỏe mạnh.

- Giảm thiểu nguyên nhân gây ra các bệnh ung thư dạ dày, tắt nghẽn mạch máu, đau khớp.

Viên uống bổ não Fine Ginkgo Plus Nhật Bản 400 viên
Thành phần có trong viên uống bổ não Fine Ginkgo Plus:
- Chiết xuất cao bạch quả (ginkgo extract powder): 72,4mg

- Chiết xuất tỏi (garlic extract powder): 30mg

- Vitamin B1: 0,16mg

- Vitamin B2: 0,3mg

- Vitamin B6: 0,86mg

- Chất phụ liệu: lactose, dextrin, ester của đường, silicon dioxide.

Hướng dẫn sử dụng viên uống bổ não Fine Ginkgo Plus:
- Ngày uống 1-2 lần, mỗi lần 5 viên.

- Sau khi cải thiện những triệu chứng, uống duy trì mỗi lần 3 viên.

Lưu ý:
- Đậy kín nắp sau khi dùng.

- Đọc kỹ hướng dẫn trước khi sử dụng.

- Sản phẩm này không phải là thuốc không có tác dụng thay thế thuốc chữa bệnh.
- Sản phẩm có thể tác dụng khác nhau tùy cơ địa người dùng.', 100, N'Viên uống bổ não Fine Ginkgo Plus Nhật Bản 400 viên', 990000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH004', N'2', N'ORI', N'botrauxanh.jpeg', N'250g      ', N'Bột uống rau xanh hữu cơ Orihiro Aojiru bổ sung nguồn chất xơ, vitamin, khoáng chất từ 100% chiết xuất rau xanh hữu cơ theo tiêu chuẩn Nhật Bản, là "suối nguồn" trong lành, dinh dưỡng cho cơ thể thanh mát, khoẻ khoắn, hỗ trợ hệ tiêu hoá hấp thu tốt các chất, chăm sóc sức khoẻ cả gia đình.

Bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru - 100% chiết xuất rau xanh hữu cơ Nhật Bản

Siêu Thị Nhật Bản Japana là thương hiệu đã luôn đồng hành cùng các nhãn hàng, nghệ sĩ nổi tiếng

Điểm nổi bật của bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru:
100% nguyên liệu hữu cơ sạch đến từ Nhật Bản
Nguồn nguyên liệu chất lượng cao được trồng hoàn toàn hữu cơ Organic, 100% được trồng tại Nhật. Quy trình trồng được kiểm soát chặt chẽ và nghiêm ngặt, không sử dụng thuốc bảo vệ thực vật hay chất kích thích tăng trưởng, đảm bảo thành phần an toàn với cơ thể người dùng.

Nguồn nguyên liệu của bột Orihiro Aojiru được chứng nhận JAS - Tiêu chuẩn hữu cơ nông nghiệp Nhật Bản, là chứng nhận danh giá được người Nhật tin dùng với quy trình được kiểm tra nghiêm ngặt, gắt gao, đảm bảo chất lượng và an toàn cho người dùng.

Bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru 30 gói
Orihiro Aojiru - Thanh lọc cơ thể, bồi bổ dưỡng chất tự nhiên
Bột uống giúp thanh lọc cơ thể, đào thải độc tố có hại trong cơ thể, mang lại cơ thể khoẻ khoắn, trong lành từ bên trong, từ đó giảm thiểu các bệnh như ung thư, dạ dày, tiêu hoá,...

Cơ thể không được thanh lọc thường xuyên là nguyên nhân xuất hiện mụn, nóng trong người, táo bón, cơ thể mệt mỏi, thiếu tập trung... bột uống rau xanh hữu cơ Orihiro Aojiru giúp hỗ trợ thải độc, với hương vị dễ uống, thích hợp cho cả trẻ nhỏ (từ 3 tuổi trở lên) đến người trưởng thành và đặc biệt bồi bổ, tốt cho người lớn tuổi.

Bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru 30 gói
Thành phần và công dụng bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru:
Bột lá lúa mạch hữu cơ, bột trà xanh hữu cơ, tinh bột thuỷ phân, bột Moroheiya hữu cơ, bột nước ép xanh hữu cơ (lá dâu hữu cơ, lá lúa mạch hữu cơ, cải xoăn hữu cơ, lá non Hato hữu cơ)

Hàm lượng dinh dưỡng có trong bột chiết xuất từ rau xanh hữu cơ Orihiro Aojiru:
- Năng lượng: 6 Kcal

- Protein: 0.48g

- Lipid: 0.11g

- Carbohydrate: 1.14g

- Muối tương đương: 0-0.01g

Bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru 30 gói
Đối tượng sử dụng:
- Dùng cho trẻ từ 03 tuổi trở lên.

- Người có khẩu phần ăn ít rau, cơ thể thiếu vitamin, khoáng chất, tinh thần kém, thường xuyên mệt mỏi.

- Người lười ăn rau và hoa quả, thường xuyên nóng trong người, nổi mụn do cơ thể không thanh lọc.

- Người ăn không tiêu, hay gặp các vấn đề về tiêu hoá, đặc biệt người lớn tuổi và trẻ nhỏ.

Hướng dẫn sử dụng:
- Lấy 01 gói pha cùng 100ml đồ uống yêu thích hoặc pha với nước ấm, khuấy đều và thưởng thức.

- Sử dụng đều đặn 01 gói/ngày. Người sử dụng lần đầu nên bắt đầu từ một lượng nhỏ.

- Nên uống bột rau xanh hữu cơ Orihiro Aojiru vào mỗi buổi sáng trước bữa ăn sáng 30 phút để mang lại cơ thể thoải mái, tinh thần minh mẫn cho cả ngày.

- Dùng cho trẻ từ 03 tuổi trở lên.

Lưu ý:
- Sản phẩm này không phải là thuốc nên không có công dụng thay thế thuốc chữa bệnh.

- Hiệu quả có thể khác nhau tuỳ theo cơ địa người dùng.

Cách bảo quản:
- Để ở các nơi khô ráo, thoáng mát.

- Tránh nơi có ánh nắng, nơi gần nguồn nhiệt.', 100, N'Bột uống chiết xuất từ rau xanh hữu cơ Orihiro Aojiru 30 gói', 390000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH005', N'5', N'AFRESH ', N'KDR.jpg', N'140g      ', N'Kem đánh răng Aquafresh hương bạc hà với công nghệ độc quyền Triple Protection của thương hiệu Aquafresh giúp tăng gấp 3 lần khả năng bảo vệ răng miệng. Bên cạnh khả năng làm sạch và trắng răng, hạn chế nguy cơ mắc các bệnh về răng miệng hay sâu răng, giúp bạn sở hữu hàm răng trắng sáng, chắc khoẻ cùng hơi thở thơm mát, sảng khoái với hương bạc hà.

Chắc răng, thơm miệng với kem đánh răng Aquafresh bạc hà
Combo 3 kem đánh răng Aquafresh hương bạc hà 140g
Điểm nổi bật của kem đánh răng Aquafresh trà xanh:
- Kem đánh răng Aquafresh với công thức Triple Protection độc quyền tăng cường sự bảo vệ cho răng gấp 3 lần, giúp các chất dễ dàng thâm nhập vào sâu bề mặt men răng và cho răng chắc khoẻ hơn.

- Sự kết hợp 3 công dụng trong cùng một sản phẩm, kem đánh răng giúp làm sạch răng và ngăn ngừa sâu răng, bảo vệ nướu, đồng thời làm trắng răng.

- Kem đánh răng được bổ sung Canxi và Peroxide giúp chống lại vi khuẩn hôi miệng, mang đến hơi thở thơm tho với hương trà xanh thanh mát.

- Kem đánh răng Aquafresh là một sản phẩm được yêu thích tại Nhật và đã được bộ Y tế chứng nhận hàm lượng Flour thích hợp, an toàn với sức khoẻ người dùng.

Công dụng của kem đánh răng Aquafresh:
- Loại bỏ mảng bám, vết bẩn, ố vàng trên răng do dùng nhiều bia, rượu, thuốc lá… 

- Chứa chất chống vi khuẩn gây hôi miệng và mang lại hơi thở sảng khoáng, thanh mát với hương bạc hà.

- Tăng cường hàm lượng Canxi và Flour giúp bảo vệ răng chắc khoẻ và chống sâu răng vượt trội.

- Giảm tối đa vết ố vàng và làm trắng răng hiệu quả hơn.

Combo 3 kem đánh răng Aquafresh hương bạc hà 140g
Thành phần có trong kem đánh răng Aquafresh:
Hương bạc hà thanh mát, nước tinh khiết, sorbitol, glycerin, polyethylene glycol 400, chất làm sạch, acid silicic, xanthan gum, carrageenan, sodium lauryl sulfat...

Hướng dẫn sử dụng kem đánh răng:
- Trẻ em trên 6 tuổi đã có thể sử dụng được.​

- Sử dụng mỗi ngày 2 lần vào sáng và tối, ngay sau bữa ăn.

- Bước 1: Cho một lượng vừa đủ (khoảng bằng hạt đậu) lên bàn chải.

- Bước 2: Chải đều khắp khoang miệng và lặp lại nhiều lần.

- Bước 3: Súc miệng với nước cho thật sạch.

Lưu ý:
- Nếu trẻ sử dụng nên có sự giám sát của bổ mẹ và không để trẻ nuốt kem đánh răng.

- Không nên sử dụng quá nhiều lần trong ngày vì có thể làm mòn men răng.', 98, N'Combo 3 kem đánh răng Aquafresh hương bạc hà 140g', 285000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH006', N'2', N'Kino', N'nuocuongcothe.jpeg', N'250g      ', N'Nước uống hỗ trợ thải độc cơ thể D Tox Plum Juice là sản phẩm của thương hiệu Kinohimtsu Nhật Bản luôn đi đầu trong ngành thực phẩm chức năng hỗ trợ giải độc và tăng cường sức khoẻ. Nước uống được chiết xuất 100% từ tự nhiên, giúp hỗ trợ quá trình thải độc của cơ thể, nâng cao sức đề kháng, giảm thiểu nguy cơ mắc các bệnh lý và mang lại cho bạn một cơ thể khỏe mạnh.

Kinohimitsu D Tox Plum Juice - Bí quyết tăng cường sức khỏe cho mọi nhà

Siêu Thị Nhật Bản Japana là thương hiệu đã luôn đồng hành cùng các nhãn hàng, nghệ sĩ nổi tiếng

Điểm đặc biệt của nước uống Kinohimitsu D Tox Plum Juice:
- J''pan D''tox Juice 100% tự nhiên, không chứa các chất phụ gia, cung cấp các dưỡng chất giúp cải thiện hoạt động các chức năng có lợi trong đường tiêu hóa và tăng sức đề kháng cho cơ thể. 

- Sử dụng nước uống đều đặn sẽ hỗ trợ thúc đẩy nhu động ruột, cải thiện các triệu chứng bất thường của ruột.

- Một liệu trình trong 6 ngày, giúp bạn hỗ trợ thải độc một cách tiện lợi mà không làm gián đoạn cuộc sống hàng ngày của bạn, mang lại cảm giác thoải mái, thư thái và nhẹ nhàng cho người dùng.

Nước uống hỗ trợ thải độc cơ thể Kinohimitsu D Tox Plum Juice (Hộp 6 chai x 30ml)
Công dụng của nước uống Kinohimitsu D Tox Plum Juice:
- Hỗ trợ thúc đẩy nhu động ruột, cải thiện các triệu chứng bất thường của hệ tiêu hóa. 

- Hỗ trợ làm giảm các tác nhân từ tuổi tác ảnh hưởng cơ thể và góp phần tăng cường sức đề kháng cho bạn.

- Giảm thiểu nguy cơ mắc bệnh tiểu đường, cao huyết áp và bệnh tim mạch.

- Giúp thúc đẩy quá trình thải độc cơ thể bạn trong vòng 6 ngày, mang lại cho bạn cảm giác hoàn toàn mới và tràn đầy sức sống. 

Nước uống hỗ trợ thải độc cơ thể Kinohimitsu D Tox Plum Juice (Hộp 6 chai x 30ml)
Thành phần có trong nước uống Kinohimitsu D Tox Plum Juice:
Nước trái cây đen tía, nước tinh khiết, nước trái cây Roselle, tập trung Blueberry, Blackberry Concentrate, Glace Plum nước ép trái cây, Citric Acid.

Hướng dẫn sử dụng nước uống Kinohimitsu D Tox Plum Juice:
- Mỗi ngày 1 chai, lắc đều trước khi uống, tốt nhất vào buổi tối trước khi ngủ, ngon hơn khi uống lạnh. 

- Đối với người sử dụng lần đầu: Mỗi ngày 1 chai trong 6 ngày liên tục cho một liệu trình thải độc cơ thể. 

- Để duy trì sức khoẻ đầy khí lực: 1-3 chai mỗi tuần hoặc dùng theo ý muốn.

Lưu ý:
- Sản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh.

- Hiệu quả của sản phẩm có thể khác nhau tuỳ thuộc vào cơ địa người dùng.

Cách bảo quản sản phẩm:
- Để xa tầm tay trẻ em.

- Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', 100, N'Nước uống hỗ trợ thải độc cơ thể Kinohimitsu D Tox Plum Juice (Hộp 6 chai x 30ml)', 790000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH007', N'5', N'Kino', N'collagen.jpeg', N'300g      ', N'Nước uống đẹp da Kinohimitsu Collagen Men​ giúp thúc đẩy quá trình trao đổi chất trong cơ thể, từ đó sản sinh tế bào mới hiệu quả hơn, cùng với đó thành phần dưỡng ẩm tuyệt vời,mang lại vẻ ngoài rắn chắc, khỏe mạnh, làm mờ các khu vực da bị sạm đen, hư tổn do cháy nắng, bị thương,... ngoài ra, sản phẩm còn rất tốt cho hệ xương khớp, tim mạch và mắt của người dùng. 

Kinohimitsu Collagen Men - Bí quyết cho phái mạnh luôn tràn đầy sức sống
Nước uống đẹp da Kinohimitsu Collagen Men (Hộp 16 chai x 50 ml)
Điểm nổi bật của nước uống đẹp da Kinohimitsu Collagen Men​:
- Nước uống được chiết xuất 100% từ các thành phần tự nhiên và an toàn, không đường, chất bảo quản, màu nhân tạo hay hương liệu. Đặc biệt, không sử dụng các hormone, steroid và hóa chất đã được kiểm tra kỹ lưỡng bởi SGS (Global Benchmark Recognisation on Quality and Integrity). Công thức chất lỏng dạng uống độc đáo cho phép cơ thể hấp thu nhanh chóng.

- Với 5300mg Collagen peptide ở phân tử nhỏ và các thành phần dưỡng ẩm tuyệt vời, Kinohimitsu Collagen Men giúp da dẻ trở nên săn chắc, khỏe mạnh hơn, căng các nếp nhăn, làm mờ các vết thâm, nám, sạm đen hay sẹo trên da hiệu quả.  

- Chiết xuất collagen peptide cao cấp từ Nhật Bản và công nghệ tiên tiến, đạt chất lượng và độ tinh khiết cao, không chứa chất béo và cholesterol. Với kích thước siêu nhỏ làm tăng độ hấp thu vào cơ thể nhanh chóng và hiệu quả hơn.

- Chiết xuất hạt tía tô, đậu nành, táo, chanh… cung cấp dưỡng chất giúp hỗ trợ phục hồi các tế bào bị hư tổn và giảm viêm cho da, cung cấp hàm lượng lớn các chất giúp da dẻ và cơ thể luôn tươi mới, trẻ trung, tràn đầy sức sống. 

Nước uống đẹp da Kinohimitsu Collagen Men (Hộp 16 chai x 50 ml)
Công dụng của nước uống đẹp da Kinohimitsu Collagen Men​:
- Nước uống Kinohimitsu Collagen Men giúp mang lại vẻ trẻ trung và cuốn hút cho phái nam.

- Cung cấp và duy trì độ ẩm cần thiết cho da, không còn tình trạng da sần sùi, khô ráp và bong tróc. 

- Giảm thiểu các tác nhân gây ra mụn, thâm nám,... mạng lại làn da đều màu, căng bóng và nhẵn mịn.

- Giảm nếp nhăn, làm mờ sẹo và se khít lỗ chân lông, cho làn da láng mịn, căng đầy.

- Tăng cường sức khỏe cho tóc và móng tay.

- Ngoài ra sản phẩm còn giúp bồi bổ cho chắc xương, khỏe khớp, mắt tinh anh và cơ thể khỏe mạnh, tràn đầy sức sống.

Nước uống đẹp da Kinohimitsu Collagen Men (Hộp 16 chai x 50 ml)
Thành phần có trong nước uống đẹp da Kinohimitsu Collagen Men​:
- Collagen Peptide (trích xuất từ cá) ở dạng phân tử nhỏ cho phép hấp thụ tối ưu khi đưa vào cơ thể.

- Perilla Seed Extract – WSP (Chiết xuất hạt tía tô) giúp hỗ trợ tăng cường khả năng phục hồi tế bào.

- Silk Protein (Peptide) có khả năng giữ nước mạnh mẽ hỗ trợ trong việc duy trì độ ẩm. Silk Protein có khả năng giữ nước gấp 50 lần so với các chất khác.

- Isoflavone đậu nành hỗ trợ việc sản xuất collagen và elastin tự nhiên, làm suy giảm sự tổng hợp của các sắc tố melanin.

- Nước ép táo, chanh và vải giàu axit malic và vitamin C có hiệu quả trong việc làm sáng da và tăng sức đề kháng hiệu quả. 

Nước uống đẹp da Kinohimitsu Collagen Men (Hộp 16 chai x 50 ml)
Hướng dẫn sử dụng:
- Mỗi lần uống 01 chai vào buổi tối trước khi đi ngủ, lắc đều trước khi uống và ngon hơn khi uống lạnh.

- Đối với người sử dụng lần đầu: Mỗi ngày 1 chai vào buổi tối liên tục trong 6 ngày.

- Đối với người duy trì sử dụng: 2 ngày 1 chai vào buổi tối trước khi đi ngủ.

Lưu ý:
- Sản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh.

- Hiệu quả sản phẩm có thể khác nhau tùy cơ địa người dùng.

Cách bảo quản sản phẩm:
- Đậy nắp kín sau khi sử dụng.

- Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng mặt trời.', 99, N'Nước uống đẹp da Kinohimitsu Collagen Men (Hộp 16 chai x 50 ml)', 1590000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH008', N'1', N'Kino', N'bosungtb.jpeg', N'450g      ', N'Nước uống bổ sung tế bào gốc Kinohimitsu Stem Cell là sản phẩm làm chậm quá trình lão hóa, hỗ trợ tái tạo tế bào gốc nhanh chóng, mang đến một cơ thể tươi mới khỏe mạnh mỗi ngày.

Nước uống bổ sung tế bào gốc Kinohimitsu Stemcell – Cơ thể tươi trẻ, làn da khỏe khoắn mỗi ngày

Siêu Thị Nhật Bản Japana là thương hiệu được nhiều nghệ sĩ, diễn viên nổi tiếng lựa chọn

Điểm nổi bật của nước uống bổ sung tế bào gốc Kinohimitsu Stemcell:
Sản phẩm hỗ trợ tái tạo lại làn da căng mịn
Với sự hỗ trợ từ các DNA và RNA tự nhiên trong thành phần, những tế bào da bị hư hại sẽ được giảm thiểu đáng kể, thúc đẩy quá trình sản sinh tế bào da mới.

Thức uống có khả năng chống oxy hóa mạnh mẽ
Trong nước uống bổ sung tế bào gốc Kinohimitsu Stemcell có chứa thành phần Flavonoid là một chất giúp chống oxy hóa mạnh mẽ, tiêu diệt các gốc tự do chống lại quá trình lão hóa.

Nước uống giúp bổ sung vitamin tự nhiên cho da mặt
Với thành phần gồm các loại Vitamin như Vitamin E, B và C, sản phẩm giúp da được làm đẹp từ bên trong. Hơn nữa, tinh chất trong rong biển có tác dụng giữ độ ẩm cần thiết cho da, làm da trở nên mềm mại hơn.

Nước uống Kinohimitsu J’pan Stemcell - Cơ thể tươi trẻ, tươi tắn làn da
Thành phần và công dụng của nước uống bổ sung tế bào gốc Kinohimitsu Stemcell:
- Flavonoid: Làm chậm quá trình oxy hóa gây lão hóa da.

- DNA (Deoxyribonucleic Acid) & RNA (Ribonucleic Acid) từ tự nhiên: Hỗ trợ tái tạo các tế bào da, trẻ hóa làn da đồng thời làm mờ các vùng da hư tổn.

- Tế bào gốc từ hoa sen tuyết: Tăng cường hệ miễn dịch, hỗ trợ điều kinh cho nữ giới cùng khả năng se khít lỗ chân lông, làm mờ mụn và giảm tình trạng nám, sạm da.

- Collagen Peptide: Là thành phần chính chiếm tới 75% trong cấu trúc của da, làm giảm sự hình thành các nếp nhăn, làm tươi sáng các vùng da khô sạm.

- Hyaluronic Acid (sụn gà): Giữ độ ẩm cần thiết cho da.

- Vitamin E, B và C: Cân bằng độ ẩm, giảm thiểu sự lão hóa và nám da, hỗ trợ tái tạo collagen trong cơ thể.

Nước uống Kinohimitsu J’pan Stemcell - Cơ thể tươi trẻ, tươi tắn làn da
Hướng dẫn sử dụng:
- Sử dụng tốt nhất là lúc trước khi ăn sáng hoặc trước khi đi ngủ.

- Mỗi lần uống 1 chai, lắc đều trước khi sử dụng. Ngon hơn khi uống lạnh.

- Người sử dụng lần đầu: uống liên tục 1 chai/ngày trong 6 ngày.

- Nên sử dụng khoảng 1 chai/2 ngày để duy trì kết quả.

Cách bảo quản:
- Tránh nơi có ánh sáng mặt trời chiếu trực tiếp.

- Bảo quản nơi khô ráo thoáng mát.

Lưu ý:
- Sản phẩm không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh.

- Tác dụng có thể khác nhau tùy cơ địa của người dùng.', 100, N'Nước uống bổ sung tế bào gốc Kinohimitsu Stemcell (Hộp 16 chai x 50ml)', 2990000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH009', N'6', N'CHU', N'thamlot.jpeg', N'220g      ', N'Miếng lót thấm sữa ChuChuBaby Milk Pad Airy 30 miếng được thiết kế tiện lợi, là giải pháp thông minh dành cho các bà mẹ đang thời kì cho con bú. Với lõi bông mềm mại có độ thấm hút tốt giúp mẹ luôn thoải mái, tự tin hơn mỗi ngày.

Miếng lót thấm sữa ChuChuBaby Milk Pad Airy - Người bạn của mẹ bỉm sữa

Siêu Thị Nhật Bản Japana là thương hiệu đã luôn đồng hành cùng các nhãn hàng, nghệ sĩ nổi tiếng

Điểm nổi bật của miếng lót thấm sữa ChuChuBaby Milk Pad Airy:
 Thiết kế độc đáo với các đường xếp li dọc
Các đường xếp li dọc trên bề mặt của miếng lót giúp mẹ dễ dàng điều chỉnh theo kích thước của vòng ngực, tiếp xúc tốt hơn với bầu sữa. Chất liệu mềm mại, bề mặt mỏng khá dễ chịu, êm áo và thoải mái, không gây hại cho làn da ở vùng nhạy cảm.

Miếng Lót Thấm Sữa ChuChu Baby Milk Pad Airy 30 Miếng
Dải keo dính cố định tốt
Dải keo dính dài, giúp cố định vào áo ngực mà không bị xô lệch khi mẹ sử dụng, không lo ngại bị rơi ra ngoài. Miếng lót có màng mỏng thoát khí, có khả năng chống tràn vừa vặn với nếp áo và làm tăng tính thẩm mỹ.

Miếng Lót Thấm Sữa ChuChu Baby Milk Pad Airy 30 Miếng
Hướng dẫn sử dụng và bảo quản: 
- Bước 1: Mỗi lần dùng lấy từng miếng lót vuốt phẳng.

- Bước 2: Đặt miếng lót vào phía trong áo lót, chỉnh ngay ngắn.

- Bước 3: Sau mỗi lần cho bé bú hoặc khi miếng thấm nhiều sữa thì phải thay miếng mới.

- Bảo quản phần chưa dùng ở nơi thoáng mát, khô ráo và sạch sẽ.', 100, N'Miếng lót thấm sữa ChuChuBaby Milk Pad Airy 30 miếng', 138000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH010', N'6', N'CHU', N'vienngam.jpeg', N'200g      ', N'Khi bé lên 2, bắt đầu sở thích ăn kẹo hay những món ăn ngọt ngọt, nguyên nhân chính dẫn đến sâu răng. Lúc này mẹ cần chọn cho bé viên ngậm lợi khuẩn ChuChuBaby ​với chiết xuất xylitol không đường. Bé vừa được ăn kẹo, vừa bảo vệ được răng nướu chắc khỏe.

Viên ngậm lợi khuẩn ChuChuBaby - Thơm ngon, răng sạch khuẩn

Siêu Thị Nhật Bản Japana là thương hiệu đã luôn đồng hành cùng các nhãn hàng, nghệ sĩ nổi tiếng

Điểm nổi bật của viên ngậm lợi khuẩn ChuChuBaby:
Vị ngọt tự nhiên từ xylitol
Viên ngậm lợi khuẩn có vị ngọt tự nhiên từ xylitol không chứa đường, các vi khuẩn có hại không có khả năng tấn công men răng bé.

Khi ngậm kẹo, khả năng tiêu diệt tới 99.9% vi khuẩn sâu răng và 100% vi khuẩn gây bệnh.

Viên ngậm lợi khuẩn
Viên ngậm có chứa lợi khuẩn L8020 - một loại vi khuẩn acid lactic có lợi cho khoang miệng của bé. Lợi khuẩn này được tiến sĩ Nikawa (Đại học Hiroshima - Nhật Bản) tìm thấy trong khoang miệng của những người khỏe mạnh, không bị sâu răng và bệnh về răng.

Lợi khuẩn ức chế vi khuẩn có hại, tăng cường vi khuẩn có lợi, ngăn ngừa men răng bị phá hủy, giúp cho răng miệng khỏe mạnh hơn.

Viên ngậm lợi khuẩn ChuChuBaby (Vị sữa chua)
Giữ khoang miệng luôn khỏe mạnh
Viên ngậm còn giúp cải thiện độ pH môi trường miệng từ acid sang trung tính, giữ cho môi trường khoang miệng luôn được khỏe mạnh. Bé thoải mái tươi cười, mẹ cũng an tâm hơn khi cho bé sử dụng.

Hương vị kẹo thơm ngon
Vien ngậm với 3 vị để bé dễ dàng lựa chọn theo sở thích: Vị sữa chua, vị dâu và nho sẽ hấp dẫn các bé khi sử dụng, với tác dụng làm sạch khoang miệng, loại bỏ hoàn toàn các vi khuẩn gây hại mà việc đánh răng thông thường không thể làm sạch.​

Viên ngậm lợi khuẩn ChuChuBaby (Vị sữa chua)
Cách sử dụng:
- Ngậm 3 viên/ngày, ngậm cho đến khi tan dần trong miệng. Có thể sử dụng sau khi đánh răng.

- Không để trẻ nhai hoặc nuốt làm hư răng hoặc hóc.

- Trẻ chưa quen thì có thể nghiền nhỏ ra.

- Trẻ sử dụng đưới sự giám sát của người lớn.

Bảo quản:
- Bảo quản nơi khô ráo, thoáng mát, tránh nhiệt độ cao, ánh nắng trực tiếp.', 100, N'Viên ngậm lợi khuẩn, hạn chế tối đa ChuChuBaby 90 viên', 200000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH011', N'6', N'ALGAE', N'vienuongcao.jpg', N'250g      ', N'Viên uống hỗ trợ tăng chiều cao Height Extension EX 300 viên
Việt Nam nằm trong TOP những quốc gia có chiều cao trung bình thấp nhất châu Á, kể cả nam và nữ. Điều này rất đáng lo ngại, khi yếu tố di truyền là một trong những nguyên nhân vô cùng quan trọng để quyết định chiều cao của trẻ em.
Để cho các bé có cơ hội phát triển chiều cao toàn diện và vượt bậc. Hiện nay có rất nhiều loại thực phẩm chức năng có tác dụng hỗ trợ tăng chiều cao cho bé. Hãy để bé được phát triển toàn diện khi sử dụng sản phẩm hỗ trợ tăng cường chiều cao cho trẻ HEIGHT EXTENSION EX. Dưới đây là một thông tin, công dụng và cách sử dụng sản phẩm hỗ trợ tăng chiều cao cho trẻ.
Viên uống hỗ trợ tăng chiều cao Height Extension EX 300 viên
Công dụng của viên uống hỗ trợ tăng chiều cao:
Thúc đẩy hoạt động tiết hormone tăng trưởng trong cơ thể sản sinh ra một cách tự nhiên nhất mà không hề gây tác dụng phụ.
Giúp trẻ tăng trưởng chiều cao một cách tối đa, tự nhiên.
Thúc đẩy phát triển chiều cao tối ưu. Sau 1 liệu trình, bạn có thể tăng tối đa 3-8cm
Bổ sung thêm nhiều khoáng chất giúp trẻ phát triển về mặt thể chất một cách toàn diện nhất.
Viên uống tăng chiều cao Height Extension EX phù hợp cho cả nam và nữ, từ 10-30 tuổi.
Thành phần Height Extension EX 
Canxi / cellulose san hô, canxi stearate, L-leucine, L-lysine hydrochloride, L-valine, L-isoleucine, L-me-thionine, L-arginine, L-histidine, L-Tryptophan, L-Phenylalanine, L-Threonine, Granated Silicon Oxide 90g.
Trong đó, Canxi được xem là thành phần chủ chốt của sản phẩm, bởi bó có vai trò quan trọng đối với sự phát triển hệ cơ xương, răng và toàn thân. Canxi giúp trẻ em được cao lớn, người trưởng thành có được hệ xương chắc khỏe, ngăn ngừa nguy cơ loãng xương và nhiều bệnh về xương khớp.
Viên uống hỗ trợ tăng chiều cao Height Extension EX 300 viên
Hướng dẫn sử dụng viên uống hỗ trợ tăng chiều cao Height Extension EX:
1 ngày 3 viên nén 300mg uống 1 lần trước khi đi ngủ, tốt hơn nên uống sản phẩm này vào khoảng 9 đến 10 giờ tối.
Bạn có thể kết hợp với chế độ dinh dưỡng như ăn nhiều cá, thịt bò, ngũ cốc…uống nhiều nước và đặc biệt ngủ đủ giấc để có thể mang lại kết quả cao.
Trong vòng 3 giờ khi uống không ăn hay uống thêm gì khác.
Cố gắng ngủ đủ giờ 7-8h 1 ngày để thuốc phát huy tối ưu kết quả.
Kết hợp thêm các bài tập thể dục hoặc vận động nhẹ (như chạy bộ, thể dục buổi sáng) để thúc đẩy quá trình trao đổi chất và kéo giãn xương.
 Ăn thức ăn có đủ hàm lượng vitamin, canxi và protein.
Từ 10 tuổi trở nên nếu trẻ không phát triển chiều cao tự nhiên, hãy cho trẻ dùng: Hieght-Extensinon để cải thiện chiều cao nhanh chóng và đạt hiệu quả cao.', 0, N'Viên uống hỗ trợ tăng chiều cao Height Extension EX 300 viên', 650000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH012', N'3', N'OEM', N'bangdinh.jpg', N'80g       ', N'Băng dính nhôm dán kẽ hở Nhật Bản giúp dán che đi các kẽ hở ở bếp, bồn rửa bát, bề mặt kim loại… để giúp tránh tình trạng rò rỉ nước hay bụi bẩn bám vào các kẽ hở.

Băng dính nhôm dán kẽ hở Nhật Bản – Che đậy các kẽ hở xấu xí
Băng dính nhôm dán kẽ hở Nhật Bản 2m

Thông tin chi tiết:
Chất liệu: Nhôm mỏng.

Kích thước: Dài 2m.

Màu sắc: Bạc.

Xuất xứ: Nhật Bản.

Băng dính nhôm dán kẽ hở Nhật Bản 2m

Cách bảo quản:
Để xa tầm tay trẻ em.

Để nơi khô ráo, thoáng mát.', 100, N'Băng dính nhôm dán kẽ hở Nhật Bản 2m', 40000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH013', N'3', N'YUW', N'bo3.jpg', N'800g      ', N'Bộ ba đánh bay vết bẩn đến từ thương hiệu Yuwa là "bạn thân" của người nội trợ bởi khả năng làm sạch các vết bẩn dù là cứng đầu nhất một cách "nhanh - gọn - sạch", góp phần giữ cho bề mặt nhà bếp và các vật dụng sạch sẽ, sáng bong như mới, thơm mát hương cam nhẹ dịu.

Bộ ba đánh bay vết bẩn Yuwa - Sạch sẽ, sáng bong như mới
Ca sĩ Tiêu Châu Như Quỳnh đã tin dùng sản phẩm của Siêu Thị Nhật Bản Japana
Hoa hậu Diễm Hương, Kiều Ngân và diễn viên Tuyền Mập đã tin dùng sản phẩm của Siêu Thị Nhật Bản Japana

Bộ sản phẩm đánh bay vết bẩn nhà bếp bao gồm:
- Dung dịch tẩy dầu mỡ hương cam Yuwa Orange Oil Cleaner (400ml)

- Kem tẩy đa năng Yuwa (100g)

- Khăn vải không dệt làm sạch Yuwa (22 miếng)

bộ 3 sản phẩm tẩy sạch và đánh bay vết bẩn Yuwa
Điểm nổi bật của bộ sản phẩm tẩy sạch và đánh bay vết bẩn nhà bếp Yuwa:
Đánh bay vết bẩn nhanh - gọn - sạch hơn
Công thức làm sạch thế hệ mới, nhanh chóng hoà tan vết dầu mỡ, vết bẩn, giúp làm sạch bề mặt chỉ trong vài giây, trả lại vẻ sáng bóng cho bề mặt các vật dụng nhà bếp.

Bên cạnh khả năng làm sạch nhanh vết bẩn, bộ sản phẩm với chiết xuất quả cam và trái cây tự nhiên, xua tan đi mùi hôi khó chịu và làm sạch các vi khuẩn có hại, cho không gian sống sạch sẽ và thơm hương.

Phương pháp làm sạch an toàn, không hại da tay
Đến từ tập đoàn toàn cầu Yuwa nổi tiếng tại Nhật Bản với dây chuyền công nghệ hiện đại hàng đầu, chất lượng và các thành phần được quản lý nghiêm ngặt. Trong đó với tinh dầu và chiết xuất tự nhiên giúp làm sạch an toàn, không gây hại da tay, không gây độc cho người dùng.

Làm sạch vết bẩn trên nhiều bề mặt
Thành phần các chất được nghiên cứu và kiểm nghiệm sử dụng được trên nhiều bề mặt, thích hợp làm sạch nhiều loại vết bẩn như dầu mỡ, rỉ sét, ố vàng,...

bộ 3 sản phẩm tẩy sạch và đánh bay vết bẩn Yuwa
Công dụng của bộ sản phẩm vệ sinh và đánh bay vết bẩn nhà bếp:
- Làm sạch nhanh vết dầu mỡ, vết bẩn do thức ăn, rỉ sét.

- Hạn chế sự phát triển của vi khuẩn, xua tan mùi hôi và mang lại hương thơm mát của tinh chất cam.

- Giữ cho bề mặt các vật dụng nhà bếp luôn sạch sẽ, sáng bóng như mới.

- Thành phần an toàn, thân thiện với không gian sống, không gây hại cho da tay.

Hướng dẫn sử dụng:
Cách sử dụng dung dịch tẩy dầu mỡ hương cam Yuwa Orange Oil Cleaner:
Để bình xịt cách vết bẩn khoảng 10cm và xịt 1 - 2 lần rồi dùng khăn khô lau sạch.

Đối với những vết bẩn cứng đầu, sau khi xịt cần đợi khoảng 5 phút rồi lau sạch.

Cách sử dụng kem tẩy đa năng Yuwa:
Sử dụng trực tiếp kem lên bề mặt vết bẩn rồi dùng khăn khô lau sạch.

Cách sử dụng khăn vải không dệt làm sạch nhà bếp Yuwa:
Dùng khăn vải lau trực tiếp lên bề mặt vết bẩn (có thể sử dụng cả 2 mặt của khăn).

- Đối với vết bẩn cần làm sạch có rác hay bụi nên quét sạch trước khi dùng khăn vải lau sạch.

Lưu ý:
- Không để gần tầm tay trẻ nhỏ.

- Đậy kín nắp lại sau khi sử dụng xong.

Cách bảo quản:
- Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.', 0, N'Bộ 3 sản phẩm tẩy sạch và đánh bay vết bẩn Yuwa', 249000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH014', N'3', N'OEM', N'bogiat.jpeg', N'3kg       ', N'Bộ 4 giặt xả quần áo Nhật Bản - Quần áo sạch sẽ, hương thơm lâu dài

Bộ 4 giặt xả quần áo Nhật Bản​:
Nước tẩy lồng máy giặt Nhật Bản 400ml
Nước tẩy trắng vùng cổ, tay áo Kose 500ml
Nước giặt đồ lót và tẩy các vết bẩn siêu mạnh Kose 200ml
Nước xả vải cao cấp hương nước hoa Daichi 2L', 100, N'Bộ 4 giặt xả quần áo Nhật Bản', 299000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH015', N'4', N'PITA', N'khautrang.jpg', N'20g       ', N'Khẩu trang kháng khuẩn Pitta thiết kế ôm sát mặt, chất thoáng khí nhẹ nhàng, thời trang. 

Khẩu trang kháng khuẩn Pitta kháng 99,9% vi khuẩn và hạt bụi mịn trong môi trường.

Có ưu điểm vượt trội:
- Cản gió, bụi trong không khí, đặc biệt cả cả bụi vi nhựa, phấn hoa...

- Cản gió lạnh, phòng chống nhiễm và cảm lạnh.

- Chống nắng và tia cực tím. Độ chống nắng giữ tới 99% cho dù đã giặt qua nhiều lần.

- Giặt lại dùng nhiều lần
- Chống tia Uv thiết kế ôm sát mặt, thoáng khí.
Lọc tối đa vi khuẩn và đặc biệt là khói, bụi mịn với tình trang ô nhiễm không khí nặng như hiện nay.', 100, N'Khẩu trang kháng khuẩn, chống UV Pitta cho người lớn', 180000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH016', N'4', N'YUW', N'khang.jpg', N'50g       ', N'Xịt kháng Virus bụi mịn IHADA Shiseido ngăn chặn virus, phấn hoa, bụi mịn PM2.5 cùng với sức mạnh của các ion.
Sử dụng xịt kháng khuẩn cực kỳ đơn giản chỉ cần xịt lên toàn bộ khuôn mặt và tóc,  polymer cation (cộng với ion) ngăn chặn sự xâm nhập từ mắt, mũi và miệng.
Ngoài ra, vì nó không chứa cồn, bạn có thể tự tin sử dụng nó cho trẻ nhỏ.

Sử dụng xịt kháng khuẩn trước khi vào nơi công cộng, đông người để tránh virus, bụi mịn, các loại vi khuẩn gây dị ứng.

Xịt kháng Virus bụi mịn IHADA Shiseido có thể dùng lên trên lớp trang điểm, dùng được cho bà bầu và trẻ nhỏ trên 3 tuổi. Sản phẩm xịt kháng virus đã được kiểm định không gây dị ứng da

Thành phần chính:

Ethanol, deliqu Parentium-51, Hyaluronic Natri, nước khoáng, tinh dầu tự nhiên

Cách sử dụng:

- Không nên lắc chai trước khi xịt

- Để lọ cách mặt 20cm xịt 1 lượng thích hợn lên tóc và da mặt (tránh để xịt vào trong mắt)

Lưu ý:

- Ngưng sử dụng khi có hiện tượng phát ban, đỏ, ngứa

- Đóng nắp sau khi sử dụng

- Tránh để lọ xịt vào nơi có ánh nắng trực tiếp', 100, N'Xịt kháng Virus bụi mịn, xịt khoáng đánh lùi vi khuẩn IHADA Shiseido', 480000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH017', N'4', N'TMIT', N'thedeo.png', N'231g      ', N'THẺ CHỨA CLO DIOXIDE SẼ PHÁT TÁN RA KHÔNG GIAN XUNG QUANH  DIỆT VIRUS, CHỐNG VIRUS & ALCOHOL LÀM SẠCH, KHỬ TRÙNG KHÔNG GIAN XUNG QUANH BẠN

Thẻ phát ra Chlorine Dioxide (CIO2) (natri clorit, zeolit tự nhiên) tạo ra một rào chắn xung quanh để loại bỏ các loại Virus, vi khuẩn,..

Thẻ đeo cổ TOAMIT loại bỏ virus, không gây mùi khó chịu thích hợp trong môi trường công cộng, nơi đông người, trên tàu điện, nhà xe, văn phòng, hay trường học...


Sản phẩm là một thẻ nhỏ hơn thẻ ngân hàng. Được gắn vào quần áo như bạn có thể gắn trên túi ngực, kẹp giữa các vật dụng trong túi, đặt trên bàn, treo trên gương chiếu hậu của ô tô, nó rất hữu ích trong nhiều nơi khác nhau –> Giảm đi sự hít phải virus, vi khuẩn và mùi hôi.

Thành phần: Chlorine Dioxide (CIO2) (natri clorit, zeolit tự nhiên)

Cách sử dụng:



- Tháo bộ phận chính ra khỏi túi, gắn nó vào dây đeo cổ kèm theo và hạ thấp nó khỏi cổ trước khi sử dụng.


- Có thể cài trước ngực áo

Lưu ý:

- Mỗi thẻ sử dụng được 30 ngày sau khi mở nắp

- Đề nghị sử dụng cùng với các biện pháp phòng chống bệnh khác như đeo khẩu trang để tránh những giọt nước bắn khi nói chuyện, rửa tay thường xuyên.

Quy cách:  1 tấm thẻ và 1 dây đeo cổ 

Kích thước thẻ: Ngang 55mm × Cao 80mm × Sâu 5mm', 100, N'Thẻ đeo diệt Virus kháng khuẩn TOAMIT Nhật Bản loại bỏ Virus trong không gian quanh cơ thể', 280000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH018', N'1', N'ALGAE', N'taonuocbien.jpeg', N'400g      ', N'Tảo Spirulina là gì?
Tảo Spirulina hay tảo xoắn là một loại vi tảo dạng xoắn màu xanh lục, sinh trưởng tự nhiên trong đại dương và các hồ nước mặn ở khu vực khí hậu cận nhiệt đới. Tảo Spirulina là thực phẩm giàu chất dinh dưỡng nhất trên trái đất, chứa đựng nhiều giá trị đối với sức khỏe người sử dụng.


Công dụng Tảo viên Spirulina nước biển sâu Japan Algae
1. Cung cấp hàm lượng dinh dưỡng cao

- Tảo có hàm lượng khoáng chất và dinh dưỡng rất cao hơn 60% protein tự nhiên, acid béo cần thiết dễ tiêu hoá. Được bào chế từ 100% nguồn nguyên liệu quý của tự nhiên, tảo viên được công nhận mang chất lượng, lành tính và là giải pháp đơn giản để bảo vệ sức khỏe cho mọi người.

2. Bồi bổ cơ thể, tăng cường sức khỏe và làm đẹp

- Tảo viên Spirulina vùng biển nước sâu cung cấp các vitamin và bổ sung các chất dinh dưỡng cần thiết cho cơ thể

3. Phù hợp cho mọi đối tượng sử dụng

- Tảo viên Spirulina vùng biển nước sâu là thực phẩm chức năng lành tính nên có thể uống nhiều mà không ảnh hưởng xấu đến sức khỏe. Tảo phù hợp với những người ăn ít rau quả, người ốm yếu, người cao tuổi, trẻ em lười ăn, phụ nữ có thai hoặc cho con bú.

Thành phần của Tảo viên Spirulina nước biển sâu Japan Algae
- Bột tảo Spirulina (thêm 10% tảo Spirulina tinh chất ở vùng nước biển sâu đảo Kumejima, Okinawa, Nhật Bản)

Thành phần

(100g) Tảo Spirulina Japan Algae +10% Deep Sea No.1

Calories

220 - 430 Kcal

Hàm lượng vitamin B1

1,6 - 4,8 mg

Hàm lượng protein

44,9 - 86,6 g

Hàm lượng vitamin B2

2,5 - 4,8 mg

Hàm lượng lipit

5,0 - 9,9 g

Hàm lượng vitamin B6

0,50 - 1,30 mg

Hàm lượng sugar

1,7 - 6,7 g

Hàm lượng vitamin B12

60,0 - 400 μg

Hàm lượng sodium

350 - 1733 mg

Hàm lượng vitamin E (a-tocopherol)

6,0 - 12,0 mg

Hàm lượng chất xơ (fiber)

5,0 - 12,0 g

Hàm lượng inositol

65 - 140 mg

Hàm lượng carotenoid tổng (total carotenoid)

200 - 450 mg

Hàm lượng folic acid

160 - 300 μg

Hàm lượng chlorophyll a

600 - 1250 mg

Hàm lượng biotin

20 - 45 μg

Hàm lượng phycocyanin

>3000 - 9000 mg

Hàm lượng γ-linolenic acid

900 - 1832 mg

Hàm lượng canxi (calcium)

60 - 600 mg

Hàm lượng linoleic acid

833 - 1666 mg

Hàm lượng sắt (iron)

60 - 115 mg

Hàm lượng selen (selenium)

4,98 - 9,96 μg

Hàm lượng kali (potassium)

1050 - 1800 mg

Hàm lượng iot (iodine)

0 – 1,7 mg

Hàm lượng magi (magnesium)

183 - 400 mg

Hàm lượng chrom (chromium)

0,5 - 3,3 ppm

Hàm lượng kẽm (zinc)

1,0 - 7,0 mg

Hàm lượng vitamin K1

1029 - 1926 μg

Hàm lượng đồng (copper)

0,17 - 0,83 mg

Hàm lượng vitamin K2

16,66 - 132,8 μg

Hàm lượng phốt pho (phosphorus)

550 - 1399 mg

Hàm lượng pantothenic acid

0,99 - 1,83 mg

Hàm lượng mangan (manganese)

1,5 - 8,0 mg

Hàm lượng niacin

11,62 - 19,92 mg

Hàm lượng b-Carotene

80.000 - 200.000 μg

 

 


Hướng dẫn sử dụng Tảo Spirulina nước biển sâu Japan Algae +10% Deep Sea
- Người lớn: Ngày uống từ 20 – 40 viên/ngày. Uống trước bữa ăn hoặc sau bữa ăn. (Có thể chia làm 2 lần hoặc uống 1 lần)

- Trẻ em (từ 5 tuổi trở lên): Ngày uống từ 10-20 viên/ngày

- Lưu ý khi sử dụng:

Sử dụng sản phẩm đúng hướng dẫn, không tự ý tăng liều dùng khi chưa có chỉ dẫn của chuyên gia y tế
Ngưng sử dụng và tham khảo tư vấn của chuyên gia y tế nếu xuất hiện bất cứ biểu hiện bất thường nào trong quá trình sử dụng sản phẩm
Đậy kín nắp sản phẩm sau khi sử dụng, bảo quản nơi khô thoáng, tránh tiếp xúc trực tiếp với ánh nắng mặt trời, để xa tầm tay trẻ em.
 *Lưu ý: Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh, hiệu quả sử dụng sản phẩm tùy thuộc cơ địa của từng người. Những bạn bệnh tim, huyết áp, hay phụ nữ có thai hoặc đang cho con bú nên tư vấn ý kiến bác sĩ trước khi sử dụng. ', 0, N'Japan Algae Tảo Spirulina Nước Biển Sâu +10% Deep Sea 1500 Viên', 730000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH019', N'1', N'ALGAE', N'algae-tao-depda.jpg', N'500g      ', N'Beauty Spirulina với thành phần giàu protein, các loại Vitamin A – Beta Carotene, Vitamin E, Magiê, SGF (Spirulina Growth Factor), lactic acid bacteria (lactobacillus acidophilus) cung nhiều loại vi khoáng, giúp cung cấp các chất dinh dưỡng, giúp làn da của chị em mịn màng, tươi trẻ, căng khỏe hơn, giảm các vết nám, sạm.

Tảo Beauty Spirulina Nhật Bản Đẹp Da, Ngừa Lão Hóa

Tảo Beauty Spirulina Nhật Bản - Làm đẹp da, ngăn ngừa lão hóa

Công dụng của Tảo Beauty Spirulina Nhật Bản
- Bổ sung Vitamin, chất dinh dưỡng giúp tăng cường sức đề kháng cho cơ thể

- Hỗ trợ cải thiện dấu hiệu tuổi tác với da, giúp làn da mịn màng, tươi trẻ cho phụ nữ

- Hỗ trợ cải thiện vóc dáng, giúp quá trình tiêu hóa tốt hơn, hỗ trợ thải độc một cách tự nhiên

- Cung cấp các Vitamin và bổ sung các chất dinh dưỡng cần thiết cho cơ thể

- Hỗ trợ cải thiện táo bón

Thành phần của Tảo Beauty Spirulina Nhật Bản
- Tảo Spirulina; magnesium oxide, lactic acid, bacterium, SGE (thành phần tảo Spirulina tinh chất).

- Thành phần dinh dưỡng: Calo; Protein; Chất béo; Carbohydratel; Muối ăn; Magnesium Oxide; Lactic acid bacterium; Carotenoid tổng; Chlorophyll a; Phycocyanin; B- Carotene; Vitamin B1; Vitamin B2; Vitamin B6; Vitamin B12; Vitamin E

Tảo Beauty Spirulina Nhật Bản Đẹp Da, Ngừa Lão Hóa

Hướng dẫn sử dụng Tảo Beauty spirulina
- Uống 10 viên/ ngày trước bữa ăn hoặc sau bữa ăn đều được

- Người có nhu cầu tăng cân nên uống 10 viên sau bữa ăn chính khoảng 30 phút. Người có nhu cầu giảm béo nên uống 5 viên/lần trước bữa ăn chính khoảng 30 phút.

Đối tượng sử dụng Tảo Beauty spirulina
- Dùng cho phụ nữ lớn tuổi, người làm việc bận rộn, ăn uống ít rau xanh, trái cây, trẻ em lứa tuổi dậy thì

- Thích hợp với những người mắc các bệnh: tiểu đường, béo phì, ăn kiêng, huyết áp cao, táo bón, tim mạch

- Dùng cho những người có nhu cầu dinh dưỡng da và tóc tốt

- Người lớn và trẻ em (từ 12 tuổi trở lên)

 *Lưu ý: Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh, hiệu quả sử dụng sản phẩm tùy thuộc cơ địa của từng người. Những bạn bệnh tim, huyết áp, hay phụ nữ có thai hoặc đang cho con bú nên tư vấn ý kiến bác sĩ trước khi sử dụng. ', 99, N'Japan Algae Tảo Beauty Spirulina Nhật Bản Đẹp Da, Ngừa Lão Hóa 550 Viên', 480000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH020', N'2', N'ALGAE', N'tieuhoa.jpeg', N'400g      ', N'Spirulina Spimate Plus chiết xuất từ 80% bột tảo Spirulina Nhật Bản cung cấp đầy đủ dưỡng chất cần thiết cho cơ thể. Đặc biệt, tảo Spirulina Spimate Plus còn bổ sung lợi khuẩn hỗ trợ hệ tiêu hóa khỏe mạnh, tăng cường đề kháng cho cơ thể

Tảo Spirulina Spimate Plus Nhật Bản Hỗ Trợ Tiêu Hóa

Công dụng Tảo Spirulina Spimate Plus Nhật Bản
- Cân bằng dinh dưỡng, bổ sung vitamin tăng sức đề kháng cho cơ thể

- Tăng cường các vi khuẩn có lợi cho đường ruột giúp nhuận trường

- Tốt cho hệ tiêu hóa, cải thiện tình trạng táo bón

- Làm đẹp da, ngừa thâm nám, mụn trúng cá

- Hỗ trợ làm chậm các dấu hiệu của tuổi tác

- Hỗ trợ ăn ngon miệng hơn

- Sản phẩm viên uống tảo xoắn spirulina được sản xuất bằng công nghệ tiên tiến độc quyền của Japan Algae có đặc điểm lành tính nên có thể sử dụng nhiều mà không làm ảnh hưởng xấu đến sức khỏe.

Thành phần Tảo Spirulina Spimate Plus Nhật Bản
80% bột tảo spirulina, vitamin C, lactic acid bacterium, chiết xuất lên men từ rau, củ, trái cây tươi (koso - làm từ 81 loại rau củ, trái cây tươi: xi-rô có chứa có đường loại hiếm, shekwasha (salete cam quýt), thanh long
Dứa, tankan họ cam quýt, sgf, angelica keiskei, amaranthus, thì là, ipomoea aquatica, cây nho
Hemero callis fulva, cải xoăn, cos rau diếp, zanthoxylum bee cheyanum, brassica juncea, sáp bầu
Glebionia coronaria, cần tây, măng tây rau diếp, ixeris dentata (crepidiast rum lanceolatum)
Cà rốt lá xanh, gynura bicolor, artemisia indica, củ cải đường, rau bina, peucedanum japonicum, cây chĩa ba
Bắp cải tím, củ cải tím nhật, đu đủ xanh, artemisia campestris linne, rau mùi tây ý, oregano, rau mùi, confrey
Salad burnet, húng quế, swiss chard, stevia, bạc hà lục, cây me chua, húng quế thái, bồ công anh
Sage dứa, mùi tây, ocimum minimum, bạc hà cay, mexican lippia (aztec sweet herb), yarrow
Thành phần dinh dưỡng (100g)

Dinh dưỡng (Calories)

260-484 Kcalo

Protein

43 - 80g

Chất béo

4.0 - 8.0g

Carbohydrates

12.0 - 24.0 g

Dietary Fiber

4.0 - 7.0%

Canxi

64 - 120 mg/100g

Sắt

14 - 28 mg/100g

beta carotene

90 - 170 mg/100g

Vitamin B1

0.8 - 1.7mg/100g

Vitamin B2

2.0 - 4.8mg/100g

Vitamin B6

0.6 - 1.2 mg/100g

Vitamin B12

130 - 250 mg/100g

Vitamin E

5.0 - 10.0 mg/100g

Đối tượng sử dụng Tảo Spirulina Spimate Plus Nhật Bản
- Người cao tuổi

- Người hay uống rượu bia, người có lịch sinh hoạt thất thường, ăn uống không ngon miệng

- Người cần tăng cường sức khỏe để làm việc

- Trẻ em lười ăn không đủ dinh dưỡng, rau xanh, trái cây mỗi ngày

Cách sử dụng Tảo Spirulina Spimate Plus Nhật Bản
- Người lớn: Ngày uống từ 10 - 20 viên/ngày.

- Trẻ em (từ 5 tuổi trở lên): Ngày uống từ 5-10 viên/ngày.

- Uống trước ăn với người muốn giảm cân, uống sau ăn với người muốn tăng cân. Uống với nhiều nước, có thể chia làm 2 lần hoặc uống 1 lần

- Nên uống nhiêu nước khi dùng

- Bảo quản ở nơi khô ráo, đậy kín, tránh ánh nắng mặt trời

 *Lưu ý: Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh, hiệu quả sử dụng sản phẩm tùy thuộc cơ địa của từng người. Những bạn bệnh tim, huyết áp, hay phụ nữ có thai hoặc đang cho con bú nên tư vấn ý kiến bác sĩ trước khi sử dụng. ', 100, N'Spirulina Spimate Plus Hỗ Trợ Tốt Nhất Cho Hệ Tiêu Hóa 600 Viên', 610000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH021', N'5', N'82X', N'nuocuongmashino.jpg', N'500ml     ', N'Collagen 82X 120.000mg Của Nhật sử dụng 82 loại thực vật lên men tự nhiên, trải qua nhiều quá trình tinh lọc, chiết xuất giúp bổ sung lượng Collagen thiếu hụt hàng ngày giúp tăng cường độ đàn hồi của da, giúp da căng mịn và trắng sáng.

Tác dụng
- Collagen 82X 120000mg giúp da phục hồi khả năng đàn hồi tự nhiên thấy rõ, vết nhăn dần biến mất, làn da trở nên săn chắc và mịn màng. Ngăn da chảy xệ, làm căng mịn làn da và làm mờ các vết nám.

- Chống oxy hóa, tiêu diệt gốc tự do gây hại và ức chế hắc tố melanin, cải thiện làn da trắng sáng, tươi tắn, loại bỏ vẻ xỉn màu, đốm nâu, tàn nhang trên bề mặt da

- Cải thiện da nhăn nheo, kém đàn hồi và duy trì độ ẩm cần thiết cho làn da mềm mại, dẻo dai

- Tăng cường collagen tự nhên cho cơ thể chống lão hóa, ngăn ngừa nếp nhăn và duy trì làn da săn chắc, mịn màng không chảy xệ

- Đối với mắt: Uống Collagen 82X giúp hạn chế bệnh đục thuỷ tinh thể mắt do chất Amino bị lão hoá.

- Đối với móng, tóc: Collagen cung cấp dinh dưỡng hỗ trợ cho chất sừng có trong tóc, móng tay, móng chân, giúp tóc và móng bóng mượt, chắc khoẻ và hạn chế rụng tóc.

- Chống loãng xương, sụn khớp chắc khỏe, giảm các triệu chứng đau nhức xương khớp, viêm khớp, khô khớp...

Thành phần:
- 120.000mg Collagen peptide từ cá: tăng độ đàn hồi, giảm vết nhăn, chắc xương khớp, sụn, khỏe tóc, ngừa đục thủy tinh thể

- Chiết xuất 82 loại thực vật lên men (táo, chuối, cam, kiwi, vừng, đậu nành, hạt điều,...): Gồm các loại vitamin, chất khoáng, amino axit, flavonoid, các axit có lợi giúp chống oxy hóa, thúc đẩy hệ miễn dịch, cải thiện đường ruột, giảm cholesterol và triglycerides.

- Chiết xuất hoa anh đào: làm se lỗ chân lông, cân bằng nhờn, duy trì vẻ mịn màng

- Elastin thủy phân, Hyaluronic acid: kết hợp với collagen tạo thành lưới sợi liên kết để định hình cấu trúc da, chống chảy xệ, tăng cường độ ẩm cho da, ngăn ngừa nếp nhăn

- Glucosamine: Thúc đẩy phát triển sụn, tăng cường dịch bôi trơn khớp

- Vitamin E, B1, B2, B6, D: Giúp da tươi trẻ, chống lão hóa, chắc khỏe xương

Hướng dẫn sử dụng:
Mỗi ngày uống 25ml Collagen 82x 120000mg vào buổi sáng hoặc tối trước khi đi ngủ

 *Lưu ý: Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh, hiệu quả sử dụng sản phẩm tùy thuộc cơ địa của từng người. Những bạn bệnh tim, huyết áp, hay phụ nữ có thai hoặc đang cho con bú nên tư vấn ý kiến bác sĩ trước khi sử dụng. ', 100, N'82x Nước uống Collagen Mashiro Classic New 120.000mg 500ml', 2045000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH022', N'2', N'82X', N'nhauheo.jpeg', N'500ml     ', N'Placenta 82x 450.000mg được rất nhiều các tín đồ làm đẹp và ngay cả những người nổi tiếng săn lùng bởi khả năng chăm sóc sức khỏe, và dưỡng trắng da trắng mịn, làm mờ đi các vết nám, tàn nhanh chỉ trong khoảng thời gian ngắn.

Thành phần chính của 82x placenta
Chiết xuất nhau thai heo hàm lượng 450.000mg
collagen peptide từ cá (chứa gelatin) hàm lượng 15.000mg
Chiết xuất 82x placenta loại thực vật lên men (táo, chuối, cam, kiwi, đậu nành, hạt điều, …) hàm lượng 5.000mg
Chiết xuất mầm nho (chứa resveratrol) hàm lượng 500mg
8 loại bột thảo mộc (dextrin, quế, licorice, Mallotus japonicus, thì là, cây đinh hương, Gừng, gừng Kintoki hàm lượng 50mg
Chiết xuất từ quả dứa có chứa ceramide hàm lượng 200mg
Elastin thủy phân hàm lượng 150mg
Chiết xuất tổ yến hàm lượng 20mg
Coenzyme Q10 hàm lượng 25mg
Công dụng của 82x placenta

82x placenta 450.000mg giúp hỗ trợ làm mờ các dấu vết của thời gian trên da, đặc biệt là với những chị em đã bắt đầu bước sang tuổi 30.
Hỗ trợ làm giảm sắc tố của nám, tàn nhang.
Vết thâm nám, sẽ được cải thiện bởi một làn da căng mịn, trắng sáng chỉ sau một thời gian ngắn dùng
Sản phẩm giúp làm đầy lớp đệm ở bề mặt của da, từ đó khiến cho vùng da nhăn ở quanh miệng, mắt trở nên căng mịn và đầy đặn hơn
Hỗ trợ tăng sức đề kháng cho da, hỗ trợ và bảo vệ làm da khỏi những tác hại từ môi trường, tia UC, mang lại sức sống cho làn da của bạn.
Giảm những dị ứng, kích ứng ở da nhạy cảm.
Ngoài ra, sản phẩm 82x placenta còn có khả năng hỗ trợ phục hồi mệt mỏi, suy nhược, thúc đẩy hoạt động của hệ tiêu hóa tốt, hỗ trợ tim mạch khỏe mạnh hơn.
Hướng dẫn sử dụng tinh chất nhau thai heo 82x placenta
Uống 15ml mỗi ngày.
Vào buổi sáng nếu bạn cần thêm năng lượng để hoạt động cho cả ngày
Vào buổi tối nếu bạn cần chăm sóc da và sửa chữa các khuyết điểm trên da
Bởi sản phẩm sử dụng thành phần tự nhiên do đó cần bảo quản trong tủ lạnh để chất lượng được đảm bảo và sử dụng được ngon hơn.
Trước khi sử dụng nên lắc đều trước khi uống và vặn nắp kỹ sau khi sử dụng. Tuyệt đối không để sản phẩm hở ngoài môi trường trong thời gian dài, chúng sẽ là nguyên nhân khiến 82x placenta bị oxy hóa gây hỏng.
 *Lưu ý: Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh, hiệu quả sử dụng sản phẩm tùy thuộc cơ địa của từng người. Những bạn bệnh tim, huyết áp, hay phụ nữ có thai hoặc đang cho con bú nên tư vấn ý kiến bác sĩ trước khi sử dụng. ', 100, N'82x Nước Uống Placenta 450.000mg Tinh Chất Nhau Thai Heo 500ml', 2345000)
INSERT [dbo].[hang_hoa] ([id], [the_loai_id], [thuong_hieu_id], [anh], [khoi_luong], [mo_ta], [so_luong_ton], [ten], [gia]) VALUES (N'HH023', N'1', N'82X', N'82xsakura.jpg', N'500g      ', N'Giới thiệu sản phẩm Nước uống 82x Collagen Sakura Premium 120000mg 500ml
Thương Hiệu

82x

Xuất Xứ Thương Hiệu

Nhật Bản

Dòng Sản Phẩm

Nước uống làm đẹp

Quy Cách Đóng Gói

Chai 500ml

Độ Tuổi Phù Hợp	
Người từ 18 tuổi trở lên.
Hướng Dẫn Bảo Quản	
Bảo quản nơi khô thoáng, tránh nhiệt độ cao.
Sau khi mở nắp, luôn bảo quản trong ngăn mát tủ lạnh.
 
Nước uống 82x Collagen Sakura Premium Nhật Bản phiên bản cải tiến mới 2020 được bổ sung thêm các dưỡng chất chăm sóc da. Đặc biệt hơn là thành phần 82x Collagen cung cấp nhiều vitamin và khoáng chất thiết yếu giúp hỗ trợ duy trì cơ thể khoẻ mạnh và làn da tươi trẻ, trắng hồng tự nhiên. Nước uống 82x Collagen Sakura Premium 120000mg là thực phẩm bổ sung được sản xuất 100% tại Nhật Bản. Đây cũng là bí quyết làm đẹp của phụ nữ Nhật và đã có mặt tại Việt Nam. Ưu điểm của loại nước uống đẹp da này là ”3 không”: Không gây nóng trong người – Không tăng cân – Không nổi mụn.
 
Đặc điểm sản phẩm
Công dụng:
Tăng độ đàn hồi và săn chắc da, xóa các nếp nhăn, chân chim hiệu quả gấp 5 lần so với collagen thông thường.
Giúp chống lại tia UV và chống oxy hóa.
Kích thích da trắng hồng tự nhiên, xóa bỏ vùng da thâm sạm và không bắt nắng trở lại.
Cung cấp nước và duy trì độ ẩm cho da, xóa bỏ tình trạng khô, bong tróc da, tránh đổ dầu nhờn trong mọi hoàn cảnh, thời tiết.
Giúp se khít lỗ chân lông, mang lại làn da căng mịn và mượt mà.
Kiềm chế cơn thèm ăn và tạo cảm giác nhanh no, giúp nhanh chóng lấy lại cơ thể săn chắc, gọn gàng và quyến rũ.
Trẻ hóa cơ thể, hỗ trợ tăng cường sức khoẻ của cơ thể trước các vấn đề do tuổi tác, giúp xương khớp chắc khoẻ, dẻo dai.
Cải thiện hệ miễn dịch, làm giảm mỡ máu và tăng tuần hoàn máu.
Giảm nguy cơ các bệnh về mắt.
Giúp xoa dịu tinh thần, hỗ trợ cải thiện giấc ngủ góp phần mang lại cơ thể tươi trẻ.', 98, N'Nước uống 82x Collagen Sakura Premium 120000mg 500ml', 2300000)
INSERT [dbo].[phieu_dat_hang] ([id], [ngay_lap], [tong_tien], [tai_khoan_id], [trangthai]) VALUES (N'PDH04410', CAST(N'2021-10-13' AS Date), 2200000, N'KH002', 1)
INSERT [dbo].[phieu_dat_hang] ([id], [ngay_lap], [tong_tien], [tai_khoan_id], [trangthai]) VALUES (N'PDH13324', CAST(N'2021-10-13' AS Date), 2200000, N'KH001', 3)
INSERT [dbo].[phieu_dat_hang] ([id], [ngay_lap], [tong_tien], [tai_khoan_id], [trangthai]) VALUES (N'PDH14241', CAST(N'2021-10-12' AS Date), 2750000, N'KH002', 2)
INSERT [dbo].[phieu_nhap_hang] ([id], [ngay_lap], [tong_tien], [tai_khoan_id], [trangthai]) VALUES (N'PNH001  ', CAST(N'2021-10-13' AS Date), 530000, N'NV001', 1)
INSERT [dbo].[phieu_nhap_hang] ([id], [ngay_lap], [tong_tien], [tai_khoan_id], [trangthai]) VALUES (N'PNH002 ', CAST(N'2021-10-13' AS Date), 535000, N'NV001', 1)
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'KH001', N'Bến Tre', N'khanhvuong2015@gmail.com', N'Diếp Khánh Vương', N'123', N'0385544754', N'CUSTOMER', N'vuong123', N'khanhvuong.jpg')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'KH002', N'Bến Tre', N'n17dccn191@student.ptithcm.edu.vn', N'Diếp Khánh Vương', N'456', N'0385544754', N'CUSTOMER', N'vuongdiep', N'avtcr7.jpg')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'KH003', N'Ben Tre', N'n17dccn191@student.ptithcm.edu.vn', N'Diep Khanh Vuong', N'123', N'0385544754', N'CUSTOMER', N'user', N'user.png')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'KH004', N'Ben Tre', N'khanhvuong2015@gmail.com', N'Diep Khanh Vuong', N'123', N'0385544754', N'CUSTOMER', N'kv', N'khanhvuong.jpg')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'KH007', N'Ba Tri - Bến Tre', N'khanhvuong2015@gmail.com', N'Diếp Khánh Vương', N'123', N'0385554475', N'CUSTOMER', N'vuong1245', N'')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'NV000', N'TPHCM', N'diepkvuong3012@gmail.com', N'Diep Khanh Vuong', N'123', N'0385544754', N'ADMIN', N'admin', N'khanhvuong.jpg')
INSERT [dbo].[tai_khoan] ([id], [dia_chi], [email], [ho_ten], [password], [sdt], [quyen], [username], [anh]) VALUES (N'NV001', N'Bến Tre', N'khanhvuong2015@gmail.com', N'Diếp Khánh Vương', N'123', N'0385544754', N'STAFF', N'vuong1234', N'khanhvuong.jpg')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'1', N'Thực phẩm chức năng')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'2', N'Chăm sóc sức khỏe')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'3', N'Vệ sinh nhà cửa')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'4', N'Phòng dịch Covid')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'5', N'Chăm sóc cơ thể')
INSERT [dbo].[the_loai] ([Id], [ten]) VALUES (N'6', N'Mẹ và bé')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'82X', N'82X SAKURA', N'82x.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'AFRESH ', N'AQUAFRESH ', N'AQUAFRESH.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'ALGAE', N'Algae Japan', N'japan-algae.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'CHU', N'CHUCHU BABY', N'chuchu.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'FINEJPA', N'FINE JAPAN', N'Fine.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'IHA', N'IHADA', N'ihada.jpg')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'KINO', N'KINOHIMITSU', N'Kino.jpg')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'OEM', N'OEM JAPAN', N'oem.jpg')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'ORI', N'ORIHIRO', N'Orihiro.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'PITA', N'PITTA', N'pitta.jpg')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'TMIT', N'TOAMIT', N'toamit.png')
INSERT [dbo].[thuong_hieu] ([Id], [ten], [anh]) VALUES (N'YUW', N'YUWA', N'yuwa.jpg')
INSERT [dbo].[tin_tuc] ([Id], [chu_de], [anh], [noi_dung], [ngay_dang], [tai_khoan_id]) VALUES (N'TT001', N'Viên ngậm lợi khuẩn ChuChuBaby', N'vienngam.jpeg', N'Viên ngậm lợi khuẩn ChuChuBaby - Thơm ngon, răng sạch khuẩn

Siêu Thị Nhật Bản Japana là thương hiệu đã luôn đồng hành cùng các nhãn hàng, nghệ sĩ nổi tiếng

Điểm nổi bật của viên ngậm lợi khuẩn ChuChuBaby:
Vị ngọt tự nhiên từ xylitol
Viên ngậm lợi khuẩn có vị ngọt tự nhiên từ xylitol không chứa đường, các vi khuẩn có hại không có khả năng tấn công men răng bé.

Khi ngậm kẹo, khả năng tiêu diệt tới 99.9% vi khuẩn sâu răng và 100% vi khuẩn gây bệnh.

Viên ngậm lợi khuẩn
Viên ngậm có chứa lợi khuẩn L8020 - một loại vi khuẩn acid lactic có lợi cho khoang miệng của bé. Lợi khuẩn này được tiến sĩ Nikawa (Đại học Hiroshima - Nhật Bản) tìm thấy trong khoang miệng của những người khỏe mạnh, không bị sâu răng và bệnh về răng.

Lợi khuẩn ức chế vi khuẩn có hại, tăng cường vi khuẩn có lợi, ngăn ngừa men răng bị phá hủy, giúp cho răng miệng khỏe mạnh hơn.

Viên ngậm lợi khuẩn ChuChuBaby (Vị sữa chua)
Giữ khoang miệng luôn khỏe mạnh
Viên ngậm còn giúp cải thiện độ pH môi trường miệng từ acid sang trung tính, giữ cho môi trường khoang miệng luôn được khỏe mạnh. Bé thoải mái tươi cười, mẹ cũng an tâm hơn khi cho bé sử dụng.

Hương vị kẹo thơm ngon
Vien ngậm với 3 vị để bé dễ dàng lựa chọn theo sở thích: Vị sữa chua, vị dâu và nho sẽ hấp dẫn các bé khi sử dụng, với tác dụng làm sạch khoang miệng, loại bỏ hoàn toàn các vi khuẩn gây hại mà việc đánh răng thông thường không thể làm sạch.​
', CAST(N'2021-09-10' AS Date), NULL)
INSERT [dbo].[tin_tuc] ([Id], [chu_de], [anh], [noi_dung], [ngay_dang], [tai_khoan_id]) VALUES (N'TT002', N'Khẩu trang kháng khuẩn', N'khautrang.jpg', N'Khẩu trang kháng khuẩn Pitta kháng 99,9% vi khuẩn và hạt bụi mịn trong môi trường.

Có ưu điểm vượt trội:
- Cản gió, bụi trong không khí, đặc biệt cả cả bụi vi nhựa, phấn hoa...

- Cản gió lạnh, phòng chống nhiễm và cảm lạnh.

- Chống nắng và tia cực tím. Độ chống nắng giữ tới 99% cho dù đã giặt qua nhiều lần.

- Giặt lại dùng nhiều lần
- Chống tia Uv thiết kế ôm sát mặt, thoáng khí.
Lọc tối đa vi khuẩn và đặc biệt là khói, bụi mịn với tình trang ô nhiễm không khí nặng như hiện nay', CAST(N'2021-09-06' AS Date), NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tai_khoan]    Script Date: 10/14/2021 7:40:47 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tai_khoan] ON [dbo].[tai_khoan]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ct_gianhap]  WITH CHECK ADD  CONSTRAINT [FK21m05frx1tcvkmmqitpeb4see] FOREIGN KEY([idhanghoa])
REFERENCES [dbo].[hang_hoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ct_gianhap] CHECK CONSTRAINT [FK21m05frx1tcvkmmqitpeb4see]
GO
ALTER TABLE [dbo].[ct_phieu_dat_hang]  WITH CHECK ADD  CONSTRAINT [FKcs1gf28fcl2sxne286nr27wu0] FOREIGN KEY([id_phieudh])
REFERENCES [dbo].[phieu_dat_hang] ([id])
GO
ALTER TABLE [dbo].[ct_phieu_dat_hang] CHECK CONSTRAINT [FKcs1gf28fcl2sxne286nr27wu0]
GO
ALTER TABLE [dbo].[ct_phieu_dat_hang]  WITH CHECK ADD  CONSTRAINT [FKdnqf11o3qb5c1q2r75h5wtic5] FOREIGN KEY([idhh])
REFERENCES [dbo].[hang_hoa] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ct_phieu_dat_hang] CHECK CONSTRAINT [FKdnqf11o3qb5c1q2r75h5wtic5]
GO
ALTER TABLE [dbo].[ct_phieu_nhap_hang]  WITH CHECK ADD  CONSTRAINT [FK70jdraqs3004gltnnucwvevpm] FOREIGN KEY([id_phieunh])
REFERENCES [dbo].[phieu_nhap_hang] ([id])
GO
ALTER TABLE [dbo].[ct_phieu_nhap_hang] CHECK CONSTRAINT [FK70jdraqs3004gltnnucwvevpm]
GO
ALTER TABLE [dbo].[ct_phieu_nhap_hang]  WITH CHECK ADD  CONSTRAINT [FKf6n2h6r9g5ccceyju28wmht5q] FOREIGN KEY([idhh])
REFERENCES [dbo].[hang_hoa] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ct_phieu_nhap_hang] CHECK CONSTRAINT [FKf6n2h6r9g5ccceyju28wmht5q]
GO
ALTER TABLE [dbo].[hang_hoa]  WITH CHECK ADD  CONSTRAINT [FKf6n2h6r9g5ccceyju28wmhtht] FOREIGN KEY([thuong_hieu_id])
REFERENCES [dbo].[thuong_hieu] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[hang_hoa] CHECK CONSTRAINT [FKf6n2h6r9g5ccceyju28wmhtht]
GO
ALTER TABLE [dbo].[hang_hoa]  WITH CHECK ADD  CONSTRAINT [FKf6n2h6r9g5ccceyju28wmhtkf] FOREIGN KEY([the_loai_id])
REFERENCES [dbo].[the_loai] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[hang_hoa] CHECK CONSTRAINT [FKf6n2h6r9g5ccceyju28wmhtkf]
GO
ALTER TABLE [dbo].[phieu_dat_hang]  WITH CHECK ADD  CONSTRAINT [FKksw4sa2pbdg2gjn9mr0dc2q4q] FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[tai_khoan] ([id])
GO
ALTER TABLE [dbo].[phieu_dat_hang] CHECK CONSTRAINT [FKksw4sa2pbdg2gjn9mr0dc2q4q]
GO
ALTER TABLE [dbo].[phieu_nhap_hang]  WITH CHECK ADD  CONSTRAINT [FK5jgt7j9vus9ah8ya0xvg76702] FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[tai_khoan] ([id])
GO
ALTER TABLE [dbo].[phieu_nhap_hang] CHECK CONSTRAINT [FK5jgt7j9vus9ah8ya0xvg76702]
GO
ALTER TABLE [dbo].[tin_tuc]  WITH CHECK ADD  CONSTRAINT [FK_tin_tuc_tai_khoan] FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[tai_khoan] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tin_tuc] CHECK CONSTRAINT [FK_tin_tuc_tai_khoan]
GO
/****** Object:  StoredProcedure [dbo].[CHITIETNHAPHANG_PHIEUNHAPHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CHITIETNHAPHANG_PHIEUNHAPHANG]
@ID VARCHAR(8)
AS
SELECT * FROM ct_phieu_nhap_hang WHERE id_phieunh = @ID






GO
/****** Object:  StoredProcedure [dbo].[DELETE_CTGIANHAP]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETE_CTGIANHAP]
@NGAY DATE,
@IDHH VARCHAR(8)
AS
BEGIN
	DELETE ct_gianhap WHERE ngayapdung = @NGAY AND idhanghoa = @IDHH
	SELECT 'TRUE'
END






GO
/****** Object:  StoredProcedure [dbo].[INSERT_CTGIANHAP]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERT_CTGIANHAP]
@IDHH VARCHAR(8),
@NGAY DATE,
@GIA int
AS
BEGIN
	INSERT ct_gianhap(ngayapdung,gia,idhanghoa) VALUES (@NGAY,@GIA,@IDHH)
	SELECT 'TRUE'
END






GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTHANGHOA]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_COUNTHANGHOA]
@MAHH VARCHAR(8)
AS
BEGIN
	declare @sl int = 0

	select @sl = count(*) from ct_phieu_nhap_hang where idhh = @MAHH
	select @sl = @sl +  count(*) from ct_phieu_dat_hang where idhh = @MAHH
	select @sl = @sl +  count(*) from ct_gianhap where idhanghoa = @MAHH

	select soluong = @sl
END






GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTNV]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_COUNTNV]
@MANV VARCHAR(8)
AS
BEGIN
	declare @sl int = 0

	select @sl = count(*) from phieu_dat_hang where tai_khoan_id = @MANV
	select @sl = @sl + count(*) from phieu_nhap_hang where tai_khoan_id = @MANV

	select soluong = @sl
END






GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTPHIEUDATHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_COUNTPHIEUDATHANG]
@ID VARCHAR(8)
AS
BEGIN
	declare @sl int = 0

	select @sl = count(*) from ct_phieu_dat_hang where id_phieudh = @ID
	select soluong = @sl
END






GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTPHIEUNHAPHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_COUNTPHIEUNHAPHANG]
@ID VARCHAR(8)
AS
BEGIN
	declare @sl int = 0

	select @sl = count(*) from ct_phieu_nhap_hang where id_phieunh = @ID
	select soluong = @sl
END






GO
/****** Object:  StoredProcedure [dbo].[SP_GIANHAPHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GIANHAPHANG]
@ID VARCHAR(8)
AS
SELECT TOP(1) idHH,gia = isnull(H.gia,0),ngayapdung FROM hang_hoa
LEFT JOIN
(SELECT idHH = idhanghoa,gia,ngayapdung  FROM ct_gianhap WHERE idhanghoa = @ID )H
ON h.idHH = hang_hoa.id
ORDER BY h.ngayapdung DESC






GO
/****** Object:  StoredProcedure [dbo].[SP_THONGKETHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_THONGKETHANG]
@THANG INT,
@NAM INT
AS
BEGIN
	SELECT THANG,ID,TEN,TONG FROM hang_hoa,
	(SELECT THANG,idhh,TONG = SUM(so_luong) FROM ct_phieu_dat_hang,
				(SELECT THANG = CONCAT(CONVERT(VARCHAR,@THANG),'/',CONVERT(VARCHAR,@NAM)),ID 
				FROM phieu_dat_hang
				WHERE trangthai = 2  AND @THANG = MONTH(ngay_lap) AND @NAM = YEAR (ngay_lap))DATHANG
	WHERE DATHANG.ID = ct_phieu_dat_hang.id_phieudh
	GROUP BY idhh,THANG) BANRA
	WHERE BANRA.idhh = ID
END





GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CTGIANHAP]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATE_CTGIANHAP]
@NGAY DATE,
@IDHH VARCHAR(8),
@GIA INT
AS
BEGIN
	UPDATE ct_gianhap SET gia = @GIA WHERE ngayapdung = @NGAY AND idhanghoa = @IDHH
	SELECT 'TRUE'
END






GO
/****** Object:  Trigger [dbo].[UPDATE_SOLUONGTON_DATHANG_INSERT]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UPDATE_SOLUONGTON_DATHANG_INSERT]
ON [dbo].[ct_phieu_dat_hang]
FOR INSERT
AS
BEGIN
	
	DECLARE @TRANGTHAI INT

	SELECT @TRANGTHAI = phieu_dat_hang.trangthai
	FROM inserted,phieu_dat_hang
	WHERE inserted.id_phieudh = phieu_dat_hang.id

	IF (@TRANGTHAI > -1)
	BEGIN
		DECLARE @SLDATHANG INT
		DECLARE @TON INT
		DECLARE @ID VARCHAR(8)

		SELECT @TON = hang_hoa.so_luong_ton, @SLDATHANG = inserted.so_luong,@ID = hang_hoa.id 
		FROM hang_hoa,inserted WHERE hang_hoa.id = inserted.idhh

		IF (@SLDATHANG > @TON)
		BEGIN
			RAISERROR('Không đủ hàng',16,1)
			ROLLBACK
		END

		SET @TON = @TON - @SLDATHANG

		UPDATE hang_hoa SET so_luong_ton = @TON WHERE hang_hoa.id = @ID
	END

	
END

GO
/****** Object:  Trigger [dbo].[UDPATE_SOLUONGTON_DELETE]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--tên hàng hóa,số lượng  tồn, id hàng hóa,tổng doanh thu, số lượng bán ra,tháng


--SELECT NHAP.id,NHAP.ten,TON = NHAP.TONG - XUAT.TONG
--FROM

--(SELECT id,ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT hang_hoa.id, ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT  idhh,so_luong, thanh_tien FROM ct_phieu_nhap_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) H
--GROUP BY ten,id)  NHAP,


--(SELECT id, ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT id,ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT idhh,so_luong, thanh_tien FROM ct_phieu_dat_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) K
--GROUP BY ten,id) XUAT

--WHERE NHAP.id = XUAT.id

--UPDATE hang_hoa SET so_luong_ton = 10 WHERE id = 'HDD004'


CREATE TRIGGER [dbo].[UDPATE_SOLUONGTON_DELETE] ON [dbo].[ct_phieu_nhap_hang]
FOR DELETE
AS
BEGIN
	DECLARE @TON INT
	DECLARE @ID VARCHAR(8)

	--lấy số lượng tồn hiện tại
	SELECT @TON = so_luong_ton, @ID = deleted.idhh
	FROM hang_hoa,deleted
	WHERE deleted.idhh = hang_hoa.id

	--LẤY SỐ LƯỢNG MỚI
	SELECT @TON = @TON - deleted.so_luong
	FROM deleted

	IF (@TON < 0) 
	BEGIN
		RAISERROR('Không thể xóa mẫu tin này',16,1)
		ROLLBACK
	END
	--UPDATE SỐ LƯỢNG TỒN
	UPDATE hang_hoa SET so_luong_ton = @TON WHERE hang_hoa.id = @ID


END

GO
/****** Object:  Trigger [dbo].[UDPATE_SOLUONGTON_INSERT]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--tên hàng hóa,số lượng  tồn, id hàng hóa,tổng doanh thu, số lượng bán ra,tháng


--SELECT NHAP.id,NHAP.ten,TON = NHAP.TONG - XUAT.TONG
--FROM

--(SELECT id,ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT hang_hoa.id, ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT  idhh,so_luong, thanh_tien FROM ct_phieu_nhap_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) H
--GROUP BY ten,id)  NHAP,


--(SELECT id, ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT id,ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT idhh,so_luong, thanh_tien FROM ct_phieu_dat_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) K
--GROUP BY ten,id) XUAT

--WHERE NHAP.id = XUAT.id

--UPDATE hang_hoa SET so_luong_ton = 10 WHERE id = 'HDD004'

CREATE TRIGGER [dbo].[UDPATE_SOLUONGTON_INSERT] ON [dbo].[ct_phieu_nhap_hang]
FOR INSERT
AS
BEGIN
	DECLARE @TON INT
	DECLARE @ID VARCHAR(8)

	--lấy số lượng tồn hiện tại
	SELECT @TON = so_luong_ton, @ID = inserted.idhh
	FROM hang_hoa,inserted
	WHERE inserted.idhh = hang_hoa.id

	--LẤY SỐ LƯỢNG MỚI
	SELECT @TON = @TON + inserted.so_luong
	FROM inserted

	--UPDATE SỐ LƯỢNG TỒN
	UPDATE hang_hoa SET so_luong_ton = @TON WHERE hang_hoa.id = @ID


END

GO
/****** Object:  Trigger [dbo].[UDPATE_SOLUONGTON_UPDATE]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--tên hàng hóa,số lượng  tồn, id hàng hóa,tổng doanh thu, số lượng bán ra,tháng


--SELECT NHAP.id,NHAP.ten,TON = NHAP.TONG - XUAT.TONG
--FROM

--(SELECT id,ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT hang_hoa.id, ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT  idhh,so_luong, thanh_tien FROM ct_phieu_nhap_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) H
--GROUP BY ten,id)  NHAP,


--(SELECT id, ten,TONG = SUM(SOLUONG), TONGTIEN = SUM(thanh_tien)
--FROM
--	(SELECT id,ten,  SOLUONG = ISNULL(TEMP.so_luong,0),THANH_TIEN = ISNULL(thanh_tien,0)
--	FROM hang_hoa
--	LEFT JOIN (SELECT idhh,so_luong, thanh_tien FROM ct_phieu_dat_hang) TEMP
--	ON hang_hoa.id = TEMP.idhh) K
--GROUP BY ten,id) XUAT

--WHERE NHAP.id = XUAT.id

--UPDATE hang_hoa SET so_luong_ton = 10 WHERE id = 'HDD004'


CREATE TRIGGER [dbo].[UDPATE_SOLUONGTON_UPDATE] ON [dbo].[ct_phieu_nhap_hang]
FOR UPDATE
AS
BEGIN

	IF (UPDATE(so_luong))
	BEGIN
		DECLARE @TON INT
		DECLARE @ID VARCHAR(8)

		--lấy số lượng tồn hiện tại
		SELECT @TON = so_luong_ton, @ID = deleted.idhh
		FROM hang_hoa,deleted
		WHERE deleted.idhh = hang_hoa.id

		--LẤY SỐ LƯỢNG MỚI
		SELECT @TON = @TON + inserted.so_luong
		FROM inserted

		SELECT @TON = @TON - deleted.so_luong
		FROM deleted

		IF (@TON < 0) 
		BEGIN
			RAISERROR('Không thể cập nhật mẫu tin này',16,1)
			ROLLBACK
		END
		--UPDATE SỐ LƯỢNG TỒN
		UPDATE hang_hoa SET so_luong_ton = @TON WHERE hang_hoa.id = @ID
	END
	


END

GO
/****** Object:  Trigger [dbo].[UPDATE_SOLUONGTON_HUYDON_DATHANG]    Script Date: 10/14/2021 7:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UPDATE_SOLUONGTON_HUYDON_DATHANG]
ON [dbo].[phieu_dat_hang]
FOR INSERT, UPDATE
AS
BEGIN
	
	DECLARE @TRANGTHAI INT

	SELECT @TRANGTHAI = inserted.trangthai
	FROM inserted,ct_phieu_dat_hang
	WHERE inserted.id = ct_phieu_dat_hang.id_phieudh

	IF (@TRANGTHAI = -1)
	BEGIN
		DECLARE @SLDATHANG INT
		DECLARE @TON INT
		DECLARE @ID VARCHAR(8)

		SELECT @TON = hang_hoa.so_luong_ton, @SLDATHANG = ct_phieu_dat_hang.so_luong,
		@ID = hang_hoa.id 
		FROM hang_hoa,ct_phieu_dat_hang WHERE hang_hoa.id = ct_phieu_dat_hang.idhh

		SET @TON = @TON + @SLDATHANG

		UPDATE hang_hoa SET so_luong_ton = @TON WHERE hang_hoa.id = @ID
	END
END

GO
USE [master]
GO
ALTER DATABASE [AppQuanLy] SET  READ_WRITE 
GO
