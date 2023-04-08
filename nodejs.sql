-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2023 lúc 11:42 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nodejs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangdiems`
--

CREATE TABLE `bangdiems` (
  `id` int(11) NOT NULL,
  `kiemtra_mieng` int(11) DEFAULT NULL,
  `kiemtra15p_lan1` int(11) DEFAULT NULL,
  `kiemtra15p_lan2` int(11) DEFAULT NULL,
  `kiemtra_30p` int(11) DEFAULT NULL,
  `kiemtra_45p` int(11) DEFAULT NULL,
  `diem_thi` int(11) DEFAULT NULL,
  `tb_mon` int(11) DEFAULT NULL,
  `id_monhoc` varchar(255) DEFAULT NULL,
  `id_sinhvien` varchar(255) DEFAULT NULL,
  `id_giaovien` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `namsinh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `demo`
--

INSERT INTO `demo` (`id`, `hoten`, `namsinh`) VALUES
(1, 'Thạch Chanh Tha', '1992'),
(2, 'Nguyễn Đức Cảnh', '1999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophocs`
--

CREATE TABLE `lophocs` (
  `id` int(11) NOT NULL,
  `ma_lop` varchar(255) DEFAULT NULL,
  `ten_lop` varchar(255) DEFAULT NULL,
  `gvcn` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lophocs`
--

INSERT INTO `lophocs` (`id`, `ma_lop`, `ten_lop`, `gvcn`, `createdAt`, `updatedAt`) VALUES
(1, 'CNTT-10', 'Công Nghệ Thông Tin-2010', 'Bùi Hữu Kính', '2023-04-04 14:05:44', '2023-04-04 14:05:44'),
(5, 'CNTT-11', 'Công Nghệ Thông Tin-2011', 'Lê Đức Thọ', '2023-04-04 13:09:47', '2023-04-04 13:26:46'),
(8, 'CNTT-12', 'Công Nghệ Thông Tin-2012', 'Vũ Minh Chiến', '2023-04-06 04:32:57', '2023-04-06 04:46:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhocs`
--

CREATE TABLE `monhocs` (
  `id` int(11) NOT NULL,
  `ma_mon` varchar(255) DEFAULT NULL,
  `ten_mon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230228132838-create-contact.js'),
('20230323133036-create-tintucdatxanh.js'),
('20230404030416-create-sinhvien.js'),
('20230404120023-create-lophoc.js'),
('20230406045730-create-monhoc.js'),
('20230406051409-create-bangdiem.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` int(11) NOT NULL,
  `ma_sv` varchar(255) DEFAULT NULL,
  `ten_sv` varchar(255) DEFAULT NULL,
  `ngaysinh_sv` date DEFAULT NULL,
  `gioitinh_sv` tinyint(1) DEFAULT NULL,
  `diachi_sv` varchar(255) DEFAULT NULL,
  `sdt_sv` varchar(255) DEFAULT NULL,
  `ma_lop` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `ma_sv`, `ten_sv`, `ngaysinh_sv`, `gioitinh_sv`, `diachi_sv`, `sdt_sv`, `ma_lop`, `createdAt`, `updatedAt`) VALUES
(1, 'SV01', 'Ngô Mỹ Ái', '0000-00-00', 1, 'Ninh Kiều-Cần Thơ', '0937 565 124', 'CNTT-10', '2023-04-04 09:12:13', '2023-04-05 15:34:25'),
(5, 'SV02', 'Võ Thị Hồng Nhung', '2001-04-18', 0, 'Lê Hồng Phong-Bình Thủy-Cần Thơ', '0378 1514 178', 'CNTT-10', '2023-04-04 08:42:12', '2023-04-05 15:34:59'),
(8, 'SV03', 'Đỗ Minh Chiến', '0000-00-00', 1, 'Mậu Thân-Ninh Kiều-Cần Thơ', '0877 1514 651', 'CNTT-10', '2023-04-04 08:46:39', '2023-04-05 03:59:35'),
(9, 'SV04', 'Trần Thị Mỹ Duyên', '0000-00-00', 0, 'Võ Nguyên Giáp-Cái Răng-Cần Thơ', '087 1517 179', 'CNTT-11', '2023-04-04 09:35:30', '2023-04-06 01:48:05'),
(12, 'SV05', 'Hồ Phát Tài', '0000-00-00', 1, 'Đề Thám-Ninh Kiều-Cần Thơ', '0399 514 846', 'CNTT-10', '2023-04-05 02:09:11', '2023-04-06 01:47:56'),
(13, 'SV06', 'Lý Mộng Trinh', '0000-00-00', 0, 'Cái Răng-Cần Thơ', '0339 814 147', 'CNTT-11', '2023-04-05 02:09:58', '2023-04-05 03:59:58'),
(17, 'SV08', 'Ngô Thị Tuyết Minh', '2000-04-05', 0, 'Cờ Đỏ-Cần Thơ', '0378 1514 214', 'CNTT-10', '2023-04-05 06:42:51', '2023-04-05 15:34:32'),
(24, 'SV07', 'Lưu Đức Thiện', '2023-04-06', 1, 'Cờ Đỏ-Cần Thơ', '0378 1514 178', 'CNTT-11', '2023-04-06 10:52:25', '2023-04-08 09:40:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintucdatxanhs`
--

CREATE TABLE `tintucdatxanhs` (
  `id` int(11) NOT NULL,
  `tieude_baiviet` varchar(255) DEFAULT NULL,
  `noidung_baiviet` varchar(255) DEFAULT NULL,
  `danhmuc_baiviet` text DEFAULT NULL,
  `tacgia_baiviet` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintucdatxanhs`
--

INSERT INTO `tintucdatxanhs` (`id`, `tieude_baiviet`, `noidung_baiviet`, `danhmuc_baiviet`, `tacgia_baiviet`, `createdAt`, `updatedAt`) VALUES
(1, 'Cần Thơ ngày thêm đổi mới đó nha 123', 'Chiều 23-3, Thường trực Ban Chỉ đạo triển khai thực hiện Nghị quyết số 59-NQ/TW của Bộ Chính trị, Nghị quyết số 45/2022/QH15 của Quốc hội, Nghị quyết số 98/NQ-CP của Chính phủ và các dự án trọng điểm trên địa bàn thành phố Cần Thơ họp về tiến độ thực hiện', 'Tin Tức Thị Trường', 'Thạch Chanh Tha', '2023-03-24 09:23:57', '2023-03-27 13:36:26'),
(2, 'Trà Vinh ngày thêm đổi mới', 'Chiều 23-3, Thường trực Ban Chỉ đạo triển khai thực hiện Nghị quyết số 59-NQ/TW của Bộ Chính trị, Nghị quyết số 45/2022/QH15 của Quốc hội, Nghị quyết số 98/NQ-CP của Chính phủ và các dự án trọng điểm trên địa bàn thành phố Cần Thơ họp về tiến độ thực hiện', 'Tin Tức Thị Trường', 'Ngô Thị Diễm My', '2023-03-24 09:23:57', '2023-03-24 09:23:57'),
(4, '3456', '3456', '3456', '3456', '2023-03-25 12:04:17', '2023-03-25 12:04:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangdiems`
--
ALTER TABLE `bangdiems`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lophocs`
--
ALTER TABLE `lophocs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monhocs`
--
ALTER TABLE `monhocs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintucdatxanhs`
--
ALTER TABLE `tintucdatxanhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangdiems`
--
ALTER TABLE `bangdiems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lophocs`
--
ALTER TABLE `lophocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `monhocs`
--
ALTER TABLE `monhocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tintucdatxanhs`
--
ALTER TABLE `tintucdatxanhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
