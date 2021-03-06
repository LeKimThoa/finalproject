USE [VIECLAM]
GO
/****** Object:  Table [dbo].[NhaTuyenDung]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaTuyenDung](
	[MaNhaTuyenDung] [bigint] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[TenCongTy] [nvarchar](255) NOT NULL,
	[SDT] [char](12) NOT NULL,
	[MaSoThue] [char](12) NULL,
	[ThanhPhoHoatDong] [bigint] NOT NULL,
	[QuanHuyenHoatDong] [bigint] NOT NULL,
	[DiaChiHoatDong] [nvarchar](255) NOT NULL,
	[AnhDaiDien] [image] NULL,
	[MaNghe] [bigint] NOT NULL,
	[MoTaCongTy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaTuyenDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KiNang]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiNang](
	[MaKiNang] [int] IDENTITY(1,1) NOT NULL,
	[Tenkinang] [nvarchar](250) NULL,
 CONSTRAINT [PK_KiNang] PRIMARY KEY CLUSTERED 
(
	[MaKiNang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinDiaDiem]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDiaDiem](
	[MaThanhPho] [bigint] NOT NULL,
	[MaQuanHuyen] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhPho] ASC,
	[MaQuanHuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UngVien]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UngVien](
	[MaUngVien] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[ThanhPhoSinhSong] [bigint] NOT NULL,
	[QuanHuyenSinhSong] [bigint] NOT NULL,
	[DiaChiChiTiet] [nvarchar](255) NOT NULL,
	[FileCV] [nvarchar](255) NULL,
	[AnhDaiDien] [varchar](255) NULL,
 CONSTRAINT [PK__UngVien__8FDBA8A90AD2A005] PRIMARY KEY CLUSTERED 
(
	[MaUngVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UngVien_KiNang]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UngVien_KiNang](
	[MaUngVien] [bigint] NOT NULL,
	[MaKiNang] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UngVien_KiNang_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinNganhNghe]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinNganhNghe](
	[MaNghe] [bigint] NOT NULL,
	[TenNghe] [nvarchar](50) NULL,
	[LinhVuc] [bigint] NULL,
	[MaThanhPho] [bigint] NOT NULL,
	[MaQuanHuyen] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNghe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[MaPhanHoi] [bigint] IDENTITY(1,1) NOT NULL,
	[NoiDungPhanHoi] [nvarchar](255) NOT NULL,
	[TinhTrang] [bigint] NOT NULL,
	[MaUngVien] [bigint] NULL,
	[MaCongTy] [bigint] NULL,
	[NgayPhanHoi] [date] NULL,
	[Tieude] [nvarchar](255) NULL,
 CONSTRAINT [PK__PhanHoi__3458D20F0CBAE877] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[MaBlog] [bigint] NOT NULL,
	[LinhVucBlog] [bigint] NULL,
	[MaNghe] [bigint] NOT NULL,
	[TenBlog] [nvarchar](50) NOT NULL,
	[NoiDungBlog] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuyenDung]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinTuyenDung](
	[MaTinTuyenDung] [bigint] NOT NULL,
	[MaCongTy] [bigint] NOT NULL,
	[ViTriTuyenDung] [nvarchar](50) NOT NULL,
	[HoSoYeuCau] [nvarchar](255) NOT NULL,
	[MoTaCongViec] [nvarchar](255) NOT NULL,
	[QuyenLoi] [nvarchar](255) NOT NULL,
	[SoLuongTuyen] [bigint] NOT NULL,
	[MucLuong] [numeric](18, 0) NOT NULL,
	[NgayDang] [timestamp] NOT NULL,
	[NgayHetHan] [datetime] NULL,
	[MaNganhNghe] [bigint] NULL,
	[hinhanh] [varchar](50) NULL,
	[tieude] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuyenDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UngVienDangKy]    Script Date: 04/22/2021 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UngVienDangKy](
	[MaDangKy] [bigint] NOT NULL,
	[MaUngVien] [bigint] NOT NULL,
	[TinhTrangUngVien] [bigint] NOT NULL,
	[MaTinTuyenDung] [bigint] NULL,
	[NgayDangky] [date] NULL,
 CONSTRAINT [PK_UngVienDangKy] PRIMARY KEY CLUSTERED 
(
	[MaDangKy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Blog__MaNghe__1B0907CE]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([MaNghe])
REFERENCES [dbo].[ThongTinNganhNghe] ([MaNghe])
GO
/****** Object:  ForeignKey [FK__PhanHoi__MaCongT__1920BF5C]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK__PhanHoi__MaCongT__1920BF5C] FOREIGN KEY([MaCongTy])
REFERENCES [dbo].[NhaTuyenDung] ([MaNhaTuyenDung])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK__PhanHoi__MaCongT__1920BF5C]
GO
/****** Object:  ForeignKey [FK__PhanHoi__MaUngVi__1FCDBCEB]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK__PhanHoi__MaUngVi__1FCDBCEB] FOREIGN KEY([MaUngVien])
REFERENCES [dbo].[UngVien] ([MaUngVien])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK__PhanHoi__MaUngVi__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK_ThongTinNganhNghe_ThongTinDiaDiem]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[ThongTinNganhNghe]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinNganhNghe_ThongTinDiaDiem] FOREIGN KEY([MaThanhPho], [MaQuanHuyen])
REFERENCES [dbo].[ThongTinDiaDiem] ([MaThanhPho], [MaQuanHuyen])
GO
ALTER TABLE [dbo].[ThongTinNganhNghe] CHECK CONSTRAINT [FK_ThongTinNganhNghe_ThongTinDiaDiem]
GO
/****** Object:  ForeignKey [FK__TinTuyenD__MaCon__1BFD2C07]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[TinTuyenDung]  WITH CHECK ADD FOREIGN KEY([MaCongTy])
REFERENCES [dbo].[NhaTuyenDung] ([MaNhaTuyenDung])
GO
/****** Object:  ForeignKey [FK_TinTuyenDung_ThongTinNganhNghe]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_TinTuyenDung_ThongTinNganhNghe] FOREIGN KEY([MaNganhNghe])
REFERENCES [dbo].[ThongTinNganhNghe] ([MaNghe])
GO
ALTER TABLE [dbo].[TinTuyenDung] CHECK CONSTRAINT [FK_TinTuyenDung_ThongTinNganhNghe]
GO
/****** Object:  ForeignKey [FK_UngVien_KiNang_KiNang]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[UngVien_KiNang]  WITH CHECK ADD  CONSTRAINT [FK_UngVien_KiNang_KiNang] FOREIGN KEY([MaKiNang])
REFERENCES [dbo].[KiNang] ([MaKiNang])
GO
ALTER TABLE [dbo].[UngVien_KiNang] CHECK CONSTRAINT [FK_UngVien_KiNang_KiNang]
GO
/****** Object:  ForeignKey [FK_UngVien_KiNang_UngVien]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[UngVien_KiNang]  WITH CHECK ADD  CONSTRAINT [FK_UngVien_KiNang_UngVien] FOREIGN KEY([MaUngVien])
REFERENCES [dbo].[UngVien] ([MaUngVien])
GO
ALTER TABLE [dbo].[UngVien_KiNang] CHECK CONSTRAINT [FK_UngVien_KiNang_UngVien]
GO
/****** Object:  ForeignKey [FK__UngVienDa__MaUng__276EDEB3]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[UngVienDangKy]  WITH CHECK ADD  CONSTRAINT [FK__UngVienDa__MaUng__276EDEB3] FOREIGN KEY([MaUngVien])
REFERENCES [dbo].[UngVien] ([MaUngVien])
GO
ALTER TABLE [dbo].[UngVienDangKy] CHECK CONSTRAINT [FK__UngVienDa__MaUng__276EDEB3]
GO
/****** Object:  ForeignKey [FK_UngVienDangKy_TinTuyenDung]    Script Date: 04/22/2021 15:32:49 ******/
ALTER TABLE [dbo].[UngVienDangKy]  WITH CHECK ADD  CONSTRAINT [FK_UngVienDangKy_TinTuyenDung] FOREIGN KEY([MaTinTuyenDung])
REFERENCES [dbo].[TinTuyenDung] ([MaTinTuyenDung])
GO
ALTER TABLE [dbo].[UngVienDangKy] CHECK CONSTRAINT [FK_UngVienDangKy_TinTuyenDung]
GO
