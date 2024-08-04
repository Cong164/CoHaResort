-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2024 lúc 07:46 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookmyfarm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accesslog`
--

CREATE TABLE `accesslog` (
  `sr.no` int(15) NOT NULL,
  `userid` int(15) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `logouttime` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accesslog`
--

INSERT INTO `accesslog` (`sr.no`, `userid`, `logintime`, `logouttime`, `ipaddress`) VALUES
(1, 11, '2020-05-03 09:28:34', NULL, '::1'),
(2, 8, '2020-05-03 09:39:28', NULL, '::1'),
(3, 8, '2020-05-03 09:41:33', NULL, '::1'),
(4, 17, '2020-05-05 07:10:33', NULL, '::1'),
(5, 17, '2020-05-05 07:13:50', NULL, '::1'),
(6, 18, '2020-05-06 07:13:55', NULL, '::1'),
(7, 17, '2020-05-07 07:46:03', NULL, '::1'),
(8, 17, '2020-05-07 07:47:30', NULL, '::1'),
(9, 17, '2020-05-07 07:51:32', NULL, '::1'),
(10, 17, '2020-05-07 07:58:24', NULL, '::1'),
(11, 17, '2020-05-07 07:59:05', NULL, '::1'),
(12, 17, '2020-05-07 08:00:17', NULL, '::1'),
(13, 17, '2020-05-07 08:02:29', NULL, '::1'),
(14, 17, '2020-05-07 08:03:28', NULL, '::1'),
(15, 17, '2020-05-07 08:04:36', NULL, '::1'),
(16, 18, '2020-05-07 08:05:22', NULL, '::1'),
(17, 15, '2020-05-07 08:06:57', NULL, '::1'),
(18, 17, '2020-05-07 08:18:14', NULL, '::1'),
(19, 17, '2020-05-07 08:21:53', NULL, '::1'),
(20, 17, '2020-05-07 08:22:56', NULL, '::1'),
(21, 17, '2020-05-07 08:35:55', NULL, '::1'),
(22, 17, '2020-05-07 08:36:21', NULL, '::1'),
(23, 17, '2020-05-07 08:36:21', NULL, '::1'),
(24, 17, '2020-05-07 08:36:29', NULL, '::1'),
(25, 17, '2020-05-07 08:37:00', NULL, '::1'),
(26, 17, '2020-05-07 08:56:04', NULL, '::1'),
(27, 17, '2020-05-07 09:05:12', NULL, '::1'),
(28, 17, '2020-05-08 07:10:21', NULL, '::1'),
(29, 17, '2020-05-08 09:25:44', NULL, '::1'),
(30, 17, '2020-05-08 09:58:24', NULL, '::1'),
(31, 17, '2020-05-08 09:59:31', NULL, '::1'),
(32, 19, '2020-05-09 07:07:50', NULL, '::1'),
(33, 17, '2020-05-10 01:13:12', NULL, '::1'),
(34, 17, '2020-05-10 01:13:38', NULL, '::1'),
(35, 17, '2020-05-10 01:15:54', NULL, '::1'),
(36, 17, '2020-05-10 01:18:13', NULL, '::1'),
(37, 17, '2020-05-10 02:00:18', NULL, '::1'),
(38, 17, '2020-05-11 01:17:28', NULL, '::1'),
(39, 18, '2020-05-11 10:34:07', NULL, '::1'),
(40, 17, '2020-05-11 10:50:00', NULL, '::1'),
(41, 17, '2020-05-12 00:22:02', NULL, '::1'),
(42, 17, '2020-05-12 04:14:44', NULL, '::1'),
(43, 18, '2020-05-12 07:52:54', NULL, '::1'),
(44, 17, '2020-05-12 09:26:37', NULL, '::1'),
(45, 17, '2020-05-13 06:30:00', NULL, '::1'),
(46, 17, '2020-05-13 07:00:24', NULL, '::1'),
(47, 17, '2020-05-13 07:41:41', NULL, '::1'),
(48, 17, '2020-05-14 00:34:12', NULL, '::1'),
(49, 17, '2020-05-14 00:38:30', NULL, '::1'),
(50, 17, '2020-05-14 01:24:44', NULL, '::1'),
(51, 18, '2020-05-14 01:24:56', NULL, '::1'),
(52, 17, '2020-05-14 02:19:37', NULL, '::1'),
(53, 17, '2020-05-15 01:58:48', NULL, '::1'),
(54, 17, '2020-05-15 01:58:58', NULL, '::1'),
(55, 17, '2020-05-15 02:01:51', NULL, '::1'),
(56, 17, '2020-05-15 02:04:18', NULL, '::1'),
(57, 17, '2020-05-15 02:05:41', NULL, '::1'),
(58, 17, '2020-05-15 02:05:51', NULL, '::1'),
(59, 17, '2020-05-15 02:05:57', NULL, '::1'),
(60, 17, '2020-05-15 02:13:15', NULL, '::1'),
(61, 17, '2020-05-15 02:21:54', NULL, '::1'),
(62, 17, '2020-05-15 02:22:28', NULL, '::1'),
(63, 17, '2020-05-15 02:24:06', NULL, '::1'),
(64, 17, '2020-05-15 02:29:11', NULL, '::1'),
(65, 17, '2020-05-15 02:36:32', NULL, '::1'),
(66, 17, '2020-05-15 07:11:39', NULL, '::1'),
(67, 17, '2020-05-15 09:30:25', NULL, '::1'),
(68, 17, '2020-05-15 09:33:58', NULL, '::1'),
(69, 17, '2020-05-16 00:50:43', NULL, '::1'),
(70, 17, '2020-05-16 01:02:18', NULL, '::1'),
(71, 17, '2020-05-16 01:12:05', NULL, '::1'),
(72, 17, '2020-05-16 01:14:23', NULL, '::1'),
(73, 17, '2020-05-16 01:17:58', NULL, '::1'),
(74, 17, '2020-05-16 01:22:31', NULL, '::1'),
(75, 17, '2020-05-16 02:54:50', NULL, '::1'),
(76, 17, '2020-05-16 02:54:58', NULL, '::1'),
(77, 18, '2020-05-16 02:55:07', NULL, '::1'),
(78, 17, '2020-05-16 03:21:37', NULL, '::1'),
(79, 17, '2020-05-16 03:21:49', NULL, '::1'),
(80, 18, '2020-05-16 03:22:35', NULL, '::1'),
(81, 18, '2020-05-16 03:22:51', NULL, '::1'),
(82, 17, '2020-05-16 03:24:29', NULL, '::1'),
(83, 18, '2020-05-16 03:24:37', NULL, '::1'),
(84, 18, '2020-05-16 03:25:42', NULL, '::1'),
(85, 17, '2020-05-16 03:26:57', NULL, '::1'),
(86, 18, '2020-05-16 03:27:06', NULL, '::1'),
(87, 19, '2020-05-16 03:27:15', NULL, '::1'),
(88, 17, '2020-05-16 03:28:31', NULL, '::1'),
(89, 18, '2020-05-16 03:31:39', NULL, '::1'),
(90, 18, '2020-05-16 03:42:19', NULL, '::1'),
(91, 30, '2020-05-16 03:51:29', NULL, '::1'),
(92, 36, '2020-05-16 04:10:04', NULL, '::1'),
(93, 36, '2020-05-16 08:23:03', NULL, '::1'),
(94, 17, '2020-05-16 10:25:07', NULL, '::1'),
(95, 18, '2020-05-16 10:25:15', NULL, '::1'),
(96, 36, '2020-05-16 10:25:26', NULL, '::1'),
(97, 17, '2020-05-16 10:26:13', NULL, '::1'),
(98, 17, '2020-05-16 10:27:12', NULL, '::1'),
(99, 17, '2020-05-16 10:27:25', NULL, '::1'),
(100, 17, '2020-05-16 10:28:04', NULL, '::1'),
(101, 17, '2020-05-17 09:17:51', NULL, '::1'),
(102, 17, '2020-05-17 23:57:56', NULL, '::1'),
(103, 18, '2020-05-18 02:00:08', NULL, '::1'),
(104, 18, '2020-05-18 02:07:38', NULL, '::1'),
(105, 36, '2020-05-18 02:50:31', NULL, '::1'),
(106, 17, '2020-05-23 02:40:06', NULL, '::1'),
(107, 38, '2020-05-23 02:47:11', NULL, '::1'),
(108, 17, '2024-05-18 04:10:40', NULL, '::1'),
(109, 17, '2024-05-18 04:11:05', NULL, '::1'),
(110, 17, '2024-05-19 04:33:02', NULL, '::1'),
(111, 17, '2024-05-19 04:34:38', NULL, '::1'),
(112, 17, '2024-05-24 02:21:03', NULL, '::1'),
(113, 17, '2024-05-24 02:59:08', NULL, '::1'),
(114, 17, '2024-05-24 03:15:58', NULL, '::1'),
(115, 17, '2024-05-24 03:45:57', NULL, '::1'),
(116, 45, '2024-05-24 03:55:50', NULL, '::1'),
(117, 17, '2024-05-25 01:51:44', NULL, '::1'),
(118, 17, '2024-05-25 03:00:10', NULL, '::1'),
(119, 17, '2024-05-25 04:00:08', NULL, '::1'),
(120, 17, '2024-05-25 04:21:08', NULL, '::1'),
(121, 17, '2024-05-25 04:34:09', NULL, '::1'),
(122, 17, '2024-05-25 04:38:24', NULL, '::1'),
(123, 17, '2024-05-25 11:26:01', NULL, '::1'),
(124, 17, '2024-05-25 23:35:25', NULL, '::1'),
(125, 17, '2024-05-25 23:36:56', NULL, '::1'),
(126, 17, '2024-05-25 23:55:35', NULL, '::1'),
(127, 17, '2024-05-25 23:58:34', NULL, '::1'),
(128, 17, '2024-05-26 00:01:51', NULL, '::1'),
(129, 17, '2024-05-26 00:13:38', NULL, '::1'),
(130, 17, '2024-05-26 00:17:23', NULL, '::1'),
(131, 17, '2024-05-26 00:37:40', NULL, '::1'),
(132, 17, '2024-05-26 00:43:10', NULL, '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` mediumint(8) NOT NULL,
  `userid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `umobno` bigint(10) NOT NULL,
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Address` text NOT NULL,
  `total_price` int(7) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `book_mob` bigint(10) NOT NULL,
  `book_email` varchar(30) NOT NULL,
  `card_num` varchar(18) NOT NULL,
  `card_exp` varchar(8) NOT NULL,
  `card_cvv` int(3) NOT NULL,
  `card_h_name` varchar(30) NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `userid`, `uname`, `uemail`, `umobno`, `place_id`, `place_name`, `status`, `status_time`, `Address`, `total_price`, `checkin`, `checkout`, `book_mob`, `book_email`, `card_num`, `card_exp`, `card_cvv`, `card_h_name`, `pay_date`) VALUES
(53, 38, 'sidarth', '18dce141@charusat.edu.in', 9825088250, 9, 'Fariyas Resort', 'cancel', '2020-05-23 02:50:58', 'E36 PURVI SOC.4', 31500, '2020-05-24', '2020-05-27', 3456454757, 'abc@mail.com', '1234123412341234', '22/34', 123, 'naren', '2020-05-23 06:20:58'),
(54, 17, 'Naren', 'ankit2233@yopmail.com', 9825172172, 1, 'Karamala Place', 'cancel', '2024-05-25 04:40:51', '99 Le Loi, phuong 4, quan Go Vap', 5300, '2024-05-18', '2024-05-19', 123456, 'kkkkk@sss', '1231456', '02/29', 32, 'hau', '2024-05-25 09:40:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_lname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `f_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `f_contact` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_lname`, `f_email`, `f_contact`, `feedback`) VALUES
(0, '', 'heetzadfiya567@gmail.com', '97120120120', 'nwjd,mnsm,nlwjdhjdkmk Naren');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobno` int(10) NOT NULL,
  `card_num` varchar(18) NOT NULL,
  `card_exp` varchar(8) NOT NULL,
  `card_cvv` int(3) NOT NULL,
  `card_h_name` varchar(30) NOT NULL,
  `place` int(11) NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place`
--

CREATE TABLE `place` (
  `id` int(8) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(5) NOT NULL,
  `contact` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `place`
--

INSERT INTO `place` (`id`, `name`, `Address`, `price`, `contact`, `img`) VALUES
(10, 'The Anam', 'Nha Trang', 2000000, '+(84) 258 398 9', 'farm details photos\\anam1.jpg'),
(11, 'I-Resort', 'Nha Trang', 1800000, '02583 837 837', 'farm details photos\\iresort1.jpg'),
(12, 'An Lam', 'Nha Trang', 2500000, '(+84) 258 3728 ', 'farm details photos\\anlam1.jpg'),
(13, 'Vinpearl', 'Nha Trang', 2300000, '1900 23 23 89', 'farm details photos\\vin1.jpg'),
(14, 'Hòn Tằm', 'Nha Trang', 1900000, '0374333444', 'farm details photos\\hontam1.jpg'),
(15, 'Six Senses', 'Nha Trang', 2100000, '', 'farm details photos\\seashall1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `img`, `desc`) VALUES
(1, 'z', './upload/image/theme_ntp_background1.png', '<p>zz</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userid` smallint(15) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobno` bigint(10) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `name`, `address`, `email`, `password`, `mobno`, `token`, `status`) VALUES
(17, 'Naren', '', 'ankit2233@yopmail.com', '123456', 9825172172, '', 'active'),
(38, 'sidarth', '11111111111', '18dce141@charusat.edu.in', '123456', 9825088250, '244c46698e61b9117e98af95601943', 'active'),
(47, 'Hau', '', 'admin', 'admin', 0, '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accesslog`
--
ALTER TABLE `accesslog`
  ADD PRIMARY KEY (`sr.no`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_id` (`place_id`) USING BTREE;

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `mobno` (`mobno`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accesslog`
--
ALTER TABLE `accesslog`
  MODIFY `sr.no` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `place`
--
ALTER TABLE `place`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` smallint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
