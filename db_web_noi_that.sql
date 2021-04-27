-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 27, 2021 lúc 04:29 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_web_noi_that`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0988113679', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(5, 'chào mừng', 'chao-mung', 0, 1, 1, 0, 'chào mừng bạn tới website', NULL, '<p>sadasdas</p>', '2021-04-15 18:20:16', 0, 1, '2021-04-15 18:20:53'),
(6, 'Hello worl !!!!!', 'hello-worl', 0, 1, 1, 0, 'Hellloooooooooooooooooo!', NULL, '<p>Hellloooooooooooooooooo! Congragulation !!!!</p>', '2021-04-27 07:07:11', 0, 1, NULL),
(7, 'Sản phẩm mới!!!!!!', 'san-pham-moi', 0, 1, 2, 0, 'Giới thiệu về giường ngủ gỗ bọc nỉ cổ điển đẹp- GN 39', '2021-04-27__t3.png', '<p><strong>&nbsp;Thương hiệu:</strong>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;T&igrave;nh trạng:</strong>&nbsp;C&ograve;n h&agrave;ng</p>\r\n\r\n<p>7.200.000₫</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>\r\n	<li>Chất liệu: Gỗ c&ocirc;ng nghiệp bọc nỉ</li>\r\n	<li>K&iacute;ch thước: Rộng:160cm x D&agrave;i:200cm x Cao:30cm</li>\r\n	<li>Ch&uacute; &Yacute;: Nội thất Dương Đ&ocirc;ng nhận đặt h&agrave;ng theo y&ecirc;u cầu</li>\r\n</ul>\r\n\r\n<form action=\"https://noithatduongdong.vn/cart/add\" enctype=\"multipart/form-data\" id=\"add-to-cart-form\" method=\"post\">&nbsp;</form>', '2021-04-27 07:11:00', 1, 1, '2021-04-27 07:14:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(10, 'Phòng Khách', 0, 'phong-khach', '2021-04-14__index-cate-icon-1.png', NULL, NULL, 1, 1, '2021-04-13 17:25:54', '2021-04-13 17:30:24'),
(11, 'Phòng Ngủ', 0, 'phong-ngu', '2021-04-14__index-cate-icon-2.png', NULL, NULL, 1, 1, '2021-04-13 17:26:18', '2021-04-13 17:30:26'),
(12, 'Phòng Bếp', 0, 'phong-bep', '2021-04-14__index-cate-icon-3.png', NULL, NULL, 1, 1, '2021-04-13 17:26:49', '2021-04-13 17:30:27'),
(13, 'Phòng làm việc', 0, 'phong-lam-viec', '2021-04-14__index-cate-icon-4.png', NULL, NULL, 1, 1, '2021-04-13 17:27:08', '2021-04-13 17:30:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'đẹp lắm', 0, 14, 0, 4, 0, 0, '2021-04-16 03:12:16', NULL),
(4, NULL, NULL, 'đẹppppp', 0, 13, 0, 4, 0, 0, '2021-04-16 03:13:34', NULL),
(5, NULL, NULL, 'Nice!!!', 0, 22, 0, 6, 0, 0, '2021-04-27 06:18:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'thành', '0348912838', 'sahjdasjd@gmail.com', '23123213fsdfsd', '2021-04-16 03:08:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'GIAMGIA', 46, '1970-01-01 08:00:00', '1970-01-01 08:00:00', 30, '2021-04-14 15:35:00', '2021-04-27 07:03:47'),
(2, 'GIAMGIA22', 20, '2021-04-27 14:51:00', '2021-05-01 14:51:00', 50, '2021-04-27 07:51:32', '2021-04-27 07:51:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(4, 'event1', '2021-04-14__one-banner-1-image.png', '/', 1, 0, 0, 0, '2021-04-13 17:44:21', NULL),
(5, 'event2', '2021-04-14__one-banner-2-image.png', '/', 0, 0, 1, 0, '2021-04-13 17:47:08', '2021-04-13 17:47:08'),
(6, 'event3', '2021-04-14__banner-2-image.png', '/', 0, 1, 0, 0, '2021-04-13 17:46:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(8, 'thiết kế nội thất', 'thiet-ke-noi-that', 'thiết kế nội thất', 1, '2021-04-13 17:39:19', '2021-04-27 07:44:47'),
(9, 'Thiết Kế Thi Công Nội Thất', 'thiet-ke-thi-cong-noi-that', 'Thiết Kế Thi Công Nội Thất', 0, '2021-04-13 17:39:38', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-06-19 08:38:59', NULL),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-06-19 08:39:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1),
(32, '2021_03_14_204259_create_discount_code_table', 2),
(33, '2021_03_30_105937_create_payments_table', 2),
(34, '2021_03_30_190556_add_tst_code_to_transactions_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(4, 5, 22, 0, 3, 11000000, NULL, NULL, NULL, NULL, NULL),
(5, 5, 12, 0, 1, 2300000, NULL, NULL, NULL, NULL, NULL),
(6, 6, 15, 0, 1, 5200000, NULL, NULL, NULL, NULL, NULL),
(8, 8, 14, 0, 1, 5300000, NULL, NULL, NULL, NULL, NULL),
(9, 8, 13, 0, 1, 3000000, NULL, NULL, NULL, NULL, NULL),
(10, 9, 22, 0, 1, 11000000, NULL, NULL, NULL, NULL, NULL),
(11, 9, 13, 0, 1, 3000000, NULL, NULL, NULL, NULL, NULL),
(12, 9, 17, 0, 1, 5500000, NULL, NULL, NULL, NULL, NULL),
(13, 12, 22, 0, 1, 11000000, NULL, NULL, NULL, NULL, NULL),
(14, 12, 13, 0, 1, 3000000, NULL, NULL, NULL, NULL, NULL),
(15, 12, 17, 0, 1, 5500000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08'),
('thuha@gmail.com', '$2y$10$7zioSHCXrN/Dx.sa1iuMwetzMYmjOwjVefsXnn6I5jgfiwNlaZDGq', '2021-04-27 05:43:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 999999.99, 'sdadsa', 'QiJZ1SlNiySzrkF', '00', '13490542', 'NCB', '2021-04-14 22:52:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(7, 'Nội thất A', 'noi-that-a', 'noithata@gmail.com', '0928817228', '2021-04-13 17:38:46', NULL),
(8, 'Nội thất B', 'noi-that-b', 'noithatb@gmail.com', '0359020898', '2021-04-13 17:39:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(12, 'Bàn sofa đôi trái bí mặt đá - BT 22', 'ban-sofa-doi-trai-bi-mat-da-bt-22', 2300000, 0, 10, 0, 0, '2021-04-14__ban-tra-chan-sat-1.jpg', 4, 1, 1, 1, '<ul>\r\n	<li>Trạng th&aacute;i:C&ograve;n h&agrave;ng</li>\r\n	<li>M&agrave;u sản phẩm: trắng, đen</li>\r\n	<li>Chất liệu: ch&acirc;n sắt&nbsp;, mặt đ&aacute;</li>\r\n	<li>Bảo h&agrave;nh:12&nbsp;th&aacute;ng</li>\r\n	<li>Ch&uacute; &yacute;:NHẬN ĐẶT H&Agrave;NG THEO Y&Ecirc;U CẦU CỦA KH&Aacute;CH</li>\r\n</ul>', '<p><strong>B&agrave;n sofa đ&ocirc;i tr&aacute;i b&iacute; mặt đ&aacute; - BT 22</strong></p>\r\n\r\n<p><strong>B&agrave;n sofa đ&ocirc;i tr&aacute;i b&iacute; mặt đ&aacute; - BT 22 l&agrave;</strong>&nbsp;Mẫu b&agrave;n sofa tr&ograve;n đ&ocirc;i&nbsp;cực kỳ sang trọng bởi mặt b&agrave;n đ&aacute; cao cấp. Tạo n&ecirc;n sự đẳng cấp của chủ nh&acirc;n sở hữu, l&agrave; sự giao thoa, kết hợp ho&agrave;n hảo uyển chuyển của gia đ&igrave;nh, cặp vợ chồng.</p>\r\n\r\n<p>B&agrave;n tr&agrave; tr&ograve;n đ&ocirc;i mặt đ&aacute; v&acirc;n m&acirc;y, ch&acirc;n đen hoặc ch&acirc;n v&agrave;ng đ&ocirc;ng&nbsp;l&agrave;m bằng hợp chất kim loại kh&ocirc;ng gỉ được phun sơn tĩnh điện chống han rỉ bong tr&oacute;c v&agrave; mặt b&agrave;n bằng đ&aacute; nh&acirc;n tạo gi&uacute;p chịu lực tốt, chống trầy xước.</p>\r\n\r\n<h2>&nbsp;<strong>B&agrave;n sofa đ&ocirc;i tr&aacute;i b&iacute; mặt đ&aacute; - BT 22</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu: khung sắt, mặt k&iacute;nh&nbsp; &nbsp;&nbsp;</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>+ B&agrave;n nhỏ: 45x40 (cm)</p>\r\n\r\n	<p>+ B&agrave;n lớn: 60x45 (cm)</p>\r\n	</li>\r\n	<li>M&agrave;u sắc: đ&aacute;&nbsp;đen, trắng&hellip;</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<h2><img src=\"https://bizweb.dktcdn.net/100/394/517/files/ban-tra-chan-sat-1-copy.jpg?v=1608092359223\" /></h2>', 1, 5, 5, '2021-04-13 17:43:21', 2000, 7, '2021-04-14 15:30:38'),
(13, 'Bàn trà đôi mặt đá tròn có ngăn kéo - BT 21', 'ban-tra-doi-mat-da-tron-co-ngan-keo-bt-21', 3000000, 0, 10, 0, 0, '2021-04-14__ban-tra-thong-minh-2.png', 2, 1, 1, 3, '<ul>\r\n	<li>Trạng th&aacute;i:C&ograve;n h&agrave;ng</li>\r\n	<li>M&agrave;u sản phẩm: trắng</li>\r\n	<li>Chất liệu: ch&acirc;n sắt&nbsp;, mặt đ&aacute;</li>\r\n	<li>Bảo h&agrave;nh:12&nbsp;th&aacute;ng</li>\r\n	<li>Ch&uacute; &yacute;:NHẬN ĐẶT H&Agrave;NG THEO Y&Ecirc;U CẦU CỦA KH&Aacute;CH</li>\r\n</ul>', '<p><strong>Chắc chắn ph&ograve;ng kh&aacute;ch nh&agrave; bạn sẽ trở n&ecirc;n sang trọng v&agrave; lịch l&atilde;m hơn với B&agrave;n tr&agrave; đ&ocirc;i mặt đ&aacute; tr&ograve;n c&oacute; ngăn k&eacute;o &ndash; BT21, thiết kế hiện đại, bắt kịp xu hướng. Mẫu b&agrave;n tr&agrave; n&agrave;y l&agrave; một lựa chọn v&ocirc; c&ugrave;ng hợp l&yacute; cho những ai y&ecirc;u th&iacute;ch sự trang nh&atilde;, thuần khiết</strong></p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/394/517/files/ban-tra-thong-minh-1-copy-daf990dc-d3f9-41bb-b7ab-6e5b43ff0f81.jpg?v=1608091556555\" style=\"height:100%; width:100%\" /></p>', 0, 0, 0, '2021-04-13 17:50:18', 5000, 7, '2021-04-13 17:52:08'),
(14, 'Sofa giường thông minh tay vát - SF 57', 'sofa-giuong-thong-minh-tay-vat-sf-57', 5300000, 0, 10, 0, 0, '2021-04-14__z2221140356884-20a2a157a31ef768af9d534c7fdf8e9d-copy.jpg', 2, 1, 1, 1, '<p><strong>Th&ocirc;ng tin chi tiết sản phẩm&nbsp;ghế sofa giường th&ocirc;ng minh</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu: nỉ, khung gỗ tự nhi&ecirc;n ch&acirc;n inox.</li>\r\n	<li>K&iacute;ch thước:D&agrave;i 1m9 x&nbsp;Rộng 80cm.</li>\r\n	<li>K&iacute;ch thước giường: d&agrave;i 1m9 x rộng 1m6</li>\r\n	<li>M&agrave;u sắc: tự chọn</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>C&oacute; thể thay đổi chất liệu khung gỗ, k&iacute;ch thước, m&agrave;u sắc theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch</li>\r\n</ul>', '<h3><strong>Th&ocirc;ng tin chi tiết sản phẩm:</strong></h3>\r\n\r\n<p>&ndash;&nbsp;<strong>Chất liệu:</strong>&nbsp;Được sử dụng vải bọc chất lượng cao, hạn chế tối đa sự bai d&atilde;o v&agrave; xập xệ, n&acirc;ng cao tuổi thọ v&agrave; t&iacute;nh thẩm mỹ của ghế. Khung gỗ tự nhi&ecirc;n đ&atilde; xử l&yacute; chống cong v&ecirc;nh, mối mọt.<br />\r\n&ndash;&nbsp;<strong>K&iacute;ch thước sofa:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;220 * 90 * 96 cm</strong><br />\r\n&ndash;&nbsp;<strong>K&iacute;ch thước th&agrave;nh giường:&nbsp;220 * 190 * 45 cm</strong></p>\r\n\r\n<h3><strong>&nbsp;M&ocirc; tả sản phẩm Sofa giường th&ocirc;ng minh tay v&aacute;t</strong></h3>\r\n\r\n<p>Chiếc&nbsp;<strong>Sofa giường th&ocirc;ng minh tay v&aacute;t</strong>&nbsp;mang phong c&aacute;ch sofa giường cải tiến 2018, với t&iacute;nh năng hữu &iacute;ch, kiểu d&aacute;ng thanh lịch v&agrave; m&agrave;u sắc cực k&igrave; trẻ trung. Nh&igrave;n tổng thể c&oacute; thể thấy, sản phẩm được thiết kế bền chắc với thiết kế gọn g&agrave;ng, lớp đệm m&uacute;t d&agrave;y dặn nhưng cũng rất mềm mại với đường n&eacute;t thiết kế tinh tế.</p>\r\n\r\n<p>Sắc xanh thi&ecirc;n thanh kết hợp với chất liệu vải sần mang đến phong c&aacute;ch độc đ&aacute;o, mang đậm dấu ấn c&aacute; nh&acirc;n của người sử dụng.&nbsp;</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/394/517/files/z2221131576890-e9364a16477f6851b51cbfc31266687f-copy.jpg?v=1608017725376\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p><strong>Sofa giường th&ocirc;ng minh tay v&aacute;t</strong>&nbsp;c&oacute; k&iacute;ch thước ph&ugrave; hợp với những ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch vừa v&agrave; nhỏ, th&iacute;ch hợp l&agrave;m sofa văng ph&ograve;ng kh&aacute;ch, mang đến cảm gi&aacute;c tho&aacute;ng đ&atilde;ng v&agrave; gọn g&agrave;ng hơn. Với chiều d&agrave;i phủ bỉ 220 cm, chiều rộng ghế 90 cm, chiếc ghế sofa nhập khẩu n&agrave;y th&iacute;ch hợp đặt song song với cạnh tường của những kh&ocirc;ng gian hẹp d&agrave;i.</p>', 1, 4, 4, '2021-04-13 17:52:03', 200, 8, '2021-04-16 03:11:58'),
(15, 'ghế sofa giường thông minh màu xanh - SF 56', 'ghe-sofa-giuong-thong-minh-mau-xanh-sf-56', 5200000, 0, 10, 0, 0, '2021-04-14__3c4f8f5d46274a7fc5cd6f7cdd45536c.png', 1, 1, 1, 1, '<p><strong>Th&ocirc;ng tin chi tiết sản phẩm&nbsp;ghế sofa giường th&ocirc;ng minh</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu: nỉ, khung gỗ tự nhi&ecirc;n ch&acirc;n inox.</li>\r\n	<li>K&iacute;ch thước:D&agrave;i 1m9 x&nbsp;Rộng 80cm.</li>\r\n	<li>K&iacute;ch thước giường: d&agrave;i 1m9 x rộng 1m6</li>\r\n	<li>M&agrave;u sắc: tự chọn</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>C&oacute; thể thay đổi chất liệu khung gỗ, k&iacute;ch thước, m&agrave;u sắc theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch</li>\r\n</ul>', '<h2><strong>Giới thiệu chung về&nbsp;ghế sofa giường th&ocirc;ng minh m&agrave;u xanh</strong></h2>\r\n\r\n<p>Sở hữu một kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch hiện đại v&agrave; bạn đang băn khoăn chưa biết lựa chọn m&oacute;n đồ nội thất ph&ograve;ng kh&aacute;ch như thế n&agrave;o cho ph&ugrave; hợp th&igrave; sự xuất hiện của&nbsp;<strong>ghế sofa giường th&ocirc;ng minh cho ng&ocirc;i nh&agrave; hiện đại&nbsp;</strong>, sẽ l&agrave; lựa chọn l&yacute; tưởng cho căn ph&ograve;ng.</p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật của ghế sofa giường th&ocirc;ng minh m&agrave;u xanh</strong></h2>\r\n\r\n<p>Vượt qua một sản phẩm nội thất th&ocirc;ng thường,&nbsp;ghế sofa giường th&ocirc;ng minh&nbsp;l&agrave;m cho tất cả ch&uacute;ng ta phải trầm trồ v&agrave; ngạc nhi&ecirc;n bởi t&iacute;nh năng nổi bật m&agrave; sản phẩm đem đến. Được thiết kế giống như một chiếc ghế ngồi với những chiếc gối tựa lưng dễ chịu mang đến một kh&ocirc;ng gian ấm &aacute;p cho cả gia đ&igrave;nh đo&agrave;n tự sau bữa cơm tối v&agrave; đem đến một kh&ocirc;ng gian đ&oacute;n tiếp kh&aacute;ch sang trọng.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết sản phẩm&nbsp;ghế sofa giường th&ocirc;ng minh m&agrave;u xanh</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu: nỉ, khung gỗ tự nhi&ecirc;n ch&acirc;n inox.</li>\r\n	<li>K&iacute;ch thước:D&agrave;i 1m9 x&nbsp;Rộng 80cm.</li>\r\n	<li>K&iacute;ch thước giường: d&agrave;i 1m9 x rộng 1m6</li>\r\n	<li>M&agrave;u sắc: tự chọn</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>C&oacute; thể thay đổi chất liệu khung gỗ, k&iacute;ch thước, m&agrave;u sắc theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch</li>\r\n</ul>', 0, 0, 0, '2021-04-13 17:55:40', 5000, 8, '2021-04-13 17:55:50'),
(16, 'giường ngủ gỗ bọc da hiện đại - GN 42', 'giuong-ngu-go-boc-da-hien-dai-gn-42', 7000000, 0, 11, 0, 0, '2021-04-14__q1.png', 0, 0, 1, 0, '<ul>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>\r\n	<li>Chất liệu: Gỗ c&ocirc;ng nghiệp bọc da</li>\r\n	<li>K&iacute;ch thước: Rộng:160cm x D&agrave;i:200cm x Cao:30cm</li>\r\n	<li>Ch&uacute; &Yacute;: Nội thất Dương Đ&ocirc;ng nhận đặt h&agrave;ng theo y&ecirc;u cầu.</li>\r\n</ul>', '<h1><strong>giường ngủ gỗ bọc da hiện đại</strong></h1>\r\n\r\n<p>Kh&ocirc;ng chỉ l&agrave; nơi nghỉ ngơi, ngủ nghỉ, thư giản, giường ngủ c&ograve;n l&agrave; một m&oacute;n đồ nội thất trang tr&iacute; đẹp, vật dụng phong thủy cho ng&ocirc;i nh&agrave;, tạo ra một kh&ocirc;ng gian h&agrave;i h&ograve;a v&agrave; dễ chịu, gi&uacute;p x&acirc;y dựng v&agrave; vun đắp t&igrave;nh cảm gia đ&igrave;nh. Với bộ sản phẩm&nbsp;<strong>giường ngủ hiện đại</strong>, ch&uacute;ng t&ocirc;i hi vọng đem tới những sự lựa chọn ưng &yacute; nhất cho qu&yacute; kh&aacute;ch khi đến với nội thất Dương Đ&ocirc;ng</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết giường ngủ gỗ bọc da hiện đại</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu : gỗ bọc da</li>\r\n	<li>K&iacute;ch thước: 1m6&nbsp;x&nbsp;2m</li>\r\n	<li>M&agrave;u sắc: chọn theo y&ecirc;u cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<h2><strong>T&iacute;nh năng sản phẩm giường ngủ gỗ bọc da hiện đại</strong></h2>\r\n\r\n<p>Giường ngủ được l&agrave;m từ gỗ MDF phủ melamine bọc da</p>\r\n\r\n<p>Đầu giường được thiết kế hiện đại&nbsp;gi&uacute;p ph&ograve;ng ngủ trở n&ecirc;n sang trọng hơn</p>\r\n\r\n<p>K&iacute;ch thước ph&ugrave; hợp với v&oacute;c d&aacute;ng người ch&acirc;u &Aacute;, thoải m&aacute;i cho hai người nằm.</p>\r\n\r\n<p>M&agrave;u sắc bạn c&oacute; thể t&ugrave;y chọn để ph&ugrave; hợp với kh&ocirc;ng gian ph&ograve;ng ngủ của m&igrave;nh</p>', 0, 0, 0, '2021-04-14 13:33:10', 1000, 7, NULL),
(17, 'Giường 1.6m thông minh bọc đệm giá rẻ - GN 13', 'giuong-16m-thong-minh-boc-dem-gia-re-gn-13', 5500000, 0, 11, 0, 0, '2021-04-14__giuong-ngu-gia-dinh-thiet-ke-tien-dung-nv005.jpg', 3, 0, 1, 2, '<ul>\r\n	<li>K&iacute;ch thước: Rộng:160cm x D&agrave;i:200cm x Cao:30cm (theo y&ecirc;u cầu)</li>\r\n	<li>M&agrave;u sắc: Chọn m&agrave;u theo y&ecirc;u cầu</li>\r\n	<li>Bảo h&agrave;nh: 12&nbsp;th&aacute;ng</li>\r\n	<li>Xuất xứ: Việt Nam</li>\r\n</ul>', '<h2><strong>V&igrave; sao n&ecirc;n lựa chọn sản phẩm&nbsp;Giường 1.6m th&ocirc;ng minh bọc đệm gi&aacute; rẻ - GN 13?</strong></h2>\r\n\r\n<p>Thời gian trở lại đ&acirc;y, nội thất th&ocirc;ng minh đang ti&ecirc;n phong xu hướng, dẫn đầu chất lượng trong lĩnh vực nội thất gia đ&igrave;nh. V&agrave; để lựa chọn sản phẩm giường ngủ bọc đệm th&ocirc;ng minh sang trọng, đẹp mắt, th&igrave; mời qu&yacute; kh&aacute;ch c&ugrave;ng tiếp tục tham khảo th&ocirc;ng tin b&ecirc;n dưới.&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết sản phẩm Giường th&ocirc;ng minh bọc đệm 1m6 - GN 13</strong></h2>\r\n\r\n<p><strong>Chất liệu: G</strong>ỗ MDF phủ melamine chống mối mọt, cong v&ecirc;nh</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;Rộng:160cm x D&agrave;i:200cm x Cao:30cm. Hoặc gia chủ cũng c&oacute; thể đặt k&iacute;ch cỡ theo sở th&iacute;ch</p>\r\n\r\n<p><strong>M&agrave;u sắc:</strong>&nbsp;V&acirc;n sồi, trắng. Hoặc Qu&yacute;&nbsp;kh&aacute;ch c&oacute; thể lựa chọn m&atilde; m&agrave;u theo y&ecirc;u cầu</p>', 0, 0, 0, '2021-04-14 13:34:13', 2500, 7, NULL),
(18, 'Giường gỗ đẹp kiểu Nhật đầu tràn - GN 35', 'giuong-go-dep-kieu-nhat-dau-tran-gn-35', 5000000, 0, 11, 0, 0, '2021-04-14__gnd01.jpg', 0, 0, 1, 0, '<h2><strong>Đặc điểm của Giường gỗ đẹp kiểu Nhật đầu tr&agrave;n&nbsp;:</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu : Gỗ MDF phủ melamine</li>\r\n	<li>K&iacute;ch thước: 1m6 x 2m</li>\r\n	<li>M&agrave;u sắc: theo y&ecirc;u cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>', '<h2><strong>Ưu điểm của giường gỗ đẹp kiểu Nhật đầu tr&agrave;n - GN 35</strong></h2>\r\n\r\n<p>Nếu bạn muốn lựa chọn cho gia đ&igrave;nh một mẫu giường ngủ sang trọng, tiện &iacute;ch, th&igrave;&nbsp;Giường gỗ đẹp kiểu Nhật đầu tr&agrave;n - GN 35 ch&iacute;nh l&agrave; sự lựa chọn s&aacute;ng suốt của bạn. Sản phẩm c&oacute; thiết kế hiện đại, tinh tế đến từng đường n&eacute;t. Th&ocirc;ng tin chi tiết về sản phẩm sẽ được ch&uacute;ng t&ocirc;i đề cập b&ecirc;n dưới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết Giường gỗ đẹp kiểu Nhật đầu tr&agrave;n GN - 35</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu : Gỗ c&ocirc;ng nghiệp&nbsp;MDF phủ melamine&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước: 1m6&nbsp;x&nbsp;2m (hoặc đặt theo k&iacute;ch cỡ ph&ugrave; hợp với ph&ograve;ng ngủ của bạn)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u sắc: Chọn theo y&ecirc;u cầu với bảng m&agrave;u đa dạng</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ mới 100% chưa qua sử dụng.</p>\r\n	</li>\r\n</ul>', 0, 0, 0, '2021-04-14 13:35:14', 10000, 7, NULL),
(19, 'giường ngủ gỗ bọc nỉ cổ điển - GN 37', 'giuong-ngu-go-boc-ni-co-dien-gn-37', 7200000, 0, 11, 0, 0, '2021-04-14__t3.png', 1, 0, 1, 0, '<ul>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>\r\n	<li>Chất liệu: Gỗ c&ocirc;ng nghiệp bọc nỉ</li>\r\n	<li>K&iacute;ch thước: Rộng:160cm x D&agrave;i:200cm x Cao:30cm</li>\r\n	<li>Ch&uacute; &Yacute;: Nội thất Dương Đ&ocirc;ng nhận đặt h&agrave;ng theo y&ecirc;u cầu.</li>\r\n</ul>', '<p>Kh&ocirc;ng chỉ l&agrave; nơi nghỉ ngơi, ngủ nghỉ, thư giản, giường ngủ c&ograve;n l&agrave; một m&oacute;n đồ nội thất trang tr&iacute; đẹp, vật dụng phong thủy cho ng&ocirc;i nh&agrave;, tạo ra một kh&ocirc;ng gian h&agrave;i h&ograve;a v&agrave; dễ chịu, gi&uacute;p x&acirc;y dựng v&agrave; vun đắp t&igrave;nh cảm gia đ&igrave;nh. Với bộ sản phẩm&nbsp;<strong>giường ngủ hiện đại</strong>, ch&uacute;ng t&ocirc;i hi vọng đem tới những sự lựa chọn ưng &yacute; nhất cho qu&yacute; kh&aacute;ch khi đến với nội thất Dương Đ&ocirc;ng</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/394/517/products/giuong-boc-da-cao-cap-gd2004-1-600x530-copy.jpg?v=1607745350837\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết giường ngủ gỗ bọc nỉ cổ điển</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu : gỗ bọc nỉ</li>\r\n	<li>K&iacute;ch thước: 1m6&nbsp;x&nbsp;2m</li>\r\n	<li>M&agrave;u sắc: chọn theo y&ecirc;u cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>', 0, 0, 0, '2021-04-14 13:36:26', 8000, 7, NULL),
(20, 'Bộ bàn ăn 4 ghế Bull màu tự nhiên - BA 34', 'bo-ban-an-4-ghe-bull-mau-tu-nhien-ba-34', 5700000, 0, 12, 0, 0, '2021-04-14__ban-an-bull-6.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu :&nbsp;mặt b&agrave;n Gỗ cao su tự nhi&ecirc;n&nbsp;&nbsp; &nbsp; &nbsp;</li>\r\n	<li>Ghế: Bull gỗ tần b&igrave; bọc&nbsp;đệm</li>\r\n	<li>K&iacute;ch thước:d&agrave;i: d&agrave;i: 1m2&nbsp;&ndash; rộng: 70cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: m&agrave;u tự nhi&ecirc;n</li>\r\n	<li>Độ mới 100% chưa qua sử dụng</li>\r\n</ul>\r\n\r\n<form action=\"https://noithatduongdong.vn/cart/add\" enctype=\"multipart/form-data\" id=\"add-to-cart-form\" method=\"post\">&nbsp;</form>', '<h2><strong>Bộ b&agrave;n ăn 4 ghế Bull m&agrave;u tự nhi&ecirc;n - BA 34</strong></h2>\r\n\r\n<p>Ng&agrave;y nay, dưới &aacute;p lực cuốc sống, ai cũng muốn gia đ&igrave;nh m&igrave;nh c&oacute;&nbsp;một kh&ocirc;ng gian thật tiện nghi,&nbsp;hiện đại v&agrave; sang trọng. Bộ b&agrave;n ăn cao cấp Bull&nbsp;được nghi&ecirc;n cứu v&agrave; sinh ra để đ&aacute;p ứng đầy đủ những nhu cầu đ&oacute;.&nbsp;Set&nbsp;4 ghế với&nbsp;k&iacute;ch thước vừa đủ để kh&ocirc;ng chiếm qu&aacute; nhiều diện t&iacute;ch của ph&ograve;ng ăn, sẽ gi&uacute;p bạn&nbsp;c&oacute; một bữa cơm gia đ&igrave;nh đầm ấm. Thiết kế mang phong c&aacute;ch H&agrave;n quốc rất ph&ugrave; hợp với căn hộ chung cư, đặc biệt l&agrave; c&aacute;c gia đ&igrave;nh trẻ.&nbsp;</p>\r\n\r\n<h2><strong>&nbsp;Th&ocirc;ng Tin&nbsp;Bộ b&agrave;n ăn 4 ghế&nbsp;Bull m&agrave;u tự nhi&ecirc;n</strong></h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm: Bộ B&agrave;n ăn 4 ghế</li>\r\n	<li>Chất liệu: mặt b&agrave;n Gỗ cao su tự nhi&ecirc;n&nbsp;</li>\r\n	<li>M&agrave;u sắc: M&agrave;u tự nhi&ecirc;n hoặc m&agrave;u &oacute;c ch&oacute;</li>\r\n	<li>K&iacute;ch thước b&agrave;n: 1200mm x 700mm x 750mm</li>\r\n	<li>Ghế: Bull gỗ tần b&igrave;&nbsp;c&oacute; đệm</li>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng cả mối mọt</li>\r\n</ul>', 0, 0, 0, '2021-04-14 13:38:09', 8000, 7, NULL),
(21, 'Bộ bàn ăn 4 ghế mặt đá Kendy - BA 32', 'bo-ban-an-4-ghe-mat-da-kendy-ba-32', 9800000, 0, 12, 0, 0, '2021-04-14__bo-ban-an-4-ghe-henry-1.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu :&nbsp;Khung b&agrave;n: gỗ sồi,ch&acirc;n bọc kim loại&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>mặt b&agrave;n l&agrave;m bằng mặt đ&aacute; nh&acirc;n tạo&nbsp;</li>\r\n	<li>K&iacute;ch thước:d&agrave;i: d&agrave;i: 1m2&nbsp;&ndash; rộng: 70cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: tự chọn</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>', '<h2>Bộ B&agrave;n Ăn 4 Ghế Mặt Đ&aacute; Kendy</h2>\r\n\r\n<p>Bộ B&agrave;n Ăn 4 Ghế Mặt Đ&aacute; Kendy l&agrave; d&ograve;ng&nbsp;<strong>b&agrave;n ăn mặt đ&aacute;</strong>&nbsp;cao cấp. Được&nbsp; sản xuất với chất liệu cao cấp như: Khung b&agrave;n ghế l&agrave;m bằng gỗ sồi, mặt đ&aacute;&nbsp;nhập khẩu. Sản phẩm được ưa chuộng nhờ thiết kế tinh tế sang trọng.</p>', 0, 0, 0, '2021-04-14 13:38:57', 8000, 8, NULL),
(22, 'Bộ bàn ăn mặt đá 4 ghế Kenry cao cấp - BA 30', 'bo-ban-an-mat-da-4-ghe-kenry-cao-cap-ba-30', 11000000, 0, 12, 0, 0, '2021-04-14__8-d1b530db-cd6e-4bf5-a9ab-1c1e2fddb17b.jpg', 4, 0, 1, 4, '<ul>\r\n	<li>Chất liệu : Mặt đ&aacute; caremich&nbsp; , ch&acirc;n sắt kh&ocirc;ng rỉ</li>\r\n	<li>K&iacute;ch thước:d&agrave;i: d&agrave;i: 1m4&nbsp;&ndash; rộng: 80cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: mặt trắng hoặc đen, ch&acirc;n đen</li>\r\n	<li>Độ mới 100% chưa qua sử dụng</li>\r\n</ul>', '<h2>Bộ B&agrave;n Ăn Mặt Đ&aacute; 4 Ghế Kenry</h2>\r\n\r\n<p>Bộ B&agrave;n Ăn Mặt Đ&aacute; 4 Ghế Kenry đ&acirc;y l&agrave; mẫu&nbsp;<strong>b&agrave;n ăn mặt đ&aacute;</strong>&nbsp;sang trọng. Mang đậm n&eacute;t thiết kế của Bắc &Acirc;u. Sản phẩm được ưa chuộng nhờ thiết kế đẹp. Nguy&ecirc;n liệu thiết kế chất lượng với khung b&agrave;n v&agrave; ghế&nbsp;bằng th&eacute;p sơn tĩnh điện. Mặt b&agrave;n l&agrave; đ&aacute; Cremich&nbsp;đen&nbsp;</p>\r\n\r\n<h2><strong>&nbsp;Th&ocirc;ng Tin Bộ B&agrave;n Ăn Mặt Đ&aacute; 4 Ghế Kenry</strong></h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm:&nbsp;<strong>Bộ b&agrave;n ăn 4&nbsp;ghế</strong></li>\r\n	<li>Chất liệu b&agrave;n: Mặt đ&aacute; Caremich</li>\r\n	<li>Khung b&agrave;n: th&eacute;p mạ PVD<br />\r\n	Ghế: Monet, bọc nỉ, da</li>\r\n	<li>M&agrave;u sắc: Mặt b&agrave;n gồm, trắng, đen, v&acirc;n m&acirc;y&hellip;</li>\r\n	<li>M&agrave;u sắc ghế đa dạng theo y&ecirc;u cầu</li>\r\n	<li>K&iacute;ch thước: Bộ 6 ghế :&nbsp;13.500,000 đồng .(&nbsp;d&agrave;i 160 &ndash; rộng 80 &ndash; cao 75 )cm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bộ 4 ghế : 11.000.000 đồng .(d&agrave;i 140 &ndash; rộng 80 &ndash; cao 75)cm</li>\r\n</ul>\r\n\r\n<h2><strong>H&igrave;nh Ảnh Bộ B&agrave;n Ăn Mặt Đ&aacute; 4 Ghế Kenry</strong></h2>\r\n\r\n<p>&ndash; Mặt đ&aacute; sang trọng với hoa văn sinh động kết hợp kiểu ch&acirc;n c&ocirc;n bọc đồng tạo điểm nhấn cho bộ b&agrave;n ăn phong c&aacute;ch hiện đại v&agrave; ph&aacute; c&aacute;ch.</p>', 1, 3, 3, '2021-04-14 13:40:03', 80000, 7, '2021-04-27 06:22:08'),
(23, 'Bộ Bàn Ăn 6 ghế Monet - BA 28', 'bo-ban-an-6-ghe-monet-ba-28', 11700000, 0, 12, 0, 0, '2021-04-14__2-1.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu :&nbsp;mặt b&agrave;n l&agrave;m bằng mặt đ&aacute; nh&acirc;n tạo&nbsp;, ch&acirc;n sắt kh&ocirc;ng rỉ</li>\r\n	<li>K&iacute;ch thước:d&agrave;i: d&agrave;i: 1m6&nbsp;&ndash; rộng: 80cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: tự chọn</li>\r\n	<li>Độ mới 100% chưa qua sử dụng</li>\r\n</ul>', '<p>Bộ B&agrave;n Ăn 6 ghế Monet - BA 28 bọc da simli cao cấp mang đến cho bạn cảm gi&aacute;c ngồi &ecirc;m &aacute;i kết hợp những hoa văn m&agrave;u sắc tạo cho kh&ocirc;ng gian trở n&ecirc;n sang trọng v&agrave; h&agrave;i h&ograve;a hơn. Bộ B&agrave;n Ăn 6 ghế Monet c&oacute; bề mặt đ&aacute; cao cấp. Ch&acirc;n sắt kh&ocirc;ng rỉ sơn tĩnh điện.</p>\r\n\r\n<h2><strong>&nbsp;Th&ocirc;ng Tin Bộ B&agrave;n Ăn 6 ghế Monet</strong></h2>\r\n\r\n<p><strong>&ndash; M&agrave;u sắc:&nbsp;</strong>M&agrave;u c&oacute; sẵn hoặc theo &yacute; kh&aacute;ch mong muốn.</p>\r\n\r\n<p><strong>&ndash; K&iacute;ch thước:</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ 6 ghế :&nbsp;11,700,000 đồng .(&nbsp;d&agrave;i 160 &ndash; rộng 80 &ndash; cao 75 )cm</li>\r\n	<li>Bộ 4 ghế :&nbsp;9,300,000&nbsp; đồng .(d&agrave;i 120 &ndash; rộng 70 &ndash; cao 75)cm</li>\r\n</ul>\r\n\r\n<p>&ndash;&nbsp;<strong>Chất liệu:&nbsp;</strong>Ch&acirc;n b&agrave;n v&agrave; ch&acirc;n ghế l&agrave;m bằng sắt kh&ocirc;ng rỉ , mặt b&agrave;n l&agrave;m bằng mặt đ&aacute; nh&acirc;n tạo sang trọng&nbsp;</p>\r\n\r\n<h2><strong>H&igrave;nh Ảnh</strong>&nbsp;<strong>Bộ B&agrave;n Ăn 6 ghế Monet</strong></h2>\r\n\r\n<p>&ndash; Mặt đ&aacute; sang trọng với hoa văn sinh động kết hợp kiểu ch&acirc;n c&ocirc;n bọc đồng tạo điểm nhấn cho bộ b&agrave;n ăn phong c&aacute;ch hiện đại v&agrave; ph&aacute; c&aacute;ch</p>', 0, 0, 0, '2021-04-14 13:44:06', 80000, 8, NULL),
(24, 'Bàn ăn bingo 6 ghế nâu - BA 26', 'ban-an-bingo-6-ghe-nau-ba-26', 5600000, 0, 12, 0, 0, '2021-04-14__bingo-6-ghe-copy.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu :&nbsp;mặt gỗ mdf phủ veneer&nbsp;, ch&acirc;n gỗ tự nhi&ecirc;n</li>\r\n	<li>K&iacute;ch thước:d&agrave;i: d&agrave;i: 1m6&nbsp;&ndash; rộng: 80cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: n&acirc;u</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<form action=\"https://noithatduongdong.vn/cart/add\" enctype=\"multipart/form-data\" id=\"add-to-cart-form\" method=\"post\">&nbsp;</form>', '<h2>B&agrave;n ăn bingo 6&nbsp;ghế n&acirc;u tại H&agrave; Nội</h2>\r\n\r\n<p>Sở hữu những mẫu&nbsp;<strong>B&agrave;n ăn bingo 6&nbsp;ghế n&acirc;u&nbsp;</strong>với nhiều mẫu m&atilde; v&agrave; k&iacute;ch thước kh&aacute;c nhau gi&uacute;p kh&ocirc;ng gian bếp nh&agrave; bạn th&ecirc;m phần sang trọng v&agrave; ấm c&uacute;ng. Bộ b&agrave;n ăn sở hữu d&aacute;ng hiện đại tạo kh&ocirc;ng gian sang trọng.</p>\r\n\r\n<p>B&agrave;n ăn với chất liệu mặt gỗ mdf phủ veneer&nbsp;, ch&acirc;n gỗ tự nhi&ecirc;n&nbsp;với một lớp đệm ngồi &ecirc;m &aacute;i. Bạn sẽ cảm thấy thoải m&aacute;i khi ngồi tr&ecirc;n những mẫu ghế n&agrave;y. Đa dạng k&iacute;ch thước v&agrave; mẫu m&atilde; sẽ gi&uacute;p cho ng&ocirc;i nh&agrave; của bạn đẹp hơn.</p>\r\n\r\n<p>Đến với nội thất Dương Đ&ocirc;ng bạn sẽ chọn cho m&igrave;nh kh&ocirc;ng chỉ những mẫu b&agrave;n ăn đẹp m&agrave; c&ograve;n c&aacute;c mẫu nội thất gia đ&igrave;nh như:<strong>&nbsp;giường gỗ , tủ quần &aacute;o , tủ giầy,&hellip;</strong>&nbsp;đa dạng mẫu m&atilde;. Với gi&aacute; cả phải chăng v&agrave; ph&ugrave; hợp chắc chắn bạn sẽ chọn cho m&igrave;nh được mẫu b&agrave;n ăn đẹp.</p>\r\n\r\n<h2><strong>Đặc đi&ecirc;̉m&nbsp;B&agrave;n ăn bingo 6&nbsp;ghế n&acirc;u</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu&nbsp;<strong>:</strong>mặt gỗ mdf phủ veneer, ch&acirc;n gỗ tự nhi&ecirc;n</li>\r\n	<li>K&iacute;ch thước: d&agrave;i: 1m6&nbsp;&ndash; rộng: 80cm - cao 75cm</li>\r\n	<li>M&agrave;u sắc: n&acirc;u</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>', 0, 0, 0, '2021-04-14 13:46:03', 0, 7, NULL),
(25, 'Bàn chân sắt chữ X gỗ cao su- LV 16', 'ban-chan-sat-chu-x-go-cao-su-lv-16', 630000, 0, 13, 0, 0, '2021-04-14__ban-lam-viec-xconcept-2-copy.jpg', 3, 0, 1, 0, '<h2><strong>Đặc điểm của&nbsp;B&agrave;n ch&acirc;n sắt chữ X gỗ cao su</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu :khung sắt, mặt gỗ cao su</li>\r\n	<li>K&iacute;ch thước :D&agrave;i&nbsp;1200 &ndash; Rộng 600- Cao 750(mm)</li>\r\n	<li>M&agrave;u sắc:&nbsp; lựa chọn theo y&ecirc;u&nbsp;cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>Nhận đặt h&agrave;ng theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</li>\r\n</ul>\r\n\r\n<form action=\"https://noithatduongdong.vn/cart/add\" enctype=\"multipart/form-data\" id=\"add-to-cart-form\" method=\"post\">&nbsp;</form>', '<h2><strong>B&agrave;n ch&acirc;n sắt chữ X gỗ cao su gi&aacute; rẻ tại H&agrave; Nội</strong></h2>\r\n\r\n<p>B&agrave;n ch&acirc;n sắt chữ X gỗ cao su được l&agrave;m bằng chất liệu gỗ cao su. Tr&ecirc;n mặt b&agrave;n được phủ một lớp sơn pu&nbsp;chống trầy xước tốt, ẩm mốc, b&oacute;ng đẹp theo thời gian.</p>\r\n\r\n<p>Với độ d&agrave;y 18mm . B&agrave;n c&oacute; thiết kế dạng thẳng mặt b&agrave;n vu&ocirc;ng vức. B&agrave;n c&oacute; 4 ch&acirc;n được l&agrave;m bằng khung sắt khi k&ecirc; b&agrave;n ở bất kỳ mặt bằng n&agrave;o.</p>\r\n\r\n<h2><strong>Đặc đi&ecirc;̉m B&agrave;n ch&acirc;n sắt chữ X gỗ cao su</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu : ch&acirc;n sắt phun sơn tĩnh điện , mặt b&agrave;n gỗ cao su</li>\r\n	<li>K&iacute;ch thước:&nbsp;D&agrave;i&nbsp;1200 &ndash; Rộng 600- Cao 750(mm)</li>\r\n	<li>M&agrave;u sắc: lựa chọn theo y&ecirc;u&nbsp;cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<h2>Hình ảnh&nbsp;<strong>B&agrave;n ch&acirc;n sắt chữ X gỗ cao su</strong></h2>', 0, 0, 0, '2021-04-14 13:47:30', 800, 7, NULL),
(26, 'Bàn chân sắt chữ U - LV 14', 'ban-chan-sat-chu-u-lv-14', 550000, 0, 13, 0, 0, '2021-04-14__3-lam-viec-don-gan-qio5-1j-copy.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu :MFC phủ melamin</li>\r\n	<li>K&iacute;ch thước : D&agrave;i&nbsp;1200 &ndash; Rộng 600- Cao 750(mm)</li>\r\n	<li>M&agrave;u sắc:&nbsp; lựa chọn theo y&ecirc;u&nbsp;cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>Nhận đặt h&agrave;ng theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</li>\r\n</ul>\r\n\r\n<form action=\"https://noithatduongdong.vn/cart/add\" enctype=\"multipart/form-data\" id=\"add-to-cart-form\" method=\"post\">&nbsp;</form>', '<h2><strong>B&agrave;n ch&acirc;n sắt chữ U gi&aacute; rẻ tại H&agrave; Nội</strong></h2>\r\n\r\n<p>&nbsp;B&agrave;n ch&acirc;n sắt chữ U gi&aacute; rẻ được l&agrave;m bằng chất liệu gỗ c&ocirc;ng nghiệp MFC. Tr&ecirc;n mặt b&agrave;n được phủ một lớp Melamine&nbsp;chống trầy xước tốt, ẩm mốc, b&oacute;ng đẹp theo thời gian.</p>\r\n\r\n<p>Với độ d&agrave;y 18mm hoặc c&oacute; thể l&agrave; 25mm theo y&ecirc;u cầu ri&ecirc;ng của kh&aacute;ch. B&agrave;n c&oacute; thiết kế dạng thẳng mặt b&agrave;n vu&ocirc;ng vức. B&agrave;n c&oacute; 4 ch&acirc;n được l&agrave;m bằng khung sắt khi k&ecirc; b&agrave;n ở bất kỳ mặt bằng n&agrave;o.</p>\r\n\r\n<h2><strong>Đặc đi&ecirc;̉m b&agrave;n ch&acirc;n sắt chữ U</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu : ch&acirc;n sắt phun sơn tĩnh điện , mặt b&agrave;n MFC</li>\r\n	<li>K&iacute;ch thước:&nbsp;D&agrave;i&nbsp;1200 &ndash; Rộng 600- Cao 750(mm)</li>\r\n	<li>M&agrave;u sắc: lựa chọn theo y&ecirc;u&nbsp;cầu</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<h2>&nbsp;</h2>', 0, 0, 0, '2021-04-14 13:48:16', 80000, 7, NULL),
(27, 'Bàn chân sắt 5 tầng - LV 12', 'ban-chan-sat-5-tang-lv-12', 85000, 0, 13, 0, 0, '2021-04-14__ban-lam-viec-lien-gia-sach-03-copy.jpg', 2, 0, 1, 0, '<h2><strong>Đặc điểm của&nbsp;B&agrave;n ch&acirc;n sắt 5&nbsp;tầng</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu :MFC phủ melamin</li>\r\n	<li>K&iacute;ch thước : d&agrave;i 1m2 x cao 1m4&nbsp;x s&acirc;u 60cm</li>\r\n	<li>M&agrave;u sắc: đen , trắng</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>Nhận đặt h&agrave;ng theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</li>\r\n</ul>', '<h2><strong>B&agrave;n ch&acirc;n sắt 5&nbsp;tầng</strong></h2>\r\n\r\n<p>B&agrave;n ch&acirc;n sắt 5&nbsp;tầng l&agrave; d&ograve;ng sản phẩm d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian l&agrave;m việc tại nh&agrave; với những thiết kế trẻ trung, hiện đại pha trộn giữa sự mềm mại, nhiều m&agrave;u sắc của gia đ&igrave;nh v&agrave; ch&uacute;t cứng c&aacute;p trong kh&ocirc;ng gian văn ph&ograve;ng&nbsp;v&agrave; l&agrave;m bằng gỗ c&ocirc;ng nghiệp MFC. Mặt b&agrave;n phủ Melamine gi&uacute;p chống trầy xước v&agrave; ẩm mốc, b&oacute;ng đẹp theo thời gian. Mặt b&agrave;n d&agrave;y 18mm ( Hoặc 25mm nếu theo y&ecirc;u cầu).</p>\r\n\r\n<h2><strong>Đặc đi&ecirc;̉m&nbsp;B&agrave;n ch&acirc;n sắt 5&nbsp;tầng</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu&nbsp;<strong>:</strong>&nbsp;MFC phủ melamin</li>\r\n	<li>K&iacute;ch thước : d&agrave;i 1m2 x cao 1m4&nbsp;x s&acirc;u 60cm</li>\r\n	<li>M&agrave;u sắc: đen , trắng</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>', 0, 0, 0, '2021-04-14 13:49:03', 8000, 8, NULL),
(28, 'Bàn làm việc hộc 2 bên - LV 10', 'ban-lam-viec-hoc-2-ben-lv-10', 1300000, 0, 13, 0, 0, '2021-04-14__ban-lam-viec-toi-gian-4-copy.jpg', 2, 1, 1, 0, '<h2><strong>Đặc điểm của&nbsp;Gi&aacute; s&aacute;ch liền B&agrave;n học</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu :MFC phủ melamin</li>\r\n	<li>K&iacute;ch thước ; d&agrave;i 1m4 x s&acirc;u 60cm x cao 75cm</li>\r\n	<li>M&agrave;u sắc: chọn mầu&nbsp;theo y&ecirc;u cầu&nbsp;</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n	<li>Nhận đặt h&agrave;ng theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</li>\r\n</ul>', '<h2><strong>B&agrave;n l&agrave;m việc hộc 2 b&ecirc;n</strong></h2>\r\n\r\n<p>B&agrave;n l&agrave;m việc hộc 2 b&ecirc;n l&agrave; d&ograve;ng sản phẩm d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian l&agrave;m việc tại nh&agrave; với những thiết kế trẻ trung, hiện đại pha trộn giữa sự mềm mại, nhiều m&agrave;u sắc của gia đ&igrave;nh v&agrave; ch&uacute;t cứng c&aacute;p trong kh&ocirc;ng gian văn ph&ograve;ng&nbsp;v&agrave; l&agrave;m bằng gỗ c&ocirc;ng nghiệp MFC. Mặt b&agrave;n phủ Melamine gi&uacute;p chống trầy xước v&agrave; ẩm mốc, b&oacute;ng đẹp theo thời gian. Mặt b&agrave;n d&agrave;y 18mm ( Hoặc 25mm nếu theo y&ecirc;u cầu).</p>\r\n\r\n<h2><strong>Đặc đi&ecirc;̉m&nbsp;B&agrave;n l&agrave;m việc hộc 2 b&ecirc;n&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu&nbsp;<strong>:</strong>&nbsp;MFC phủ melamin</li>\r\n	<li>K&iacute;ch thước ; d&agrave;i 1m4 x s&acirc;u 60cm x cao 75cm</li>\r\n	<li>M&agrave;u sắc:chọn mầu&nbsp;theo y&ecirc;u cầu&nbsp;</li>\r\n	<li>Độ mới 100% chưa qua sử dụng.</li>\r\n</ul>\r\n\r\n<p><strong>Hình ảnh B&agrave;n l&agrave;m việc hộc 2 b&ecirc;n</strong></p>', 0, 0, 0, '2021-04-14 15:55:12', 0, 7, '2021-04-14 15:55:20'),
(29, 'Giới thiệu về giường ngủ gỗ bọc nỉ cổ điển đẹp- GN 39', 'gioi-thieu-ve-giuong-ngu-go-boc-ni-co-dien-dep-gn-39', 20350000, 0, 11, 0, 0, '2021-04-27__t3.png', 1, 1, 1, 0, NULL, '<p><strong>Thương hiệu:</strong>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;T&igrave;nh trạng:</strong>&nbsp;C&ograve;n h&agrave;ng</p>\r\n\r\n<p>7.200.000₫</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>\r\n	<li>Chất liệu: Gỗ c&ocirc;ng nghiệp bọc nỉ</li>\r\n	<li>K&iacute;ch thước: Rộng:160cm x D&agrave;i:200cm x Cao:30cm</li>\r\n	<li>Ch&uacute; &Yacute;: Nội thất Dương Đ&ocirc;ng nhận đặt h&agrave;ng theo y&ecirc;u cầu</li>\r\n</ul>', 0, 0, 0, '2021-04-27 07:47:05', 1, 8, '2021-04-27 07:47:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(48, 12, 8),
(49, 12, 9),
(50, 13, 9),
(51, 14, 9),
(52, 15, 9),
(53, 16, 8),
(54, 16, 9),
(55, 17, 9),
(56, 18, 8),
(57, 19, 9),
(58, 21, 9),
(59, 22, 8),
(60, 23, 8),
(61, 24, 8),
(62, 24, 9),
(63, 26, 8),
(64, 27, 9),
(65, 28, 8),
(66, 28, 9),
(69, 30, 8),
(70, 30, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(3, 3, 12, 5, 0, 'Sản phẩm quá tốt', '2021-04-14 15:30:38', '2021-04-14 15:30:38'),
(4, 4, 14, 4, 0, 'tốt', '2021-04-16 03:11:58', '2021-04-16 03:11:58'),
(5, 6, 22, 3, 0, NULL, '2021-04-27 06:22:08', '2021-04-27 06:22:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(4, 'slide 1', '/', '2021-04-14__slider-1.png', 1, 1, 1, '2021-04-13 17:28:42', NULL),
(5, 'slide 2', '/', '2021-04-14__slider-2.png', 1, 1, 1, '2021-04-13 17:29:01', NULL),
(6, 'slide 3', '/', '2021-04-14__slider-3.png', 1, 1, 2, '2021-04-13 17:29:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-06-19 08:41:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tst_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`, `tst_code`) VALUES
(4, 3, 35300000, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0359020898', 'Hà Nội', NULL, 1, 1, '2021-04-14 15:32:23', NULL, 'puNpnnNhzJIYiFS'),
(5, 3, 35300000, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0359020898', 'Hà Nội', NULL, 1, 1, '2021-04-14 15:33:24', NULL, 'GJJRTonMlo3hT9A'),
(6, 3, 5200000, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0359020898', 'Hà Nội', NULL, 1, 1, '2021-04-14 15:34:13', NULL, 'glmBgJwswOwdqwg'),
(8, 4, 8300000, 'Tiến Thành', 'thanh@gmail.com', '987654321', 'Hạ Long', 'ship nhanh nhé', 1, 1, '2021-04-16 03:14:59', NULL, 'P64MkAWEt9y1zA5'),
(9, 6, 19500000, 'Nguyễn Thu Hà', 'thuha@gmail.com', '0912201124', 'HaNoi', 'Done!', 3, 1, '2021-04-27 06:37:41', '2021-04-27 11:07:20', 'TesGFlSfDHsWJuR'),
(12, 6, 13650000, 'Nguyễn Thu Hà', 'thuha@gmail.com', '0912201124', 'HaNoi', 'Done!', 2, 1, '2021-04-27 07:03:47', '2021-04-27 08:25:12', 'UttZhOC1bdZmmdg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$TUYvS7G1h5zFAGXIEOznG.ceqFsbEUVgTteENFGW.bv7/Byt93QvS', '0359020898', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-14T15:30:08.955931Z\"}]', 0, NULL, NULL, NULL, '2021-04-14 15:29:39', NULL),
(4, 'Tiến Thành', 'thanh@gmail.com', NULL, '$2y$10$zCpjNRuBjgo7D8y6/SkyJ.0FS9vAIPTTZsBOlsVZ/aKLlmrdcePy2', '987654321', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.128\",\"time\":\"2021-04-16T03:10:33.550189Z\"}]', 2, NULL, NULL, NULL, '2021-04-16 03:09:39', NULL),
(5, 'Thanh ngô', 'thanhngo@gmail.com', NULL, '$2y$10$exozMiPvtxuzh1ujjdnbiu4XqjnfutUnOkRt9LFkc1..ds2CNTuWi', '0989123741', NULL, 0, NULL, NULL, NULL, '2021-04-24 01:58:22', NULL),
(6, 'Nguyễn Thu Hà', 'thuha@gmail.com', NULL, '$2y$10$bzOVGV1nZN0lWZxFGIjITePib9wETekDKE0GsBE312t8q2YSi4d3a', '0912201124', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.85\",\"time\":\"2021-04-27T05:54:26.258086Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.85\",\"time\":\"2021-04-27T10:56:00.722359Z\"}]', 1, NULL, NULL, NULL, '2021-04-27 05:33:50', NULL),
(7, 'Nguyễn Thu Hà', 'thuha2@gmail.com', NULL, '$2y$10$PxprR0pyvOrdXxx3cJhaY.14kv58UhYOd12R93OKHmq4Tnz6jIuba', '0312647321', NULL, 0, NULL, NULL, NULL, '2021-04-27 10:30:44', NULL),
(8, 'Hoang Nam', '', NULL, '$2y$10$QUjXv.ClzhVNn/f/.SIx9uWhvba7/4tuN6u7JTRHKUzwmD/7Qf4VG', '0136494216', NULL, 0, NULL, '2021-04-27__3.jpg', NULL, '2021-04-27 10:31:56', '2021-04-27 10:55:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
