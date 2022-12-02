-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoppet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(4, 'img/banners/alaska1.png'),
(6, 'img/banners/munchkin1-2.jpg'),
(7, 'img/banners/chó corgi.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(12, 3, 1, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Mua chó'),
(2, 'Mua mèo'),
(3, 'Đồ dùng cho chó'),
(4, 'Đồ dùng cho mèo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(12, 14, '2022-11-25 22:45:28', 'admin admin', '23423', 'đà nẵng', '', 200000, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', 1),
(4, 'Trả góp', 'TraGop', 0, '2019-05-01 00:00:00', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', 1),
(13, 'Thích thì khuyến mãi', 'Khuyến mãi Ok', 100, '2020-07-18 11:26:06', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(44, 'ANH LÔNG DÀI', 'mèo.jpg', 'nice', 2),
(46, 'CORGI', 'chó corgi.jpg', '', 1),
(47, 'THỨC ĂN CHO CHÓ', 'thuc-an.jpg', '', 3),
(48, 'THỨC ĂN CHO MÈO', '', '', 4),
(49, 'CHÉN ĂN - BÌNH NƯỚC CHÓ', '', '', 3),
(51, 'CHÉN ĂN - BÌNH NƯỚC MÈO', '', '', 4),
(52, 'KHAY VỆ SINH CHO CHÓ', '', '', 3),
(53, 'KHAY VỆ SINH CHO MÈO', '', '', 4),
(54, 'HUSKY', '', '', 1),
(55, 'ALASKA', '', '', 1),
(56, 'PUG', '', '', 1),
(57, 'BORDER COLLIE', '', '', 1),
(58, 'BULL PHÁP', '', '', 1),
(59, 'GOLDEN', '', '', 1),
(60, 'LABRADOR', '', '', 1),
(61, 'ANH LÔNG NGẮN', '', '', 2),
(62, 'BA TƯ', '', '', 2),
(63, 'BENGAL', '', '', 2),
(64, 'MAINE COON', '', '', 2),
(65, 'MUNCHKIN', '', '', 2),
(66, 'RAGDOLL', '', '', 2),
(67, 'SCOTTISH FOLD', '', '', 2),
(68, 'ĐỒ CÀO MÓNG', '', '', 4),
(69, 'CÁT VỆ SINH', '', '', 4),
(72, 'SỮA TẮM-NƯỚC HOA', '', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'ad', 'admin', 'Nam', '23423', 'admin@gmail.com', 'Quảng Ngãi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 3, 1),
(16, 'Văn', 'Thiênn', 'Nam', '1234567877', 'd.black@gmail.com', 'Quảng Ngãi', 'thienn', '6e52e1177ca6df4634136a8a41b94e15', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(50) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `GiongLoai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSac` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GioiTinh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tuoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThongTin` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`, `GiongLoai`, `MauSac`, `GioiTinh`, `Tuoi`, `NguonGoc`, `ThongTin`) VALUES
(2, 46, 1, 'Corgi Pembroke Trắng Vàng', 15000000, 10, 'img/products/chó corgi.jpg', '', '', 1, 0, 0, 1, 'nice', '2022-12-01 12:47:00', 'chó Corgi Pembroke.', 'vàng trắng', 'Đực', '2 tháng tuổi', 'nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', ''),
(3, 44, 2, 'Scottish Lông Dài Trắng', 200000, 2, 'img/products/mèo.jpg', '', '', 1, 0, 0, 1, '', '2022-11-13 18:38:50', 'mèo Anh lông dài (British Longhair)', 'Trắng', 'Cái', '1 tháng tuôi', 'nhân giống tại Dogily Cattery Đà Lạt.', ''),
(4, 47, 3, 'Thức ăn hạt Pedigree', 30000, 2, 'img/products/thuc-an-cho.jpg', 'img/products/thanhphanthucan.png', '', 1, 0, 0, 1, '<p>hàng chất lượng</p>', '2022-11-14 17:07:09', '', '', '', '', '', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(242, 242, 242);\"><span style=\"font-weight: 700;\">Thức ăn cho chó Pedigree </span>là một trong những thương hiệu thức ăn cho chó phổ biến trên toàn thế giới. Năm 1972, Pedigree chính thức được ra mắt là một công ty sản xuất thức ăn đóng gói quy mô lớn. Nhà máy sản xuất đầu tiên có trụ sở tại Peterborough, Vương Quốc Anh. Cho đến nay đã có nhiều nhà máy trên thế giới. Bởi vậy, bạn có thể hoàn toàn an tâm khi sử dụng các sản phẩm Pedigree chính hãng.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(242, 242, 242);\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(242, 242, 242);\">Thành phần in trên bao bì các sản phẩm của Pedigree bao gồm: Ngũ cốc (gạo, bắp, bột mì), protein động vật (bột thịt và phụ phẩm gia cầm), protein thực vật (tinh bột bắp, đậu nành, béo đậu nành), chất béo và dầu, tinh dầu cọ, Vitamin,... Khác với thành phần được dịch trên tem sản phẩm, trên thực tế thực phẩm dành cho chó Pedigree được sản xuất từ ngũ cốc nguyên cám (chứ không phải ngũ cốc hay bột ngũ cốc). <span style=\"font-weight: 700;\">Pedigree </span>còn có điểm mạnh lớn nhất ở mùi vị thơm ngon và đa dạng, có thể kể đến như vị sữa, gà nấu sốt, bò nấu sốt, gà rau củ, bò rau củ, gan nướng, pate,… Chính vì giá trị dinh dưỡng cao mà bạn hoàn toàn có thể bổ sung các loại thức ăn Pedigree vào khẩu phần ăn hằng ngày của cún.</p>'),
(5, 44, 2, 'meo  meo', 900000, 1, 'img/products/hinh-anh-meo-cute-1.jpg', '', '', 1, 0, 0, 1, '<p>cute (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧</p>', '2022-11-13 18:44:45', '', 'vàng', 'Cái', '2 tháng tuổi', 'VN', ''),
(6, 46, 1, 'Corgi Trắng Vàng ', 17000000, 2, 'img/products/corgi1.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 20:58:28', 'Corgi Pembroke.', 'vàng trắng', 'Cái', '1 tháng tuổi', 'xứ Wales (vương quốc Anh).', ''),
(7, 46, 1, 'Corgi Pembroke vàng trắng ', 12000000, 3, 'img/products/corgi2.jpg', '', '', 1, 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\"><li dir=\"auto\" style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\">Có xu hướng sủa bất cứ thứ gì.</li><li dir=\"auto\" style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\">Thông minh nhưng cứng đầu. Nếu muốn huấn luyện bạn nên đưa cún vào trong phòng riêng để chúng tập trung hơn.</li><li dir=\"auto\" style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\">Ham ăn nên dễ bị béo phì.</li><li dir=\"auto\" style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\">Mặc dù là chó nhỏ nhưng cần được vận động mỗi ngày do có rất nhiều năng lượng.</li><li dir=\"auto\" style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\">Do bản năng chăn gia súc nên chúng hay có thói quen cắn nhẹ vào gót chân khi chơi đùa. Mặc dù không gây tổn thương nhưng hành vi này cần được dạy dỗ ngay từ nhỏ.</li></ul>', '2022-11-25 20:58:08', 'Corgi Pembroke.', 'vàng trắng', 'Đực', '1 tháng tuổi', 'nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', ''),
(8, 46, 1, 'Corgi Pembroke Tricolor', 15000000, 1, 'img/products/corgi3.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 21:01:32', 'Corgi Pembroke.', 'tricolor', 'Đực', '1 tháng tuổi', 'xứ Wales (vương quốc Anh).', '<p>beautiful ????<br></p>'),
(9, 54, 1, 'Husky Sibir trắng', 12000000, 1, 'img/products/husky1.jpeg', '', '', 1, 0, 0, 1, '<h3 style=\"width: 1220px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Quicksand, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\">Thông tin cơ bản về giống chó Husky.</font></span></h3><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><em><span style=\"font-weight: bolder;\">Trọng lượng trưởng thành:</span></em>&nbsp;đực từ 20-27 kg, cái nặng: 16-23 kg.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><em><span style=\"font-weight: bolder;\">Chiều cao:</span></em>&nbsp;đực từ 53-58 cm, cái từ: 51-56 cm.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><em><span style=\"font-weight: bolder;\">Xuất xứ:</span>&nbsp;</em>Siberia (liên bang Nga).</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><em><span style=\"font-weight: bolder;\">Nhóm chó:</span>&nbsp;</em>Spitz, chó làm việc (theo FCI).</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><em><span style=\"font-weight: bolder;\">Lứa đẻ:</span></em>&nbsp;6-8 con.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><br></li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><em><span style=\"font-weight: bolder;\">Tuổi thọ:</span></em>&nbsp;12-15 năm</li></ul>', '2022-11-25 21:09:01', 'Husky Sibir', 'trắng (white)', 'Cái', '5 tuần tuổi', 'Siberia (liên bang Nga)', ''),
(10, 54, 1, 'Husky Sibir đen trắng', 1900000, 2, 'img/products/husky2.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 21:13:17', 'Husky Sibir', 'đen trắng', 'Cái', '2', 'Siberia (liên bang Nga)', ''),
(11, 55, 1, 'Alaska nâu đỏ', 20000000, 5, 'img/products/alaska1.png', '', '', 1, 0, 0, 1, '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Alaskan Malamute là giống chó<span style=\"font-weight: bolder;\">&nbsp;lâu đời nhất trong số các giống chó Bắc Cực</span>. Giống chó này rất lớn, khỏe và cực kỳ ưa nhìn. Đó là một con chó mạnh mẽ, có cơ bắp khỏe mạnh với ngực sâu, đầu rộng và vẻ mặt tự hào. Nó hướng về gia đình và thích ở bên mọi người.</p><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Alaska cực kỳ&nbsp;<span style=\"font-weight: bolder;\">trung thành thông minh và tình cảm</span>. Nó rất thân thiện và do đó không phải là một con chó bảo vệ hiệu quả. Nó không thích thời tiết nóng ẩm, rất thích hợp với khí hậu lạnh hơn.</p>', '2022-11-25 21:24:47', 'Alaska Malamute.', 'nâu đỏ.', 'Đực', '1 tháng tuổi', 'Alaska', ''),
(12, 55, 1, 'Alaska trắng', 17500000, 2, 'img/products/alaska2.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 21:28:29', 'Alaska Malamute.', 'Trắng', 'Cái', '7 tuần tuổi', 'Alaska', ''),
(13, 57, 1, 'Border Collie đen trắng', 18000000, 4, 'img/products/border-collie1.jpg', '/img/products/golden2.jpg', '', 1, 0, 0, 1, '<p><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Border Collie được xem là có chỉ số thông minh nhất trong thế giới loài chó. Do rất dễ huấn luyện, sạch sẽ và có kích thước vừa phải thích hợp với điều kiện thành phố nên chúng đang rất được giới trẻ ưa chuộng.</span><br></p>', '2022-11-25 22:05:33', 'Border Collie.', 'đen trắng', 'Cái', '2 tháng tuổi', 'Anh.', ''),
(14, 57, 1, 'Border Collie nâu trắng', 18500000, 2, 'img/products/border-collie2.jpg', 'img/products/border-collie3.jpg', '', 1, 0, 0, 1, '', '2022-11-25 22:04:35', 'Border Collie.', 'nâu trắng', 'Đực', '2 tháng tuổi', 'Anh.', ''),
(15, 58, 1, 'Chó Bull Pháp đen', 15890000, 1, 'img/products/bull4.jpg', '/img/products/bull3.jpg', '', 1, 0, 0, 1, '<p><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">Bulldog Pháp là một&nbsp;</span><span style=\"font-weight: bolder; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">giống Bulldog nhỏ, cứng cáp với đôi tai dơi to, dựng đứng, tròn trịa, mõm phẳng và một chiếc mũi pug</span><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">. Đầu phẳng vuông không đồ sộ như Bulldog’s Anh, trán tròn. Nó có ngoại hình của một con chó&nbsp;</span><span style=\"font-weight: bolder; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">năng động, thông minh, cơ bắp</span><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">, xương nặng, bộ lông mịn, cấu tạo nhỏ gọn và có cấu trúc trung bình hoặc nhỏ.</span><br></p>', '2022-11-25 22:07:44', 'Bull Pháp', 'đen', 'Đực', '1 tháng tuổi', 'Anh.', ''),
(16, 58, 1, 'French Bulldog trắng', 15900000, 3, 'img/products/bull1.jpg', '/img/products/bull2.jpg', '', 1, 0, 0, 1, '', '2022-11-25 22:09:19', 'Bull Pháp', 'trắng ', 'Cái', '7 tuần tuổi', 'Anh.', ''),
(17, 59, 1, 'Golden Retriever vàng ', 23000000, 5, 'img/products/golden1.jpg', '', '', 1, 0, 0, 1, '<div style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\"><span style=\"font-weight: bolder;\">Chó Golden</span>&nbsp;có nguồn gốc từ nước Anh, là kết quả của cuộc lai tạo thành công giữa 3 giống chó là: Spaniels, Setters và Newfoundland, Bloodhound. Là một trong những giống chó phổ biến nhất ở Hoa Kỳ.</div><div style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Thái độ thân thiện, khoan dung của giống chó này khiến chúng trở thành vật nuôi tuyệt vời trong gia đình và trí thông minh của chúng khiến chúng trở thành những con chó có khả năng lao động cao.</div>', '2022-11-25 22:11:38', 'Golden', 'vàng', 'Cái', '2 tháng tuổi', 'Anh.', ''),
(18, 59, 1, 'Golden đen', 15980000, 2, 'img/products/golden3.jpg', '/img/products/golden2.jpg', '/img/products/golden4.jpg', 1, 0, 0, 1, '', '2022-11-25 22:13:27', 'Golden', 'đen', 'Đực', '12 tuần tuổi', 'Anh.', ''),
(19, 60, 1, 'Labrador Retriever vàng', 17890000, 4, 'img/products/lablador3.jpg', '/img/products/lablador2.jpg', '/img/products/lablador1.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Labrador Retriever&nbsp;(chó Lab) là giống chó tha mồi được nuôi phổ biến nhất tại Hoa Kỳ. Có nguồn gốc từ Newfoundland, Canada, trong lịch sử giống chó Labrador được sử dụng để kéo lưới, căng dây thừng và thu dọn cá cho thủy thủ và ngư dân. Chúng cũng được xếp vào nhóm chó săn mồi (gundog), chuyên đánh hơi, tha mồi về cho chủ trong các cuộc đi săn. Ngày nay, Lab chủ yếu được nuôi như chó đồng hành trong gia đình, giúp đỡ người già, tàn tật hay làm cảnh khuyển.</span><br></p>', '2022-11-25 22:16:02', 'Labrador', 'vàng', 'Cái', '5 tuần tuổi', 'Newfoundland, Canada.', ''),
(20, 44, 2, 'Mèo Anh lông dài xám ', 24890000, 2, 'img/products/meolongdai.jpg', '', '', 1, 0, 0, 1, '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">British Longthair là giống&nbsp;<a href=\"https://dogily.vn/meo/\" style=\"touch-action: manipulation; color: blue;\">mèo cảnh</a>&nbsp;cổ của&nbsp;Vương quốc Anh. Chúng đã có quá trình sinh sống và phát triển trên quần đảo Anh quốc từ hàng ngàn năm.</p><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium; text-align: justify;\">Từng có nguy cơ bị tuyệt chủng sau hai cuộc chiến tranh thế giới thứ I và II. Nhưng nhờ những nỗ lực phục hồi, ngày nay giống mèo này trở thành một trong các dòng thú kiểng được ưa thích và phổ biến nhất.</p>', '2022-11-25 22:19:22', 'British Longhair', 'xám trắng', 'Cái', '2 tháng tuổi', 'Vương quốc Anh.', ''),
(21, 61, 2, 'Mèo Anh lông ngắn xám ', 18990000, 1, 'img/products/catlongngan1.jpg', '/img/products/catlongngan2.jpg', '', 1, 0, 0, 1, 'Nice ????', '2022-11-25 22:21:52', 'British', 'xám', 'Cái', '7 tuần tuổi', 'Vương quốc Anh.', ''),
(22, 62, 2, 'Ba tư trắng', 11900000, 2, 'img/products/meobatu1.jpg', '', '', 1, 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; font-family: Quicksand, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em; text-align: justify;\"><b style=\"\"><font color=\"#000000\" style=\"background-color: rgb(247, 247, 247);\">Mèo Ba tư (mèo Persian) là giống mèo có nguồn gốc từ xứ sở “nghìn lẻ một đêm” huyền thoại. Giống mèo này có khuôn mặt tròn trịa, mõm ngắn và bộ lông dài tha thướt tuyệt đẹp. Với nhiều biến thể gồm: mèo Ba tư truyền thống, mèo Exotic (mèo ba tư lông ngắn), mèo Himalayan và mèo Chichilla. Tại Việt Nam, mèo Ba Tư cùng với mèo lông ngắn Anh là hai giống mèo được giới yêu mèo săn lùng nhất.</font></b></li></ul>', '2022-11-25 22:28:28', 'ba tư', 'trắng', 'Đực', '2 tháng tuổi', 'Iran  Nguồn bài viết: https://giadinhpet.com/meo-ba-tu-mat-tit/#Nguon-Goc-Xuat-Xu-Meo-Ba-Tu', ''),
(23, 63, 2, 'Bengal nâu', 13590000, 1, 'img/products/bengal1.jpg', '', '', 1, 0, 0, 1, '<p><span style=\"color: rgb(10, 10, 10); font-family: Quicksand, sans-serif; font-size: medium;\">Mèo Bengal không phải là một \"quý cô\" thanh lịch, tinh tế, thướt tha dịu dàng như hầu hết giống mèo cảnh khác. Chúng là những \"vận động viên\" nhanh nhẹn, mạnh mẽ cùng sự uyển chuyển, cơ bắp như một chú báo rừng.</span><br></p>', '2022-11-25 22:32:40', 'mèo báo Bengal', 'nâu', 'Đực', '2 tháng tuổi', 'Hoa Kỳ.', ''),
(24, 63, 2, 'Bengal xám', 12500000, 5, 'img/products/bengal2.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 22:34:28', 'bengal', 'xám', 'Cái', '7 tuần tuổi', 'Hoa Kỳ.', ''),
(25, 65, 2, 'Munchkin Bicolor ', 11900000, 4, 'img/products/munchkin1-2.jpg', '/img/products/munchkin1.jpg', '', 1, 0, 0, 1, '', '2022-11-25 22:36:52', 'munchkin', 'vàng', 'Cái', '1 tháng tuổi', 'Anh.', ''),
(26, 66, 2, 'Ragdoll', 13590000, 3, 'img/products/ragdoll.jpg', '', '', 1, 0, 0, 1, '', '2022-11-25 22:38:04', 'ragdoll', 'vàng', 'Đực', '2 tháng tuổi', 'Anh.', ''),
(66, 47, 3, 'thức ăn hạt Smartheart Adult', 22000, 14, 'img/products/thuc-an-Smartheart Adult.jpg', 'img/products/thuc-an-hat-Smartheart Adult.jpeg', '', 1, 0, 0, 1, '<p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">Công dụng:</p><p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">- Giúp tim mạch khỏe mạnh: Axit béo Omega-3 từ dầu cá cho tim mạch khỏe mạnh.</p><p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">- Tăng cường hệ thống miễn dịch: Vitamin E và Selenium giúp tăng cường hệ thống miễn dịch.</p><p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">- Hệ tiêu hóa khỏe mạnh: Với thành phần dễ tiêu hóa giúp hấp thụ chất dinh dưỡng tối ưu.</p><p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">- Da và lông khỏe mạnh: Axit béo Omega 3 & 6 cân bằng và đảm bảo cho da khỏe và lông óng mượt.</p><p style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">- Xương và răng khỏe mạnh: Canxi và Phótpho cho xương hông chắc và răng khỏe mạnh.</p>', '2022-12-01 12:45:41', '', '', '', '', '', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">Smartheart Adult Roast Beef Flavor với hàm lượng dinh dưỡng cần đối: Protein, DHA, khoáng chất và canxi.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">Nguyên liệu chi tiết sử dụng sản xuất:</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">- Bột gạo, ngô, dầu đậu nành.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">- Bột gia cầm, hương vị thịt bò nướng,</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">- Dầu cá.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">- Dầu thực vật.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">- Vitamin A, D,E,… và các khoáng chất hỗ trợ khác.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\">Tỷ lệ các nguyên liệu cân đối trong mỗi gói hạt giúp hỗ trợ hấp thụ hiệu quả cho chó lớn, chó trưởng thành.</p>'),
(70, 48, 4, 'Thức ăn hạt CATSRANG 400GR', 70000, 3, 'img/products/thuc-an-meo-catsrang-400g-nhap-khau-han-quoc.jpg', 'img/products/Thuc-an-cho-meo-catsrang2.jpg', '', 1, 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">THỨC ĂN HẠT CHO MÈO 3 THÁNG TRỞ LÊN CATSRANG 400GR</span></span><br></p>', '2022-12-01 13:04:32', '', '', '', '', '', '<p><span style=\"font-size: 14px; color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">• Catsrang có khả năng ngăn ngừa lông vón cục</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 14px;\"><span class=\"text_exposed_show\" style=\"font-size: 14px; display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">• Với đặc tính dễ dàng tiêu hóa, Catsrang giúp mèo đi phân rắn và giảm mùi khó chịu<br>• Với hàm lượng dinh dưỡng cân bằng, Catsrang rất thích hợp trong việc cải thiện da lông và phòng tránh bệnh quáng gà ở mèo.<br>• Không sử dụng chất kháng sinh, chất bảo quản, phẩm màu và hương liệu nhân tạo.<br>• Xuất xứ Hàn Quốc</span></p><p><span class=\"text_exposed_show\" style=\"font-size: 14px; display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\"></span></p>'),
(71, 49, 3, 'Bát đựng thức ăn Inox', 45000, 5, 'img/products/bat-an-danh-cho-cho-meo.jpg', '', '', 1, 0, 0, 1, '<p><br></p>', '2022-12-01 13:20:16', '', '', '', '', '', '<p><span style=\"color: rgb(10, 10, 10); font-family: \"Roboto Condensed\", sans-serif; font-size: 17.28px; text-align: justify;\">Kích thước bát: Đường kình bát 19.8cm, miệng 13cm, cao 5cm</span></p><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: \"Roboto Condensed\", sans-serif; font-size: 17.28px; text-align: justify;\">Màu sắc: Hồng / xanh lá / xanh dương</p><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: \"Roboto Condensed\", sans-serif; font-size: 17.28px; text-align: justify;\">Ưu điểm: Giá rẻ, độ bền tốt, dễ dàng vệ sinh, có đế trống trượt, bát ăn đẹp, bền màu.</p><p><br></p>'),
(72, 49, 3, 'Chén Inox Đôi Pugmarks Feedy', 278000, 12, 'img/products/chen-inox-doi-mau-xanh-pugmarks-feedy-.jpg', '', '', 1, 0, 0, 1, '<p><br></p>', '2022-12-01 13:23:27', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thương hiệu Ấn Độ</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Inox cao cấp, dễ chà rữa và không bám mùi</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- 3 size</span><br></p>'),
(73, 52, 3, 'Khay Vệ Sinh Mon Ami Hygiene', 275000, 8, 'img/products/khay-ve-sinh-thong-thuongcho.jpg', '', '', 1, 0, 0, 1, '', '2022-12-01 13:25:23', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Sản xuất tại Việt Nam</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Áp dụng công nghệ nước ngoài giúp hạn chế mùi hôi chất thải</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Vật liệu thiết kế gọn nhé, có độ bền cao</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thiết kế để mèo dễ dàng đi vệ sinh và lấp chất thải</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- 2 size</span><br></p>'),
(74, 51, 4, 'Bình Uống Nước Tự Động', 54000, 5, 'img/products/binh-uong-nuoc-tu-dong-cho-cho-meo.jpg', '', '', 1, 0, 0, 1, '', '2022-12-01 13:26:47', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Bình nước có kích thước trung bình, phù hợp với các bạn nuôi mèo hoặc nuôi chó giống nhỏ.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Có thể treo trực tiếp trong chuồng.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Nước sẽ tự động chảy xuống khi chó mèo khát và lại uống.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Bình nước đều làm bằng các chất liệu an toàn, không gây hại cho chó mèo.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Dung tích 400ml.</span><br></p>'),
(75, 53, 4, 'Khay Vệ Sinh Mon Ami Hygiene', 198000, 14, 'img/products/khay-ve-sinh-49cm-mon-ami-hygiene.jpg', '', '', 1, 0, 0, 1, '', '2022-12-01 13:29:51', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Sản xuất tại Việt Nam</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Áp dụng công nghệ nước ngoài giúp hạn chế mùi hôi chất thải</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Vật liệu thiết kế gọn nhé, có độ bền cao</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thiết kế để mèo dễ dàng đi vệ sinh và lấp chất thải</span><br></p>'),
(76, 68, 4, 'Cây Mèo Leo AFP ', 1890000, 5, 'img/products/cay-meo-leo-afp-dreams-catcher-elan.jpg', 'img/products/cay-meo-leo-afp-dreams-catcher-elan.jpg', '', 1, 0, 0, 1, '', '2022-12-01 13:42:10', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thiết kế từ Pháp</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Giải tỏa cơn ngứa móng ở mèo</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Giúp mèo không cào đồ đạc trong nhà</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Sử dụng lông vũ tự nhiên, không gây hại cho mèo khi chơi</span><br></p>'),
(77, 69, 4, 'Cát Betonite Nhật Trắng', 125000, 5, 'img/products/cat-betonite-nhat.jpg', '/img/products/cat-betonite-nhat-trang-5l-3.jpg', '', 1, 0, 0, 1, '', '2022-12-01 13:33:50', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Cát Nhật trắng là sản phẩm cát mà chắc hẳn không cần đề cập nhiều bạn cũng biết. Đây được xem là một trong những sản phẩm phổ biến nhất tại thị trường Việt Nam.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Hạt cát to nên bạn sẽ không phải lo bụi cát bay lên làm ảnh hưởng tới không khí sinh hoạt và chất lượng sống của các thành viên trong gia đình.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Đây cũng là sản phẩm được ưa chuộng khi bạn nuôi mèo trong không gian nhỏ như chung cư, căn hộ hay phòng trọ.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Cát Nhật trắng có khả năng thấm hút ở mức ổn, đảm bảo bạn sẽ không phải lo lắng về chất thải của mèo vươn vải khắp trong khay vệ sinh.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Hạt cát không làm đau chân mèo của bạn vì hạt không cứng cũng như tạo cảm giác thô rát khi mèo đặt chân lên.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Mùi của cát không quá nồng nên bạn sẽ cảm thấy dễ chịu khi sử dụng.</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Một túi cát 5L có thể sử dụng được 2 tuần, 12L thì sử dụng được 1 tháng.</span><br></p>'),
(78, 72, 3, 'Sữa Tắm Cho Chó', 225000, 3, 'img/products/sua-tam-cho-cho.jpg', 'img/products/sua-tam-cho-cho.jpg', '', 1, 0, 0, 1, '<h1 class=\"tr_tieu_de_sp\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 25px; font-family: arial; line-height: 1.1; text-transform: capitalize; border-bottom: 1px dashed rgb(235, 235, 235); padding: 14px 0px;\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">Sữa Tắm Cho Chó Da Nhạy Cảm Beaphar Hypo-Allergenic</font></h1>', '2022-12-01 13:39:10', '', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thương hiệu đến từ Hà Lan đạt chuẩn an toàn của Châu Âu</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Sản phẩm được nghiên cứu chuyên biệt dành cho thú cưng da nhạy cảm không thể sử dụng các sản phẩm sữa tắm thông thường</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Độ ph trung tính an toàn cho da không ảnh hương đến bề mặt bảo vệ da tự nhiên</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Chứa tinh chất nuôi dưỡng da và lông giúp cải thiện da sáng bóng và lông mềm mượt</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Thể tích: 250 ml</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">Hướng dẫn:</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">+ Dùng nước ấm làm ướt lông</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">+ Sử dụng sữa tắm ra lòng bàn tay, thoa đều và massage nhẹ nhàng cho đến khi thấm vào lông</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">+ Để từ 2-3 phút và tắm lại bằng nước</span><br style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 15px;\">- Phù hợp với mọi giống chó và mèo có da nhạy cảm</span><br></p>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
