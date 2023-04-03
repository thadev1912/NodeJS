-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2023 lúc 04:00 PM
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
('20230323133036-create-tintucdatxanh.js');

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
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tintucdatxanhs`
--
ALTER TABLE `tintucdatxanhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

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
-- AUTO_INCREMENT cho bảng `tintucdatxanhs`
--
ALTER TABLE `tintucdatxanhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
