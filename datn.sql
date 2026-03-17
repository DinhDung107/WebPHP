-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2025 lúc 01:59 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL COMMENT 'Loại hành động: add, update, delete',
  `table_name` varchar(50) NOT NULL COMMENT 'Tên bảng được thao tác',
  `record_id` int(11) DEFAULT NULL COMMENT 'ID của bản ghi được thao tác',
  `description` text DEFAULT NULL COMMENT 'Mô tả chi tiết',
  `admin_name` varchar(100) DEFAULT 'Admin' COMMENT 'Tên admin thực hiện',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_logs`
--

INSERT INTO `admin_logs` (`id`, `action`, `table_name`, `record_id`, `description`, `admin_name`, `created_at`) VALUES
(1, 'update', 'orders', 29, 'Cập nhật trạng thái đơn hàng ID 29 thành: Đã hủy', 'Admin', '2025-12-12 13:08:10'),
(2, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 13:30:26'),
(3, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 13:30:40'),
(4, 'update', 'users', 12, 'Cập nhật người dùng: Quang Huy (qhuy112002@gmail.com) (ID: 12)', 'Admin', '2025-12-12 13:31:37'),
(5, 'update', 'orders', 37, 'Cập nhật trạng thái đơn hàng ID 37 thành: Đang vận chuyển', 'Admin', '2025-12-12 13:36:55'),
(6, 'update', 'orders', 37, 'Cập nhật trạng thái đơn hàng ID 37 thành: Đã giao', 'Admin', '2025-12-12 13:37:14'),
(7, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 14:13:36'),
(8, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 14:23:20'),
(9, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 15:45:52'),
(10, 'update', 'products', 0, 'Cập nhật sản phẩm: Nón len (ID: )', 'Admin', '2025-12-12 15:48:30'),
(11, 'add', 'products', 27, 'Thêm sản phẩm mới: Nón len xanh (ID: 27)', 'Admin', '2025-12-13 07:34:46'),
(12, 'update', 'orders', 53, 'Cập nhật trạng thái đơn hàng ID 53 thành: Đang vận chuyển', 'Admin', '2025-12-13 07:35:07'),
(13, 'update', 'orders', 53, 'Cập nhật trạng thái đơn hàng ID 53 thành: Đã giao', 'Admin', '2025-12-13 07:35:23'),
(14, 'delete', 'banners', 5, 'Xóa banner: N/A (ID: 5)', 'Admin', '2025-12-13 07:36:16'),
(15, 'delete', 'banners', 4, 'Xóa banner: N/A (ID: 4)', 'Admin', '2025-12-13 07:36:16'),
(16, 'delete', 'banners', 3, 'Xóa banner: N/A (ID: 3)', 'Admin', '2025-12-13 07:36:17'),
(17, 'delete', 'banners', 2, 'Xóa banner: N/A (ID: 2)', 'Admin', '2025-12-13 07:36:17'),
(18, 'delete', 'banners', 1, 'Xóa banner: N/A (ID: 1)', 'Admin', '2025-12-13 07:36:17'),
(19, 'update', 'orders', 52, 'Cập nhật trạng thái đơn hàng ID 52 thành: Đang vận chuyển', 'Admin', '2025-12-18 07:41:25'),
(20, 'update', 'orders', 52, 'Cập nhật trạng thái đơn hàng ID 52 thành: Đã giao', 'Admin', '2025-12-18 07:41:35'),
(21, 'update', 'orders', 54, 'Cập nhật trạng thái đơn hàng ID 54 thành: Đang vận chuyển', 'Admin', '2025-12-18 08:49:31'),
(22, 'update', 'orders', 54, 'Cập nhật trạng thái đơn hàng ID 54 thành: Đã giao', 'Admin', '2025-12-18 08:53:11'),
(23, 'update', 'orders', 61, 'Cập nhật trạng thái đơn hàng ID 61 thành: Đang vận chuyển', 'Admin', '2025-12-19 17:41:12'),
(24, 'update', 'orders', 61, 'Cập nhật trạng thái đơn hàng ID 61 thành: Đã giao', 'Admin', '2025-12-19 17:41:19'),
(25, 'update', 'orders', 62, 'Cập nhật trạng thái đơn hàng ID 62 thành: Đang vận chuyển', 'Admin', '2025-12-19 17:53:53'),
(26, 'update', 'orders', 62, 'Cập nhật trạng thái đơn hàng ID 62 thành: Đã giao', 'Admin', '2025-12-19 17:53:58'),
(27, 'update', 'orders', 59, 'Cập nhật trạng thái đơn hàng ID 59 thành: Đang vận chuyển', 'Admin', '2025-12-19 19:02:05'),
(28, 'update', 'orders', 59, 'Cập nhật trạng thái đơn hàng ID 59 thành: Đã giao', 'Admin', '2025-12-19 19:02:34'),
(29, 'update', 'orders', 66, 'Cập nhật trạng thái đơn hàng ID 66 thành: Đang vận chuyển', 'Admin', '2025-12-21 10:36:08'),
(30, 'update', 'orders', 66, 'Cập nhật trạng thái đơn hàng ID 66 thành: Đã giao', 'Admin', '2025-12-21 10:36:14'),
(31, 'update', 'orders', 107, 'Cập nhật trạng thái đơn hàng ID 107 thành: Đang vận chuyển', 'Admin', '2025-12-21 16:10:28'),
(32, 'update', 'orders', 107, 'Cập nhật trạng thái đơn hàng ID 107 thành: Đã giao', 'Admin', '2025-12-21 16:10:33'),
(33, 'update', 'orders', 110, 'Cập nhật trạng thái đơn hàng ID 110 thành: Đang vận chuyển', 'Admin', '2025-12-21 16:10:55'),
(34, 'update', 'orders', 110, 'Cập nhật trạng thái đơn hàng ID 110 thành: Đã giao', 'Admin', '2025-12-21 16:11:02'),
(35, 'update', 'orders', 111, 'Cập nhật trạng thái đơn hàng ID 111 thành: Đang vận chuyển', 'Admin', '2025-12-21 16:24:23'),
(36, 'update', 'orders', 111, 'Cập nhật trạng thái đơn hàng ID 111 thành: Đã giao', 'Admin', '2025-12-21 16:24:34'),
(37, 'update', 'orders', 112, 'Cập nhật trạng thái đơn hàng ID 112 thành: Đang vận chuyển', 'Admin', '2025-12-21 16:54:24'),
(38, 'update', 'orders', 112, 'Cập nhật trạng thái đơn hàng ID 112 thành: Đã giao', 'Admin', '2025-12-21 16:54:28'),
(39, 'update', 'orders', 120, 'Cập nhật trạng thái đơn hàng ID 120 thành: Đang vận chuyển', 'Admin', '2025-12-21 18:14:56'),
(40, 'update', 'orders', 120, 'Cập nhật trạng thái đơn hàng ID 120 thành: Đã giao', 'Admin', '2025-12-21 18:15:00'),
(41, 'add', 'banner', 6, 'Thêm banner mới (ID: 6)', 'Admin', '2025-12-22 10:14:28'),
(42, 'update', 'banner', 6, 'Cập nhật banner (ID: 6)', 'Admin', '2025-12-22 10:15:31'),
(43, 'add', 'banner', 7, 'Thêm banner mới (ID: 7)', 'Admin', '2025-12-22 10:15:50'),
(44, 'add', 'banner', 8, 'Thêm banner mới (ID: 8)', 'Admin', '2025-12-22 11:23:04'),
(45, 'update', 'orders', 123, 'Cập nhật trạng thái đơn hàng ID 123 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:34:01'),
(46, 'update', 'orders', 123, 'Cập nhật trạng thái đơn hàng ID 123 thành: Đã giao', 'Admin', '2025-12-24 08:34:10'),
(47, 'update', 'products', 25, 'Cập nhật sản phẩm: Túi shouder len (ID: 25)', 'Admin', '2025-12-24 08:41:01'),
(48, 'update', 'products', 27, 'Cập nhật sản phẩm: Nón len xanh (ID: 27)', 'Admin', '2025-12-24 08:42:05'),
(49, 'update', 'orders', 127, 'Cập nhật trạng thái đơn hàng ID 127 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:47:31'),
(50, 'update', 'orders', 126, 'Cập nhật trạng thái đơn hàng ID 126 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:47:38'),
(51, 'update', 'orders', 124, 'Cập nhật trạng thái đơn hàng ID 124 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:47:47'),
(52, 'update', 'orders', 125, 'Cập nhật trạng thái đơn hàng ID 125 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:47:56'),
(53, 'update', 'orders', 128, 'Cập nhật trạng thái đơn hàng ID 128 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:51:13'),
(54, 'update', 'orders', 129, 'Cập nhật trạng thái đơn hàng ID 129 thành: Đang vận chuyển', 'Admin', '2025-12-24 08:51:29'),
(55, 'update', 'orders', 129, 'Cập nhật trạng thái đơn hàng ID 129 thành: Đã giao', 'Admin', '2025-12-24 08:51:41'),
(56, 'update', 'orders', 128, 'Cập nhật trạng thái đơn hàng ID 128 thành: Đã giao', 'Admin', '2025-12-24 08:51:52'),
(57, 'add', 'products', 28, 'Thêm sản phẩm mới: Vòng Cổ Hoa Tím Dạ Quang (ID: 28)', 'Admin', '2025-12-24 10:55:40'),
(58, 'update', 'products', 28, 'Cập nhật sản phẩm: Vòng Cổ Hoa Tím Dạ Quang (ID: 28)', 'Admin', '2025-12-24 10:58:02'),
(59, 'add', 'products', 29, 'Thêm sản phẩm mới: Vòng Cổ Cánh Bướm Tím Mộng (ID: 29)', 'Admin', '2025-12-24 10:58:50'),
(60, 'update', 'products', 29, 'Cập nhật sản phẩm: Vòng Cổ Cánh Bướm Tím Mộng (ID: 29)', 'Admin', '2025-12-24 10:59:22'),
(61, 'add', 'products', 30, 'Thêm sản phẩm mới: Vòng Cổ Hoa Mai Vàng Nhẹ (ID: 30)', 'Admin', '2025-12-24 10:59:59'),
(62, 'update', 'products', 30, 'Cập nhật sản phẩm: Vòng Cổ Hoa Mai Vàng Nhẹ (ID: 30)', 'Admin', '2025-12-24 11:00:38'),
(63, 'add', 'products', 31, 'Thêm sản phẩm mới: Vòng Cổ Hoa Lan Tím Thủy Tinh (ID: 31)', 'Admin', '2025-12-24 11:07:24'),
(64, 'add', 'products', 32, 'Thêm sản phẩm mới: Nón len Răng sún  (ID: 32)', 'Admin', '2025-12-24 11:08:54'),
(65, 'add', 'products', 33, 'Thêm sản phẩm mới: Nón len răng sún trắng (ID: 33)', 'Admin', '2025-12-24 11:09:42'),
(66, 'add', 'products', 34, 'Thêm sản phẩm mới: Nón len tai mèo (ID: 34)', 'Admin', '2025-12-24 11:10:20'),
(67, 'add', 'products', 35, 'Thêm sản phẩm mới: Nón len xanh trắng (ID: 35)', 'Admin', '2025-12-24 11:10:58'),
(68, 'add', 'products', 36, 'Thêm sản phẩm mới: Nón len vàng đen (ID: 36)', 'Admin', '2025-12-24 11:11:41'),
(69, 'add', 'products', 37, 'Thêm sản phẩm mới: Khăn bông hoa hồng (ID: 37)', 'Admin', '2025-12-24 11:13:07'),
(70, 'add', 'products', 38, 'Thêm sản phẩm mới: Khăn Len Xanh Biển Dịu Mát (ID: 38)', 'Admin', '2025-12-24 11:15:07'),
(71, 'add', 'products', 39, 'Thêm sản phẩm mới: Khăn Len Sóng Biển Navy (ID: 39)', 'Admin', '2025-12-24 11:15:44'),
(72, 'add', 'products', 40, 'Thêm sản phẩm mới: Khăn Len Vàng Mật Ong (ID: 40)', 'Admin', '2025-12-24 11:16:21'),
(73, 'update', 'products', 27, 'Cập nhật sản phẩm: Nón len xanh (ID: 27)', 'Admin', '2025-12-24 11:18:03'),
(74, 'add', 'products', 41, 'Thêm sản phẩm mới: Gương Vòng Hoa Cúc Mùa Xuân (ID: 41)', 'Admin', '2025-12-24 11:19:10'),
(75, 'add', 'products', 42, 'Thêm sản phẩm mới: Gương Thêu Hoa Ánh Vàng (ID: 42)', 'Admin', '2025-12-24 11:19:49'),
(76, 'add', 'products', 43, 'Thêm sản phẩm mới: Gương Thêu Tay Thủ Công Vintage (ID: 43)', 'Admin', '2025-12-24 11:20:21'),
(77, 'add', 'products', 44, 'Thêm sản phẩm mới: Gương Thêu Hoa Dạ Ngọc (ID: 44)', 'Admin', '2025-12-24 11:21:18'),
(78, 'add', 'products', 45, 'Thêm sản phẩm mới: Cài Áo Hoa Vàng Nắng (ID: 45)', 'Admin', '2025-12-24 11:23:38'),
(79, 'add', 'products', 46, 'Thêm sản phẩm mới: Cài Áo Hoa Hổ Phách (ID: 46)', 'Admin', '2025-12-24 11:24:14'),
(80, 'add', 'products', 47, 'Thêm sản phẩm mới: Phụ Kiện Hoa Thạch Anh (ID: 47)', 'Admin', '2025-12-24 11:25:51'),
(81, 'update', 'banner', 8, 'Cập nhật banner (ID: 8)', 'Admin', '2025-12-24 11:31:36'),
(82, 'update', 'banner', 8, 'Cập nhật banner (ID: 8)', 'Admin', '2025-12-24 11:32:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(6, 'banner-4.png'),
(7, 'banner-5.png'),
(8, 'banner8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'Gương', 1),
(2, 'Trang sức', 1),
(3, 'Mũ', 1),
(4, 'Túi', 1),
(5, 'Phụ kiện', 1),
(6, 'Khăn', 1),
(7, 'ví', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `nameColor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `nameColor`) VALUES
(1, 'Xanh lá'),
(2, 'Trắng'),
(3, 'Đen'),
(4, 'Đỏ'),
(5, 'Xanh dương'),
(6, 'Đen tím'),
(7, 'Hồng'),
(8, 'Xanh biển'),
(9, 'Nâu'),
(10, 'Trắng xanh'),
(11, 'Trắng đỏ'),
(12, 'Nâu hồng'),
(13, 'Trắng xanh lá mạ'),
(14, 'Vàng'),
(15, 'Bạc'),
(16, 'Tím'),
(17, 'Hồng đào'),
(18, 'xanh lá'),
(19, 'Vàng, xanh dương'),
(20, 'Cam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `idProductDetail` int(11) DEFAULT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `salePrice` int(11) DEFAULT NULL,
  `reviewContent` text DEFAULT NULL,
  `ratingStar` tinyint(4) DEFAULT NULL,
  `dateRate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `idProductDetail`, `idOrder`, `quantity`, `salePrice`, `reviewContent`, `ratingStar`, `dateRate`) VALUES
(1, 189, 10, 1, NULL, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(2, 192, 11, 1, NULL, NULL, NULL, '2025-12-11 14:51:51'),
(3, 195, 11, 1, NULL, '1', 1, '2025-12-11 14:51:51'),
(4, 165, 11, 1, NULL, NULL, NULL, '2025-12-11 14:51:51'),
(5, 195, 12, 1, 220000, '1', 1, '2025-12-11 14:51:51'),
(6, 189, 12, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(7, 183, 12, 1, 150000, NULL, NULL, '2025-12-11 14:51:51'),
(8, 177, 12, 1, 100000, NULL, NULL, '2025-12-11 14:51:51'),
(9, 189, 13, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(10, 189, 14, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(11, 45, 15, 1, 50000, '', 1, '2025-12-11 14:51:51'),
(12, 195, 16, 1, 220000, '1', 1, '2025-12-11 14:51:51'),
(13, 189, 17, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(14, 192, 17, 1, 205000, '', 4, '2025-12-11 14:51:51'),
(15, NULL, 18, 1, 65000, NULL, NULL, '2025-12-11 14:51:51'),
(16, 213, 19, 1, 65000, '', 5, '2025-12-11 14:51:51'),
(17, NULL, 20, 1, 220000, NULL, NULL, '2025-12-11 14:51:51'),
(18, NULL, 20, 1, 180000, NULL, NULL, '2025-12-11 14:51:51'),
(19, NULL, 21, 2, 220000, NULL, NULL, '2025-12-11 14:51:51'),
(20, 195, 22, 1, 220000, '1', 1, '2025-12-11 14:51:51'),
(21, 189, 23, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(22, 45, 24, 1, 50000, '', 1, '2025-12-11 14:51:51'),
(23, 189, 25, 1, 200000, 'kém chất lượng', 1, '2025-12-11 14:51:51'),
(24, 195, 25, 1, 220000, '1', 1, '2025-12-11 14:51:51'),
(25, 195, 26, 2, 220000, 'ád', 3, '2025-12-11 14:51:51'),
(26, 46, 27, 7, 50000, 'y', 3, '2025-12-11 14:51:51'),
(27, 195, 28, 2, 220000, 'gà', 5, '2025-12-11 14:51:51'),
(28, 189, 29, 1, 200000, NULL, NULL, '2025-12-11 14:51:51'),
(31, 196, 30, 1, 220000, 'test', 4, '2025-12-11 14:51:51'),
(32, 195, 31, 3, 220000, '', 5, '2025-12-11 14:51:51'),
(33, 196, 31, 1, 220000, '', 2, '2025-12-11 14:51:51'),
(34, 46, 32, 1, 50000, 'tốt', 4, '2025-12-11 15:36:46'),
(35, 45, 32, 1, 50000, 'đẹp quá', 5, '2025-12-11 15:36:46'),
(36, 195, 33, 1, 220000, 'quá đẹp\r\n', 1, '2025-12-12 17:25:40'),
(37, 141, 34, 1, 250000, 'quá tệ\r\n', 5, '2025-12-12 17:26:50'),
(38, 195, 35, 1, 220000, NULL, NULL, '2025-12-12 20:35:17'),
(39, 51, 35, 1, 120000, NULL, NULL, '2025-12-12 20:35:17'),
(40, 189, 36, 1, 200000, NULL, NULL, '2025-12-12 20:35:35'),
(41, 219, 37, 1, 200000, 'siêu đẹp', 1, '2025-12-12 20:36:13'),
(42, 141, 38, 1, 250000, NULL, NULL, '2025-12-12 21:05:44'),
(43, 195, 38, 1, 220000, NULL, NULL, '2025-12-12 21:05:44'),
(44, 195, 39, 1, 220000, NULL, NULL, '2025-12-13 04:25:07'),
(45, 195, 40, 1, 220000, NULL, NULL, '2025-12-13 04:26:39'),
(46, 189, 41, 1, 200000, NULL, NULL, '2025-12-13 04:27:35'),
(47, 195, 42, 1, 220000, NULL, NULL, '2025-12-13 04:33:49'),
(48, 195, 43, 1, 220000, NULL, NULL, '2025-12-13 04:37:55'),
(49, 192, 43, 1, 205000, NULL, NULL, '2025-12-13 04:37:55'),
(50, 177, 43, 1, 100000, NULL, NULL, '2025-12-13 04:37:55'),
(51, 195, 44, 1, 220000, NULL, NULL, '2025-12-13 04:38:51'),
(52, 192, 44, 1, 205000, NULL, NULL, '2025-12-13 04:38:51'),
(53, 177, 44, 1, 100000, NULL, NULL, '2025-12-13 04:38:51'),
(54, 195, 45, 1, 220000, NULL, NULL, '2025-12-13 04:42:22'),
(55, 195, 46, 1, 220000, NULL, NULL, '2025-12-13 04:42:39'),
(56, 219, 47, 1, 200000, NULL, NULL, '2025-12-13 04:44:50'),
(57, 219, 48, 1, 200000, NULL, NULL, '2025-12-13 04:49:35'),
(58, 195, 48, 1, 220000, NULL, NULL, '2025-12-13 04:49:35'),
(59, 189, 48, 1, 200000, NULL, NULL, '2025-12-13 04:49:35'),
(60, 183, 48, 1, 150000, NULL, NULL, '2025-12-13 04:49:35'),
(61, 195, 49, 2, 220000, NULL, NULL, '2025-12-13 05:03:39'),
(62, 189, 50, 1, 200000, NULL, NULL, '2025-12-13 05:11:32'),
(63, 189, 51, 1, 200000, NULL, NULL, '2025-12-13 05:14:15'),
(64, 189, 52, 1, 200000, NULL, NULL, '2025-12-13 05:15:52'),
(65, 192, 52, 3, 205000, NULL, NULL, '2025-12-13 05:15:52'),
(66, 196, 53, 2, 220000, NULL, NULL, '2025-12-13 14:20:56'),
(67, 220, 54, 1, 100000, NULL, NULL, '2025-12-18 15:48:56'),
(68, 220, 55, 1, 100000, NULL, NULL, '2025-12-18 16:10:37'),
(69, 189, 56, 1, 200000, NULL, NULL, '2025-12-19 23:25:43'),
(70, 195, 57, 1, 220000, NULL, NULL, '2025-12-19 23:39:16'),
(71, 189, 58, 1, 200000, NULL, NULL, '2025-12-19 23:41:51'),
(72, 189, 59, 1, 200000, NULL, NULL, '2025-12-20 00:25:08'),
(73, 220, 60, 1, 100000, NULL, NULL, '2025-12-20 00:26:54'),
(74, 220, 61, 1, 100000, NULL, NULL, '2025-12-20 00:40:51'),
(75, 220, 62, 1, 100000, NULL, NULL, '2025-12-20 00:53:45'),
(76, 189, 63, 1, 200000, NULL, NULL, '2025-12-20 01:04:10'),
(77, 195, 64, 1, 220000, NULL, NULL, '2025-12-20 01:49:09'),
(78, 189, 65, 1, 200000, NULL, NULL, '2025-12-20 02:42:39'),
(79, 183, 65, 1, 150000, NULL, NULL, '2025-12-20 02:42:39'),
(80, 195, 65, 1, 220000, NULL, NULL, '2025-12-20 02:42:39'),
(81, 220, 65, 1, 100000, NULL, NULL, '2025-12-20 02:42:39'),
(82, 195, 66, 1, 220000, NULL, NULL, '2025-12-21 17:23:18'),
(83, 189, 66, 1, 200000, NULL, NULL, '2025-12-21 17:23:18'),
(84, 220, 70, 1, 100000, NULL, NULL, '2025-12-21 18:25:38'),
(85, 195, 71, 1, 220000, NULL, NULL, '2025-12-21 19:02:53'),
(86, 195, 72, 1, 220000, NULL, NULL, '2025-12-21 19:14:21'),
(87, 177, 73, 1, 100000, NULL, NULL, '2025-12-21 19:42:40'),
(88, 220, 74, 1, 100000, NULL, NULL, '2025-12-21 20:06:44'),
(89, 220, 75, 1, 100000, NULL, NULL, '2025-12-21 20:15:23'),
(90, 165, 76, 1, 180000, NULL, NULL, '2025-12-21 20:21:40'),
(91, 45, 77, 1, 50000, NULL, NULL, '2025-12-21 21:03:31'),
(92, 220, 77, 1, 100000, NULL, NULL, '2025-12-21 21:03:31'),
(93, 45, 78, 1, 50000, NULL, NULL, '2025-12-21 21:28:13'),
(94, 220, 78, 1, 100000, NULL, NULL, '2025-12-21 21:28:13'),
(95, 189, 79, 1, 200000, NULL, NULL, '2025-12-21 22:14:44'),
(96, 189, 80, 1, 200000, NULL, NULL, '2025-12-21 22:14:45'),
(97, 189, 81, 1, 200000, NULL, NULL, '2025-12-21 22:14:46'),
(98, 189, 82, 1, 200000, NULL, NULL, '2025-12-21 22:14:46'),
(99, 189, 83, 1, 200000, NULL, NULL, '2025-12-21 22:14:46'),
(100, 189, 84, 1, 200000, NULL, NULL, '2025-12-21 22:14:46'),
(101, 189, 85, 1, 200000, NULL, NULL, '2025-12-21 22:14:47'),
(102, 189, 86, 1, 200000, NULL, NULL, '2025-12-21 22:14:47'),
(103, 189, 87, 1, 200000, NULL, NULL, '2025-12-21 22:14:47'),
(104, 189, 88, 1, 200000, NULL, NULL, '2025-12-21 22:14:47'),
(105, 189, 89, 1, 200000, NULL, NULL, '2025-12-21 22:14:48'),
(106, 189, 90, 1, 200000, NULL, NULL, '2025-12-21 22:14:48'),
(107, 189, 91, 1, 200000, NULL, NULL, '2025-12-21 22:14:48'),
(108, 189, 92, 1, 200000, NULL, NULL, '2025-12-21 22:14:48'),
(109, 189, 93, 1, 200000, NULL, NULL, '2025-12-21 22:14:49'),
(110, 189, 94, 1, 200000, NULL, NULL, '2025-12-21 22:14:49'),
(111, 189, 95, 1, 200000, NULL, NULL, '2025-12-21 22:14:49'),
(112, 189, 96, 1, 200000, NULL, NULL, '2025-12-21 22:14:49'),
(113, 189, 97, 1, 200000, NULL, NULL, '2025-12-21 22:14:50'),
(114, 189, 98, 1, 200000, NULL, NULL, '2025-12-21 22:14:50'),
(115, 189, 99, 1, 200000, NULL, NULL, '2025-12-21 22:14:50'),
(116, 189, 100, 1, 200000, NULL, NULL, '2025-12-21 22:14:50'),
(117, 189, 101, 1, 200000, NULL, NULL, '2025-12-21 22:14:51'),
(118, 189, 102, 1, 200000, NULL, NULL, '2025-12-21 22:14:52'),
(119, 189, 103, 1, 200000, NULL, NULL, '2025-12-21 22:14:52'),
(120, 189, 104, 1, 200000, NULL, NULL, '2025-12-21 22:14:53'),
(121, 189, 105, 1, 200000, NULL, NULL, '2025-12-21 22:14:53'),
(122, 189, 106, 1, 200000, NULL, NULL, '2025-12-21 22:17:41'),
(123, 220, 107, 1, 100000, NULL, NULL, '2025-12-21 22:44:06'),
(124, 183, 107, 1, 150000, NULL, NULL, '2025-12-21 22:44:06'),
(125, 195, 108, 1, 220000, NULL, NULL, '2025-12-21 22:50:18'),
(126, 45, 109, 1, 50000, NULL, NULL, '2025-12-21 22:55:20'),
(127, 171, 110, 1, 180000, 'đẹp', 5, '2025-12-21 23:00:37'),
(128, 183, 110, 1, 150000, 'đẹp', 5, '2025-12-21 23:00:37'),
(129, 159, 110, 1, 200000, 'đẹp', 5, '2025-12-21 23:00:37'),
(130, 171, 111, 1, 180000, 'test', 5, '2025-12-21 23:52:21'),
(131, 220, 112, 1, 100000, '123', 5, '2025-12-22 00:03:16'),
(132, 220, 113, 1, 100000, NULL, NULL, '2025-12-22 00:21:06'),
(133, 220, 114, 1, 100000, NULL, NULL, '2025-12-22 00:28:16'),
(134, 220, 115, 1, 100000, NULL, NULL, '2025-12-22 00:31:41'),
(135, 220, 116, 1, 100000, NULL, NULL, '2025-12-22 00:49:56'),
(136, 220, 117, 1, 100000, NULL, NULL, '2025-12-22 00:59:24'),
(137, 220, 118, 1, 100000, NULL, NULL, '2025-12-22 01:00:45'),
(138, 220, 119, 3, 100000, NULL, NULL, '2025-12-22 01:01:31'),
(139, 195, 120, 1, 220000, 'đẹp', 5, '2025-12-22 01:15:23'),
(140, 220, 121, 1, 100000, NULL, NULL, '2025-12-22 18:01:40'),
(141, 220, 122, 1, 100000, NULL, NULL, '2025-12-22 18:38:19'),
(142, 195, 123, 2, 220000, NULL, NULL, '2025-12-24 15:33:30'),
(143, 220, 124, 1, 100000, NULL, NULL, '2025-12-24 15:38:10'),
(144, 195, 124, 1, 220000, NULL, NULL, '2025-12-24 15:38:10'),
(145, 189, 125, 4, 200000, NULL, NULL, '2025-12-24 15:44:34'),
(146, 189, 126, 5, 200000, NULL, NULL, '2025-12-24 15:45:27'),
(147, 189, 127, 1, 200000, NULL, NULL, '2025-12-24 15:46:06'),
(148, 214, 128, 1, 65000, NULL, NULL, '2025-12-24 15:49:50'),
(149, 141, 129, 1, 250000, NULL, NULL, '2025-12-24 15:50:18'),
(150, 129, 129, 1, 250000, NULL, NULL, '2025-12-24 15:50:18'),
(151, 117, 129, 1, 250000, NULL, NULL, '2025-12-24 15:50:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `idVoucher` int(11) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `receiverName` varchar(100) DEFAULT NULL,
  `receiverEmail` varchar(255) NOT NULL,
  `idPayment` int(11) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `shippingPrice` int(11) NOT NULL,
  `orderStatus` varchar(50) DEFAULT NULL,
  `dateOrder` datetime NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `shippingAddress`, `idVoucher`, `receiverPhone`, `receiverName`, `receiverEmail`, `idPayment`, `totalPrice`, `shippingPrice`, `orderStatus`, `dateOrder`, `completed_at`, `idUser`) VALUES
(107, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 280000, 0, '3', '2024-12-21 22:44:06', '2024-12-21 23:10:33', 12),
(108, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 250000, 0, '0', '2025-12-21 22:50:18', NULL, 12),
(109, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 80000, 0, '0', '2025-12-21 22:55:20', NULL, 12),
(110, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 560000, 0, '3', '2025-12-21 23:00:37', '2025-12-21 23:11:02', 12),
(111, '123', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 210000, 0, '3', '2025-12-21 23:12:35', '2025-12-21 23:24:34', NULL),
(112, '123', NULL, '0969894160', 'bac', 'qhuy112002@gmail.com', 1, 130000, 0, '3', '2025-12-21 23:53:58', '2025-12-21 23:54:28', 15),
(113, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 00:21:06', NULL, 12),
(114, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 00:28:16', NULL, 12),
(115, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 00:31:41', NULL, 12),
(116, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 00:49:56', NULL, 12),
(117, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 00:59:24', NULL, 12),
(118, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 01:00:45', NULL, 12),
(119, '123', NULL, '0969894160', 'nam', 'qhuy112002@gmail.com', 1, 330000, 0, '0', '2025-12-22 01:01:31', NULL, NULL),
(120, '123', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 250000, 0, '3', '2025-12-22 01:14:44', '2025-12-22 01:15:00', NULL),
(121, '123', NULL, '0969894160', 'Quang Huy', 'huylhqps40077@gmail.com', 1, 130000, 0, '0', '2025-12-22 18:01:40', NULL, 15),
(122, '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', NULL, '0969894160', 'Quang Huy', 'qhuy112002@gmail.com', 1, 130000, 0, '0', '2025-12-22 18:38:19', NULL, 12),
(123, 'quận 12,hồ chí minh', 3, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 470000, 0, '3', '2025-12-24 15:33:30', '2025-12-24 15:34:10', 13),
(124, 'quận 12,hồ chí minh', 6, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 300000, 0, '2', '2025-12-24 15:38:10', NULL, 13),
(125, 'quận 12,hồ chí minh', NULL, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 830000, 0, '2', '2025-12-24 15:44:34', NULL, 13),
(126, 'quận 12,hồ chí minh', NULL, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 1030000, 0, '2', '2025-12-24 15:45:27', NULL, 13),
(127, 'quận 12,hồ chí minh', NULL, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 230000, 0, '2', '2025-12-24 15:46:06', NULL, 13),
(128, 'quận 12,hồ chí minh', NULL, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 95000, 0, '3', '2024-12-24 15:49:50', '2024-12-24 15:51:52', 13),
(129, 'quận 12,hồ chí minh', NULL, '0775804665', 'Trần Phát', 'nastumijaki198@gmail.com', 1, 780000, 0, '3', '2024-12-24 15:50:18', '2024-12-24 15:51:41', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `paymentmethod`
--

INSERT INTO `paymentmethod` (`id`, `name`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'Chuyển khoản ngân hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `listImages` text DEFAULT NULL,
  `datePost` date NOT NULL,
  `view` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idCatePost` int(11) NOT NULL,
  `idUserPost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `image`, `listImages`, `datePost`, `view`, `description`, `status`, `idCatePost`, `idUserPost`) VALUES
(1, 'Khăn Bandana Handmade Sunflower', '<ul>\r\n	<li><strong>Chất liệu:</strong> Sợi len cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng kh&iacute;, v&agrave; cực kỳ dễ chịu khi tiếp x&uacute;c với da, mang đến cảm gi&aacute;c thư gi&atilde;n tuyệt đối.</li>\r\n	<li><strong>M&agrave;u sắc:</strong> Nền trắng kem tinh tế kết hợp với họa tiết hoa hướng dương v&agrave;ng rực rỡ, tạo n&ecirc;n một sự kết hợp ho&agrave;n hảo giữa sự nhẹ nh&agrave;ng v&agrave; nổi bật.</li>\r\n	<li><strong>K&iacute;ch thước:</strong> 55 x 55 cm (c&oacute; thể điều chỉnh theo y&ecirc;u cầu, rất linh hoạt để ph&ugrave; hợp với phong c&aacute;ch v&agrave; nhu cầu sử dụng của bạn).</li>\r\n	<li><strong>Khối lượng:</strong> 200g (vừa phải, kh&ocirc;ng qu&aacute; nặng nhưng đủ để bạn cảm nhận sự mềm mại v&agrave; chất lượng của sản phẩm).</li>\r\n</ul>\r\n<!-- Công dụng -->\r\n\r\n<h2>C&ocirc;ng dụng tuyệt vời của khăn Bandana</h2>\r\n\r\n<p><strong>Phụ kiện thời trang đa năng:</strong> Kh&ocirc;ng chỉ l&agrave; một m&oacute;n đồ phụ kiện đơn giản, khăn Bandana Handmade Sunflower ch&iacute;nh l&agrave; điểm nhấn gi&uacute;p bạn tạo dựng phong c&aacute;ch ri&ecirc;ng biệt. Bạn c&oacute; thể qu&agrave;ng n&oacute; quanh cổ để giữ ấm trong những buổi chiều thu m&aacute;t mẻ, hoặc d&ugrave;ng l&agrave;m băng đ&ocirc; c&agrave;i t&oacute;c để t&ocirc;n l&ecirc;n vẻ dịu d&agrave;ng v&agrave; thanh tho&aacute;t. Chưa hết, khăn c&ograve;n c&oacute; thể được d&ugrave;ng để buộc t&uacute;i x&aacute;ch hoặc thắt lưng, tạo n&ecirc;n sự c&aacute; t&iacute;nh v&agrave; kh&aacute;c biệt, gi&uacute;p bạn tỏa s&aacute;ng trong mọi ho&agrave;n cảnh.</p>\r\n<!-- Thêm các công dụng khác ở đây --><!-- Ý nghĩa sản phẩm -->\r\n\r\n<h2>&Yacute; nghĩa s&acirc;u sắc của khăn Bandana Handmade Sunflower</h2>\r\n\r\n<p><strong>T&ocirc;n vinh sự s&aacute;ng tạo v&agrave; thủ c&ocirc;ng tinh xảo:</strong> Mỗi chiếc khăn Bandana kh&ocirc;ng chỉ l&agrave; một m&oacute;n đồ thời trang m&agrave; c&ograve;n l&agrave; một t&aacute;c phẩm nghệ thuật, được tạo ra từ đ&ocirc;i b&agrave;n tay kh&eacute;o l&eacute;o của những nghệ nh&acirc;n thủ c&ocirc;ng. Họa tiết hoa hướng dương, được th&ecirc;u tay cẩn thận, kh&ocirc;ng chỉ mang đến vẻ đẹp thanh tho&aacute;t m&agrave; c&ograve;n chứa đựng những gi&aacute; trị tinh thần. Hoa hướng dương l&agrave; biểu tượng của sự lạc quan, sức sống v&agrave; hy vọng, khiến chiếc khăn trở th&agrave;nh một m&oacute;n đồ kh&ocirc;ng thể thiếu trong bộ sưu tập của những người y&ecirc;u th&iacute;ch sự tinh tế v&agrave; &yacute; nghĩa s&acirc;u sắc.</p>\r\n\r\n<p><strong>Gắn kết con người với thi&ecirc;n nhi&ecirc;n:</strong> Được l&agrave;m từ sợi len tự nhi&ecirc;n, chiếc khăn mang lại cảm gi&aacute;c mềm mại, thoải m&aacute;i v&agrave; th&acirc;n thiện với l&agrave;n da. Kh&ocirc;ng chỉ vậy, sự hiện diện của hoa hướng dương tr&ecirc;n chiếc khăn khiến bạn cảm nhận được sự gần gũi với thi&ecirc;n nhi&ecirc;n, như một lời nhắc nhở về vẻ đẹp thuần khiết của thế giới xung quanh. Chiếc khăn kh&ocirc;ng chỉ đẹp về h&igrave;nh thức m&agrave; c&ograve;n mang trong m&igrave;nh một th&ocirc;ng điệp về sự h&ograve;a hợp giữa con người v&agrave; thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p><strong>Hướng tới phong c&aacute;ch sống bền vững:</strong> Trong một thế giới đang ng&agrave;y c&agrave;ng ch&uacute; trọng đến việc bảo vệ m&ocirc;i trường, khăn Bandana Handmade Sunflower l&agrave; sản phẩm l&yacute; tưởng cho những ai đang t&igrave;m kiếm những m&oacute;n đồ vừa đẹp mắt vừa th&acirc;n thiện với h&agrave;nh tinh. Chất liệu len cotton tự nhi&ecirc;n, an to&agrave;n v&agrave; t&aacute;i chế, gi&uacute;p giảm thiểu t&aacute;c động ti&ecirc;u cực đến m&ocirc;i trường. Đ&acirc;y l&agrave; một m&oacute;n đồ kh&ocirc;ng chỉ c&oacute; gi&aacute; trị về mặt thời trang m&agrave; c&ograve;n thể hiện cam kết sống bền vững của bạn.</p>\r\n\r\n<p><strong>Vẻ đẹp tinh tế nhưng gần gũi:</strong> Khăn Bandana Handmade Sunflower kh&ocirc;ng cần phải qu&aacute; cầu kỳ để thể hiện sự sang trọng. Với thiết kế đơn giản nhưng đầy cảm hứng, khăn mang đến vẻ đẹp tinh tế v&agrave; gần gũi, ph&ugrave; hợp với nhiều đối tượng người d&ugrave;ng. Đ&acirc;y l&agrave; sự kết hợp ho&agrave;n hảo giữa gi&aacute; trị thủ c&ocirc;ng truyền thống v&agrave; xu hướng thời trang hiện đại, mang lại một sản phẩm vừa đẹp vừa c&oacute; &yacute; nghĩa.</p>\r\n\r\n<h2>Tại sao bạn n&ecirc;n sở hữu khăn Bandana Handmade n&agrave;y?</h2>\r\n\r\n<p><strong>Thiết kế độc đ&aacute;o:</strong> Mỗi chiếc khăn Bandana Handmade Sunflower l&agrave; một t&aacute;c phẩm nghệ thuật đặc biệt, với từng họa tiết hoa hướng dương được th&ecirc;u tay tỉ mỉ. Ch&iacute;nh v&igrave; vậy, mỗi chiếc khăn đều mang một phong c&aacute;ch ri&ecirc;ng biệt, kh&ocirc;ng giống bất kỳ sản phẩm n&agrave;o kh&aacute;c. Đ&acirc;y ch&iacute;nh l&agrave; điểm nhấn gi&uacute;p bạn thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch ri&ecirc;ng biệt của m&igrave;nh.</p>\r\n\r\n<p><strong>Độ bền vượt trội:</strong> Với chất liệu sợi len cotton tự nhi&ecirc;n, chiếc khăn kh&ocirc;ng chỉ mềm mại m&agrave; c&ograve;n rất bền, kh&ocirc;ng dễ bị hư hỏng hay phai m&agrave;u theo thời gian. Bạn c&oacute; thể sử dụng chiếc khăn n&agrave;y h&agrave;ng ng&agrave;y m&agrave; kh&ocirc;ng phải lo lắng về độ bền của n&oacute;.</p>\r\n\r\n<p><strong>Dễ d&agrave;ng bảo quản:</strong> Một trong những ưu điểm lớn của khăn Bandana l&agrave; sự dễ d&agrave;ng trong việc bảo quản. Bạn c&oacute; thể giặt tay hoặc giặt m&aacute;y ở chế độ nhẹ m&agrave; kh&ocirc;ng lo sợi vải bị xơ hay mất m&agrave;u. Khăn vẫn giữ được h&igrave;nh d&aacute;ng v&agrave; vẻ đẹp nguy&ecirc;n vẹn sau nhiều lần giặt.</p>\r\n\r\n<p><strong>Phong c&aacute;ch thời thượng:</strong> Khăn Bandana Handmade Sunflower l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu trong tủ đồ của những người y&ecirc;u th&iacute;ch thời trang. N&oacute; kh&ocirc;ng chỉ l&agrave;m nổi bật phong c&aacute;ch của bạn m&agrave; c&ograve;n gi&uacute;p bạn lu&ocirc;n tự tin v&agrave; thu h&uacute;t &aacute;nh nh&igrave;n trong mọi dịp.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'khan-bandana.jpg', NULL, '2025-11-12', 10, 'Khăn bandana len tại Trạm Nhỏ Xinh kết hợp ấm áp và thời trang. Chất liệu len mềm mịn giúp bạn giữ ấm và tạo điểm nhấn cho trang phục. Phù hợp với nhiều phong cách, khăn bandana là phụ kiện không thể thiếu cho vẻ ngoài năng động và sành điệu.', 1, 2, 2),
(2, 'Túi Handmade Shoulder Len', '<ul class=\"productPost-details\">\r\n                    <li><strong>Chất liệu:</strong> Sợi len cotton tự nhiên, mềm mại và bền bỉ, mang đến cảm giác thoải mái khi sử dụng.</li>\r\n                    <li><strong>Màu sắc:</strong> Trắng tinh khiết, dễ dàng phối hợp với nhiều trang phục khác nhau, mang đến vẻ đẹp trang nhã và tinh tế.</li>\r\n                    <li><strong>Kích thước:</strong> 25 x 20 x 10 cm, phù hợp với nhu cầu sử dụng hàng ngày, dễ dàng mang theo mọi lúc mọi nơi.</li>\r\n                    <li><strong>Khối lượng:</strong> 400g, tạo cảm giác vững chắc và chắc chắn khi sử dụng mà không quá nặng nề.</li>\r\n                </ul>\r\n                \r\n    \r\n                <!-- Công dụng -->\r\n                <div class=\"productPost-usage\">\r\n                    <h2>Công dụng</h2>\r\n                    <p class=\"check-item\"><strong>Phù hợp cho mọi dịp:</strong> Chiếc túi này không chỉ là món phụ kiện thời trang mà còn là người bạn đồng hành lý tưởng trong mọi hoạt động hàng ngày. Bạn có thể dễ dàng mang theo túi khi đi làm, đi chơi, đi học hay đi dạo phố mà không lo thiếu sự tiện dụng.</p>\r\n                    <p class=\"check-item\"><strong>Phong cách thời trang đa dạng:</strong> Với thiết kế tối giản, chiếc túi dễ dàng kết hợp với nhiều trang phục khác nhau. Dù bạn theo đuổi phong cách vintage, tối giản hay hiện đại, chiếc túi này đều có thể làm nổi bật phong cách cá nhân của bạn.</p>\r\n                    <p class=\"check-item\"><strong>Độ bền vượt trội:</strong> Túi được làm từ sợi len tự nhiên bền đẹp, chịu được tác động mạnh mẽ từ môi trường bên ngoài. Khả năng chịu lực và độ bền của túi đảm bảo rằng bạn có thể sử dụng túi hàng ngày mà không lo bị hư hỏng.</p>\r\n                    <p class=\"check-item\"><strong>Dễ dàng bảo quản và vệ sinh:</strong> Túi len mềm mại, dễ dàng giặt tay và bảo quản. Bạn không cần phải lo lắng về việc túi bị bẩn, vì chất liệu len giúp túi giữ được độ mới mẻ qua thời gian sử dụng.</p>\r\n                    <p class=\"check-item\"><strong>Đặc biệt trong những ngày mưa:</strong> Nhờ khả năng chống thấm nhẹ, túi có thể chịu được những cơn mưa nhẹ mà không làm ảnh hưởng đến chất lượng của sản phẩm. Đây là một ưu điểm lớn cho những ai thường xuyên di chuyển ngoài trời.</p>\r\n                </div>\r\n    \r\n                <!-- Ý nghĩa sản phẩm -->\r\n                <div class=\"productPost-meaning\">\r\n                    <h2>Ý nghĩa sản phẩm</h2>\r\n                    <p class=\"check-item\"><strong>Biểu tượng của sự sáng tạo và thủ công tinh tế:</strong> Mỗi chiếc túi không chỉ là một món đồ thời trang mà còn là một tác phẩm nghệ thuật, thể hiện sự khéo léo và tỉ mỉ của các nghệ nhân thủ công. Sự kết hợp giữa chất liệu tự nhiên và bàn tay tài hoa của người thợ tạo nên một sản phẩm độc đáo, mang đậm dấu ấn cá nhân.</p>\r\n                    <p class=\"check-item\"><strong>Một lời cam kết với môi trường:</strong> Sản phẩm này không chỉ đơn thuần là một chiếc túi đẹp mà còn là một hành động thiết thực trong việc bảo vệ hành tinh. Việc sử dụng các chất liệu tái chế không chỉ giảm thiểu tác động tiêu cực đến môi trường mà còn thể hiện trách nhiệm của chúng ta trong việc bảo vệ thiên nhiên cho thế hệ tương lai.</p>\r\n                    <p class=\"check-item\"><strong>Tôn vinh phong cách sống đơn giản:</strong> Sự đơn giản trong thiết kế nhưng lại vô cùng tinh tế chính là minh chứng cho một phong cách sống tối giản nhưng đầy ý nghĩa. Túi Handmade Shoulder Len là món đồ lý tưởng cho những ai yêu thích phong cách sống đơn giản.</p>\r\n                    <p class=\"check-item\"><strong>Kết nối con người với thiên nhiên:</strong> Được làm từ sợi len tự nhiên, chiếc túi này không chỉ mang đến cảm giác dễ chịu, thoải mái khi sử dụng mà còn là sự kết nối gần gũi với thiên nhiên. Mỗi lần sử dụng chiếc túi này, bạn không chỉ cảm nhận được vẻ đẹp của sự tinh tế mà còn cảm nhận được sự tươi mới, gần gũi mà thiên nhiên mang lại.</p>\r\n                </div>\r\n    \r\n                <!-- Nội dung bổ sung -->\r\n                <div class=\"productPost-additional\">\r\n                    <h2>Lý do bạn không thể bỏ qua chiếc túi Handmade này</h2>\r\n                    <p class=\"check-item\"><strong>Sự tinh xảo trong từng đường kim mũi chỉ:</strong> Mỗi chiếc túi đều được làm thủ công tỉ mỉ bởi những người thợ lành nghề, đảm bảo sự độc đáo và chất lượng cao nhất. Không có chiếc túi nào giống nhau, và chính điều đó tạo nên giá trị riêng biệt cho từng sản phẩm.</p>\r\n                    <p class=\"check-item\"><strong>Độ bền vượt thời gian:</strong> Túi được làm từ chất liệu sợi len tự nhiên, mang lại độ bền cao và khả năng chịu lực ấn tượng. Dù bạn mang theo sách vở đi học hay đồ dùng cá nhân, chiếc túi này vẫn luôn đồng hành cùng bạn.</p>\r\n                    <p class=\"check-item\"><strong>Chống thấm nhẹ, sẵn sàng cho mọi thời tiết:</strong> Với khả năng chống thấm nhẹ, chiếc túi vẫn giữ được vẻ đẹp nguyên vẹn trong những ngày mưa nhẹ, giúp bạn an tâm sử dụng mọi lúc, mọi nơi.</p>\r\n                    <p class=\"check-item\"><strong>Phong cách sống bền vững:</strong> Bằng việc lựa chọn sản phẩm này, bạn không chỉ sở hữu một món đồ đẹp mà còn góp phần bảo vệ môi trường. Sản phẩm được làm từ sợi len tái chế, giúp giảm thiểu rác thải và bảo vệ hành tinh.</p>\r\n                    <p class=\"check-item\"><strong>Món quà đầy ý nghĩa:</strong> Đây là món quà tuyệt vời cho những người thân yêu, hoặc cho chính bản thân bạn, để thể hiện sự yêu thích đối với sự tinh tế và phong cách sống tối giản. Một món quà không chỉ đẹp về hình thức mà còn mang giá trị tinh thần sâu sắc.</p>\r\n                </div>', 'tui-shouder-len.jpg', NULL, '2025-11-11', 10, 'Túi Handmade Shoulder Len tại Trạm Nhỏ Xinh kết hợp nét đẹp thủ công và phong cách hiện đại. Làm từ len chất lượng cao, túi mềm mại, chắc chắn với dây đeo vai thoải mái và màu sắc tinh tế, mang đến vẻ ngoài thời trang cho những ai yêu thích sự độc đáo và cá tính.', 1, 6, 2),
(6, 'Móc Khóa Gỗ Vải Handmade', '<ul class=\"productPost-details\">\r\n                                <li><strong>Chất liệu:</strong> Gỗ tự nhiên được gia công tỉ mỉ, kết hợp với vải cotton mềm mại, họa tiết tinh tế và khóa kim loại chắc chắn.</li>\r\n                                <li><strong>Kích thước:</strong> Tổng chiều dài 12cm, vòng gỗ 3cm. Thiết kế nhỏ gọn, tiện lợi, dễ dàng mang theo mọi lúc mọi nơi.</li>\r\n                                <li><strong>Trọng lượng:</strong> 40g - nhẹ nhàng, không gây bất tiện khi sử dụng nhưng vẫn đảm bảo độ bền chắc.</li>\r\n                                <li><strong>Họa tiết:</strong> Hoa lá vintage trên nền vải pastel nhẹ nhàng, phù hợp với nhiều phong cách thời trang.</li>\r\n                            </ul>\r\n                    \r\n                            <!-- Công dụng -->\r\n                            <div class=\"productPost-usage\">\r\n                                <h2>Công dụng và giá trị sử dụng</h2>\r\n                                <p class=\"check-item\"><strong>Phụ kiện thời trang:</strong> Là món đồ trang trí hoàn hảo cho chìa khóa, balo, hoặc túi xách. Thiết kế sang trọng nhưng không kém phần tinh tế giúp bạn nổi bật trong mọi tình huống.</p>\r\n                                <p class=\"check-item\"><strong>Quà tặng ý nghĩa:</strong> Đây là món quà lý tưởng dành cho bạn bè, người thân trong các dịp đặc biệt như sinh nhật, kỷ niệm, hoặc lễ hội. Sự kết hợp giữa chất liệu tự nhiên và thiết kế độc đáo tạo nên giá trị vượt thời gian.</p>\r\n                                <p class=\"check-item\"><strong>Điểm nhấn cá tính:</strong> Phù hợp với những ai yêu thích sự độc đáo, muốn thể hiện phong cách riêng qua từng chi tiết nhỏ trong cuộc sống.</p>\r\n                            </div>\r\n                    \r\n                            <!-- Ý nghĩa sản phẩm -->\r\n                            <div class=\"productPost-meaning\">\r\n                                <h2>Ý nghĩa của Móc Khóa Gỗ Vải Handmade</h2>\r\n                                <p class=\"check-item\"><strong>Kết nối với thiên nhiên:</strong> Sử dụng gỗ tự nhiên và vải cotton không chỉ mang lại cảm giác thân thiện với môi trường mà còn tạo sự gần gũi với thiên nhiên. Sản phẩm là lời nhắc nhở về vẻ đẹp đơn giản, mộc mạc mà vẫn tinh tế.</p>\r\n                                <p class=\"check-item\"><strong>Vẻ đẹp thủ công:</strong> Từng chiếc móc khóa được tạo ra từ bàn tay khéo léo của người thợ thủ công, mỗi sản phẩm là một tác phẩm nghệ thuật độc nhất, mang dấu ấn riêng.</p>\r\n                                <p class=\"check-item\"><strong>Phong cách sống bền vững:</strong> Hướng tới xu hướng tiêu dùng bền vững, sản phẩm sử dụng chất liệu thân thiện với môi trường, giúp bạn góp phần bảo vệ hành tinh.</p>\r\n                            </div>\r\n\r\n                            <!-- Lý do nên sở hữu -->\r\n                            <div class=\"productPost-additional\">\r\n                                <h2>Lý do bạn nên sở hữu Móc Khóa Gỗ Vải Handmade</h2>\r\n                                <p class=\"check-item\"><strong>Thiết kế độc đáo:</strong> Mỗi chiếc móc khóa là một sự kết hợp hài hòa giữa chất liệu tự nhiên và phong cách hiện đại, tạo nên sự khác biệt không lẫn vào đâu.</p>\r\n                                <p class=\"check-item\"><strong>Độ bền vượt trội:</strong> Với chất liệu gỗ cao cấp và vải cotton chất lượng, sản phẩm bền đẹp theo thời gian, không bị xuống cấp dù sử dụng thường xuyên.</p>\r\n                                <p class=\"check-item\"><strong>Dễ dàng bảo quản:</strong> Sản phẩm dễ dàng làm sạch bằng khăn mềm hoặc nước ấm, giúp duy trì độ sáng bóng và sạch sẽ trong thời gian dài.</p>\r\n                                <p class=\"check-item\"><strong>Phụ kiện không lỗi mốt:</strong> Móc khóa gỗ vải là món đồ thủ công vượt thời gian, phù hợp với mọi lứa tuổi và phong cách.</p>\r\n                            </div>', 'moc-khoa-go-vai.jpg', NULL, '2025-11-12', 10, 'Móc Khóa Gỗ Vải Handmade tại shop Trạm Nhỏ Xinh là sản phẩm độc đáo, được làm thủ công từ gỗ tự nhiên và vải cao cấp. Với thiết kế dễ thương và màu sắc tươi sáng, mỗi chiếc móc khóa không chỉ tiện lợi mà còn là món quà ý nghĩa dành cho bạn bè và người thân. Ghé thăm Trạm Nhỏ Xinh để tìm cho mình một chiếc móc khóa đặc biệt nhé!', 1, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcomment`
--

CREATE TABLE `productcomment` (
  `id` int(11) NOT NULL,
  `guestName` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `dateComment` datetime DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcomment`
--

INSERT INTO `productcomment` (`id`, `guestName`, `text`, `dateComment`, `idProduct`, `idUser`) VALUES
(2, 'Người thần bí', 'không biết bình luận', '2025-12-07 05:37:24', 26, NULL),
(3, 'Gia Huy', 'Sản phẩm đẹp', '2025-12-07 06:12:51', 26, 12),
(4, NULL, 'Sản phẩm đẹp', '2025-12-11 09:55:30', 26, 12),
(5, NULL, 'Sản phẩm đẹp', '2025-12-11 10:19:09', 26, 12),
(6, NULL, 'Sản phẩm đẹp', '2025-12-11 14:15:42', 26, 12),
(7, NULL, 'sản phẩm đẹp', '2025-12-11 15:38:19', 1, 12),
(8, 'ẩn danh', 'đẹp', '2025-12-11 15:38:40', 1, NULL),
(9, NULL, 'đẹp', '2025-12-12 17:26:28', 17, 13),
(10, 'phát ', 'Sản phẩm đẹp', '2025-12-12 17:33:58', 26, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productdetail`
--

CREATE TABLE `productdetail` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `idColor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productdetail`
--

INSERT INTO `productdetail` (`id`, `idProduct`, `stockQuantity`, `price`, `idColor`) VALUES
(45, 1, 27, 50000, 15),
(46, 1, 30, 50000, 14),
(51, 2, 30, 120000, 3),
(52, 2, 30, 120000, 2),
(57, 3, 30, 40000, 9),
(58, 3, 30, 40000, 2),
(81, 7, 30, 265000, 14),
(82, 7, 30, 265000, 5),
(87, 8, 30, 60000, 14),
(88, 8, 30, 60000, 5),
(93, 9, 30, 60000, 14),
(94, 9, 30, 60000, 5),
(99, 10, 30, 40000, 14),
(100, 10, 30, 40000, 5),
(105, 11, 30, 60000, 14),
(106, 11, 30, 60000, 5),
(111, 12, 30, 200000, 14),
(112, 12, 30, 200000, 5),
(117, 13, 29, 250000, 14),
(118, 13, 30, 250000, 5),
(119, 13, 30, 255000, 14),
(120, 13, 30, 255000, 5),
(121, 13, 30, 260000, 14),
(122, 13, 30, 260000, 5),
(123, 14, 30, 250000, 14),
(124, 14, 30, 250000, 5),
(125, 14, 30, 255000, 14),
(126, 14, 30, 255000, 5),
(127, 14, 30, 260000, 14),
(128, 14, 30, 260000, 5),
(129, 15, 29, 250000, 14),
(130, 15, 30, 250000, 5),
(131, 15, 30, 255000, 14),
(132, 15, 30, 255000, 5),
(133, 15, 30, 260000, 14),
(134, 15, 30, 260000, 5),
(135, 16, 30, 250000, 14),
(136, 16, 30, 250000, 5),
(137, 16, 30, 255000, 14),
(138, 16, 30, 255000, 5),
(139, 16, 30, 260000, 14),
(140, 16, 30, 260000, 5),
(141, 17, 29, 250000, 14),
(142, 17, 30, 250000, 5),
(143, 17, 30, 255000, 14),
(144, 17, 30, 255000, 5),
(145, 17, 30, 260000, 14),
(146, 17, 30, 260000, 5),
(147, 18, 30, 270000, 14),
(148, 18, 30, 270000, 5),
(149, 18, 30, 275000, 14),
(150, 18, 30, 275000, 5),
(151, 18, 30, 280000, 14),
(152, 18, 30, 280000, 5),
(153, 19, 30, 250000, 14),
(154, 19, 30, 250000, 5),
(155, 19, 30, 255000, 14),
(156, 19, 30, 255000, 5),
(157, 19, 30, 260000, 14),
(158, 19, 30, 260000, 5),
(159, 20, 29, 200000, 14),
(160, 20, 30, 200000, 5),
(161, 20, 30, 205000, 14),
(162, 20, 30, 205000, 5),
(163, 20, 30, 210000, 14),
(164, 20, 30, 210000, 5),
(165, 21, 32, 180000, 14),
(166, 21, 30, 180000, 5),
(167, 21, 30, 185000, 14),
(168, 21, 30, 185000, 5),
(169, 21, 30, 190000, 14),
(170, 21, 30, 190000, 5),
(171, 22, 28, 180000, 14),
(172, 22, 30, 180000, 5),
(173, 22, 30, 185000, 14),
(174, 22, 30, 185000, 5),
(175, 22, 30, 190000, 14),
(176, 22, 30, 190000, 5),
(177, 23, 27, 100000, 14),
(178, 23, 30, 100000, 5),
(179, 23, 30, 105000, 14),
(180, 23, 30, 105000, 5),
(181, 23, 30, 110000, 14),
(182, 23, 30, 110000, 5),
(183, 24, 26, 150000, 14),
(184, 24, 30, 150000, 5),
(185, 24, 30, 155000, 14),
(186, 24, 30, 155000, 5),
(187, 24, 30, 160000, 14),
(188, 24, 30, 160000, 5),
(189, 25, 9990, 200000, 14),
(192, 25, 25, 205000, 5),
(195, 26, 13, 220000, 14),
(196, 26, 28, 220000, 5),
(201, 4, 30, 40000, 2),
(202, 4, 30, 40000, 11),
(203, 4, 30, 45000, 2),
(204, 4, 30, 45000, 11),
(205, 4, 30, 50000, 2),
(206, 4, 30, 50000, 11),
(207, 5, 30, 60000, 17),
(208, 5, 30, 60000, 13),
(209, 5, 30, 65000, 17),
(210, 5, 30, 65000, 13),
(211, 5, 30, 70000, 17),
(212, 5, 30, 70000, 13),
(213, 6, 30, 65000, 13),
(214, 6, 29, 65000, 14),
(215, 6, 30, 70000, 13),
(216, 6, 30, 70000, 14),
(217, 6, 30, 75000, 13),
(218, 6, 30, 75000, 14),
(219, 25, 8, 200000, 1),
(220, 27, 2, 100000, 18),
(221, 27, 20, 100000, 15),
(222, 28, 100, 200000, 16),
(223, 29, 100, 200000, 16),
(224, 30, 100, 210000, 14),
(225, 31, 100, 189000, 16),
(226, 31, 100, 214000, 14),
(227, 32, 100, 200000, 3),
(228, 33, 100, 200000, 2),
(229, 34, 100, 230000, 3),
(230, 35, 100, 170000, 10),
(231, 36, 100, 185000, 14),
(232, 36, 100, 178000, 3),
(233, 37, 100, 150000, 7),
(234, 38, 100, 179000, 8),
(235, 39, 100, 167000, 8),
(236, 40, 100, 218000, 14),
(237, 41, 100, 190000, 17),
(238, 42, 100, 185000, 15),
(239, 42, 0, 204000, 2),
(240, 43, 100, 167000, 2),
(241, 44, 100, 193000, 7),
(242, 45, 100, 56000, 14),
(243, 46, 100, 50000, 14),
(244, 47, 100, 45000, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `listImages` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `hot` tinyint(4) DEFAULT NULL,
  `status` int(4) NOT NULL,
  `view` int(11) NOT NULL,
  `idCategory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `image`, `listImages`, `name`, `description`, `hot`, `status`, `view`, `idCategory`) VALUES
(1, 'guong-mori.jpg', NULL, 'Gương mori', NULL, NULL, 1, 146, 1),
(2, 'guong-theu-hoa.jpg', NULL, 'Gương thêu hoa', NULL, NULL, 1, 9, 1),
(3, 'cot-toc-theu.jpg', NULL, 'Cột tóc thêu', NULL, NULL, 1, 0, 5),
(4, 'moc-khoa-go-vai.jpg', NULL, 'Móc khóa gỗ vải', NULL, NULL, 1, 0, 5),
(5, 'moc-khoa-len.jpg', NULL, 'Móc khóa len', NULL, NULL, 1, 0, 5),
(6, 'khan-bandana.jpg', NULL, 'Khăn bandana', NULL, NULL, 1, 6, 6),
(7, 'cot-srunchies.jpg', NULL, 'Cột Srunchies', NULL, NULL, 1, 1, 5),
(8, 'hong-ngoc-lua.jpg', NULL, 'Hồng Ngọc Lửa', NULL, NULL, 1, 1, 2),
(9, 'ngoc-xanh-dai-duong.jpg', NULL, 'Ngọc xanh đại dương', NULL, NULL, 1, 0, 2),
(10, 'vong-day-basic.jpg', NULL, 'Vòng dây basic', NULL, NULL, 1, 1, 2),
(11, 'luc-lac-huyen-bi.jpg', NULL, 'Lục lạc huyền bí', NULL, NULL, 1, 0, 2),
(12, 'combo-basic.jpg', NULL, 'Combo basic', NULL, NULL, 1, 0, 2),
(13, 'combo-da-hong.jpg', NULL, 'Combo đá hồng', NULL, NULL, 1, 2, 2),
(14, 'combo-da-day-trang.jpg', NULL, 'Combo đá, dây trắng', NULL, NULL, 1, 1, 2),
(15, 'combo-da-day-den.jpg', NULL, 'Combo đá dây đen', NULL, NULL, 1, 2, 2),
(16, 'combo-da-xanh.jpg', NULL, 'Combo đá xanh', NULL, NULL, 1, 0, 2),
(17, 'combo-da-day-nau1.jpg', NULL, 'Combo đá dây nâu', NULL, NULL, 1, 46, 2),
(18, 'tui-hoa-len.jpg', NULL, 'Túi hoa len', NULL, NULL, 1, 0, 4),
(19, 'tui-popcorn-len.jpg', NULL, 'Túi popcorn len', NULL, NULL, 1, 0, 4),
(20, 'tui-cinta-len.jpg', NULL, 'Túi Cinta len', NULL, NULL, 1, 1, 4),
(21, 'tui-vuong-len.jpg', NULL, 'Túi vuông len', NULL, NULL, 1, 12, 4),
(22, 'tui-tote-len.jpg', NULL, 'Túi tote len', NULL, NULL, 1, 9, 4),
(23, 'tui-2-day-nho-len.jpg', NULL, 'Túi 2 dây nhỏ len', NULL, NULL, 1, 4, 4),
(24, 'tui-xach-tay-nho-len.jpg', NULL, 'Túi xách tay nhỏ len', NULL, NULL, 1, 5, 4),
(25, 'tui-shouder-len.jpg', '', 'Túi shouder len', '', NULL, 1, 200, 4),
(26, 'non-len.jpg', NULL, 'Nón len', NULL, NULL, 1, 569, 3),
(27, 'non-len7.png', '', 'Nón len xanh', '', NULL, 1, 47, 3),
(28, 'vong-20.jpg', '', 'Vòng Cổ Hoa Tím Dạ Quang', '', NULL, 1, 2, 2),
(29, 'vong-21.jpg', '', 'Vòng Cổ Cánh Bướm Tím Mộng', '', NULL, 1, 0, 2),
(30, 'vong-23.jpg', '', 'Vòng Cổ Hoa Mai Vàng Nhẹ', '', NULL, 1, 0, 2),
(31, 'vong-23.jpg', NULL, 'Vòng Cổ Hoa Lan Tím Thủy Tinh', '', NULL, 1, 0, 2),
(32, 'mu-1.png', NULL, 'Nón len Răng sún ', '', NULL, 1, 0, 3),
(33, 'non-lenr.png', NULL, 'Nón len răng sún trắng', '', NULL, 1, 0, 3),
(34, 'mu-meo.png', NULL, 'Nón len tai mèo', '', NULL, 1, 0, 3),
(35, 'non-len4.jpg', NULL, 'Nón len xanh trắng', '', NULL, 1, 1, 3),
(36, 'non-len3.jpg', NULL, 'Nón len vàng đen', '', NULL, 1, 1, 3),
(37, 'khan-2.png', NULL, 'Khăn bông hoa hồng', '', NULL, 1, 1, 6),
(38, 'khan-3.png', NULL, 'Khăn Len Xanh Biển Dịu Mát', '', NULL, 1, 1, 6),
(39, 'khan-4.png', NULL, 'Khăn Len Sóng Biển Navy', '', NULL, 1, 2, 6),
(40, 'khan-5.png', NULL, 'Khăn Len Vàng Mật Ong', '', NULL, 1, 1, 6),
(41, 'guong-cuc.png', NULL, 'Gương Vòng Hoa Cúc Mùa Xuân', '', NULL, 1, 1, 1),
(42, 'guong-theu-hoa.jpg', NULL, 'Gương Thêu Hoa Ánh Vàng', '', NULL, 1, 0, 1),
(43, 'guong-thieu-tay.png', NULL, 'Gương Thêu Tay Thủ Công Vintage', '', NULL, 1, 0, 1),
(44, 'guong-theu-hoa3.jpg', NULL, 'Gương Thêu Hoa Dạ Ngọc', '', NULL, 1, 0, 1),
(45, 'phukien-1.jpg', NULL, 'Cài Áo Hoa Vàng Nắng', '', NULL, 1, 0, 5),
(46, 'phukien-3.jpg', NULL, 'Cài Áo Hoa Hổ Phách', '', NULL, 1, 0, 5),
(47, 'phukien-4.jpg', NULL, 'Phụ Kiện Hoa Thạch Anh', '', NULL, 1, 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT 0,
  `active` int(1) NOT NULL DEFAULT 0,
  `dateCreate` timestamp NOT NULL DEFAULT current_timestamp(),
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `password`, `role`, `active`, `dateCreate`, `code`) VALUES
(12, 'Quang Huy', '0969894160', '1791A, QL1A, Tân Thới Hiệp, Q12, TP.HCM', 'qhuy112002@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, '2025-11-27 00:29:01', ''),
(13, 'Trần Phát', '', NULL, 'nastumijaki198@gmail.com', '', 0, 1, '2025-12-12 09:58:21', ''),
(14, 'Mai Tiến Phát Trần', '', NULL, 'phattmtps40087@gmail.com', '', 0, 1, '2025-12-12 10:10:53', ''),
(15, 'Quang Huy', '0969894160', NULL, 'huylhqps40077@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, '2025-12-18 07:35:44', ''),
(16, 'Huy Quang', '', NULL, 'qhuy161101@gmail.com', '', 0, 1, '2025-12-19 14:26:17', ''),
(1002, 'Charm Craft', '0969894160', NULL, 'charmcraft123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, '2025-12-22 12:07:33', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discountType` varchar(50) DEFAULT NULL,
  `discountValue` int(11) DEFAULT 0,
  `minValue` int(11) DEFAULT 0,
  `applyType` varchar(50) DEFAULT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `name`, `description`, `discountType`, `discountValue`, `minValue`, `applyType`, `dateStart`, `dateEnd`, `status`) VALUES
(1, 'GIAM10', 'Giảm 10% cho toàn bộ đơn hàng', 'percent', 0, 0, 'order', '2025-01-01', '2025-12-31', 1),
(2, 'FREESHIP20', 'Giảm 20% phí vận chuyển', 'percent', 0, 0, 'shipping', '2025-01-01', '2025-12-31', 1),
(3, 'SALE50K', 'Giảm 50.000đ cho đơn hàng từ 300k', 'fixed', 0, 0, 'order', '2025-01-01', '2025-12-31', 1),
(4, 'Giảm 30K', 'Giảm 30K theo phí vận chuyển', 'fixed', 30000, 0, 'order', '2025-12-21', '2025-12-22', 1),
(5, 'Quang Huy', 'ád', 'fixed', 20000, 200000, 'order', '2025-12-22', '2025-12-23', 0),
(6, '50K', 'Giảm 50K cho đơn hàng trên 300K', 'fixed', 50000, 300000, 'order', '2025-12-22', '2025-12-30', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_table` (`table_name`),
  ADD KEY `idx_created` (`created_at`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProductDetail` (`idProductDetail`),
  ADD KEY `idOrder` (`idOrder`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVoucher` (`idVoucher`),
  ADD KEY `idPayment` (`idPayment`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catePost` (`idCatePost`),
  ADD KEY `idUserPost` (`idUserPost`);

--
-- Chỉ mục cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idMaterial` (`idColor`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `paymentmethod`
--
ALTER TABLE `paymentmethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idVoucher`) REFERENCES `voucher` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idPayment`) REFERENCES `paymentmethod` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
