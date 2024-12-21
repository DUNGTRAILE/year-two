-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 21, 2024 lúc 08:38 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laraverlpro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `featured_images`
--

CREATE TABLE `featured_images` (
  `id` bigint UNSIGNED NOT NULL,
  `file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `featured_images`
--

INSERT INTO `featured_images` (`id`, `file`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'tin tức bóng đá', 1, NULL, NULL),
(2, 'tin tức bóng chuyền', 6, NULL, NULL),
(3, 'tin tức thế giới', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2024_12_15_063353_create_posts_table', 1),
(27, '2024_12_15_064814_creat_comment_table', 1),
(28, '2024_12_15_065044_creat_product_table', 1),
(29, '2024_12_15_065157_creat_layout_table', 1),
(31, '2024_12_15_072134_add_grend_to_users_table', 2),
(35, '2024_12_15_105341_create_posts_table', 3),
(36, '2024_12_15_111025_add_description_to_posts_table', 3),
(37, '2024_12_15_115257_create_posts_table', 4),
(38, '2024_12_15_120702_create_products_table', 5),
(39, '2024_12_15_161636_create_orders_table', 6),
(44, '2024_12_16_115316_add_sofrdelete_to_posts_table', 7),
(45, '2024_12_17_034939_create_featured_images_table', 7),
(46, '2024_12_17_050908_create_roles_table', 8),
(47, '2024_12_17_051138_create_roles_user_table', 9),
(49, '2024_12_17_142921_create_tmp_table', 10),
(50, '2024_12_17_145137_create_role_user_table', 11),
(51, '2024_12_18_103601_add_thumbnail_to_posts_table', 12),
(52, '2024_12_19_142423_add_content_to_posts_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `votes` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `created_at`, `updated_at`, `user_id`, `votes`, `deleted_at`, `thumbnail`, `content`) VALUES
(1, 'iphone 56', NULL, '2024-12-16 03:27:01', 3, 900, NULL, '', ''),
(6, 'samSung', '2024-12-16 03:36:08', '2024-12-16 20:33:16', 1, 30, NULL, '', ''),
(26, 'dũng', '2024-12-19 10:17:39', '2024-12-19 10:17:39', 2, 600, NULL, NULL, '<h1><strong>b&agrave;i viết 1</strong></h1>\r\n<h2 class=\"mt-5 art-sapo\">L&agrave;m việc với Cơ quan điều tra, đối tượng Cao Văn H&ugrave;ng đ&atilde; khai nhận h&agrave;nh vi đốt qu&aacute;n. H&ugrave;ng cho rằng, bản th&acirc;n kh&ocirc;ng nghĩ qu&aacute;n c&oacute; nhiều người v&agrave;o thời điểm đ&oacute;.</h2>\r\n<div class=\"art-content\">\r\n<div style=\"display: flex; justify-content: center; gap: 30px; margin-top: 20px; margin-bottom: 20px;\">&nbsp;</div>\r\n<p>Vụ <a href=\"https://www.saostar.vn/sac-mau-cuoc-song/chan-dung-ke-phong-hoa-tai-quan-ca-phe-o-ha-noi-khien-11-nguoi-tu-vong-202412191514564273.html\">ch&aacute;y qu&aacute;n h&aacute;t cho nhau nghe</a> tại số 258 Phạm Văn Đồng, phường Cổ Nhuế 2, quận Bắc Từ Li&ecirc;m (H&agrave; Nội) khiến 11 người tử vong khiến dư luận b&agrave;ng ho&agrave;ng.&nbsp;</p>\r\n<div id=\"ad-single-bottom-2\" class=\"mt-4 text-center\"></div>\r\n<p>Hiện, Cơ quan CSĐT C&ocirc;ng an TP đ&atilde; ra Quyết định khởi tố vụ &aacute;n, khởi tố bị can đối với Cao Văn H&ugrave;ng (SN 1973; HKTT Cổ Nhuế 2, Bắc Từ Li&ecirc;m, H&agrave; Nội; hiện tr&uacute; tại: Đại Mạch, Đ&ocirc;ng Anh, H&agrave; Nội), để điều tra về h&agrave;nh vi Giết người.</p>\r\n<p>Cao Văn H&ugrave;ng l&agrave; đối tượng ph&oacute;ng hoả, g&acirc;y ra vụ ch&aacute;y nghi&ecirc;m trọng n&oacute;i tr&ecirc;n. Trước khi g&acirc;y ra vụ việc n&agrave;y, Cao Văn H&ugrave;ng đ&atilde; c&oacute; 2 tiền &aacute;n về tội &ldquo;cướp t&agrave;i sản&rdquo; v&agrave; &ldquo;trộm cắp t&agrave;i sản&rdquo;.&nbsp;</p>\r\n<figure class=\"media\">\r\n<div data-oembed-url=\"https://ss-images.saostar.vn/2024/12/19/video/1734609982287/0q3l9cypww1-lboip08gun2-0ofrpc3j9j3.mp4?duration=72080\">\r\n<div class=\"lazy-player\" style=\"position: relative; padding-bottom: 56.2493%; height: 0;\">\r\n<div id=\"vagcex9qj7\" class=\"react-player-container poster-contain entered\" style=\"width: 100%; height: auto;\" data-ll-status=\"entered\"><video style=\"width: 100%; height: auto;\" src=\"blob:https://www.saostar.vn/71cea6fa-f5ea-4a91-b000-1f03c1197723\" preload=\"auto\" autoplay=\"autoplay\" controls=\"controls\" data-mce-fragment=\"1\"></video></div>\r\n</div>\r\n</div>\r\n</figure>\r\n</div>\r\n<figure class=\"media\">\r\n<div data-oembed-url=\"https://ss-images.saostar.vn/2024/12/19/video/1734609982287/0q3l9cypww1-lboip08gun2-0ofrpc3j9j3.mp4?duration=72080\">\r\n<div class=\"lazy-player\" style=\"position: relative; padding-bottom: 56.2493%; height: 0;\">\r\n<div id=\"vagcex9qj7\" class=\"react-player-container poster-contain entered\" style=\"width: 100%; height: auto;\" data-ll-status=\"entered\"></div>\r\n</div>\r\n</div>\r\n</figure>\r\n<p><em>(Video: Lời khai với t&igrave;nh tiết bất ngờ của Cao Văn H&ugrave;ng. Nguồn: Truyền h&igrave;nh H&agrave; Nội)</em></p>\r\n<p>Theo Truyền h&igrave;nh H&agrave; Nội, tại Cơ quan c&ocirc;ng an, Cao Văn H&ugrave;ng khai, v&agrave;o tối 18/12, Cao Văn H&ugrave;ng đến số 258 Phạm Văn Đồng, phường Cổ Nhuế 2, quận Bắc Từ Li&ecirc;m, H&agrave; Nội, để uống bia. Tuy nhi&ecirc;n, khi thanh to&aacute;n th&igrave; H&ugrave;ng ph&aacute;t hiện qu&ecirc;n v&iacute; tiền. Nh&acirc;n vi&ecirc;n qu&aacute;n sau đ&oacute; cho rằng H&ugrave;ng c&oacute; &yacute; định \"b&ugrave;ng\" n&ecirc;n đ&atilde; \"t&aacute;c động vật l&yacute;\" v&agrave;o mặt v&agrave; người H&ugrave;ng.</p>\r\n<p>Bực tức v&igrave; bị đ&aacute;nh, H&ugrave;ng bỏ đi mua một x&ocirc; xăng trị gi&aacute; khoảng 150.000 đồng, rồi quay lại hất xăng l&ecirc;n cửa v&agrave; ch&acirc;m lửa đốt nhằm mục đ&iacute;ch trả th&ugrave;. Ngọn lửa nhanh ch&oacute;ng b&ugrave;ng l&ecirc;n bao tr&ugrave;m to&agrave;n bộ tầng 1 của qu&aacute;n c&agrave; ph&ecirc;.</p>\r\n<div id=\"pc-inarticle\" class=\"mt-4 text-center\"></div>\r\n<p>Tại cơ quan c&ocirc;ng an, H&ugrave;ng khai nhận h&agrave;nh vi đốt qu&aacute;n l&agrave; do qu&aacute; bực tức v&agrave; kh&ocirc;ng nghĩ qu&aacute;n c&agrave; ph&ecirc; c&oacute; nhiều người v&agrave;o thời điểm đ&oacute;. Bản th&acirc;n H&ugrave;ng cũng đ&atilde; bị bỏng v&igrave; h&agrave;nh vi của m&igrave;nh.</p>\r\n<figure class=\"image\"><picture class=\"\" style=\"padding-bottom: 62.75%; height: 0px;\"> <img src=\"https://ss-images.saostar.vn/2024/12/19/pc/1734609982287/5t4702nhvw1-icms0x8vl72-yl23hlcfl53.gif\" alt=\"Video: Lời khai với t&igrave;nh tiết bất ngờ của kẻ đốt qu&aacute;n h&aacute;t khiến 11 người tử vong Ảnh 1\" width=\"1200\" height=\"753\" /> </picture>\r\n<figcaption>Camera ghi lại h&igrave;nh ảnh Cao Văn H&ugrave;ng x&aacute;ch x&ocirc; xăng&nbsp;</figcaption>\r\n</figure>\r\n<p>Như tin đ&atilde; đưa, v&agrave;o l&uacute;c 23h03 ng&agrave;y 18/12, CATP H&agrave; Nội tiếp nhận tin b&aacute;o ch&aacute;y qu&aacute;n c&agrave; ph&ecirc; tại số 258 Phạm Văn Đồng, phường Cổ Nhuế 2, quận Bắc Từ Li&ecirc;m.&nbsp;</p>\r\n<p>Ngay lập tức, C&ocirc;ng an Th&agrave;nh phố đ&atilde; điều động lực lượng Cảnh s&aacute;t PCCC C&ocirc;ng an Th&agrave;nh phố v&agrave; C&ocirc;ng an c&aacute;c quận Bắc Từ Li&ecirc;m, Nam Từ Li&ecirc;m, Cầu Giấy, Thanh Xu&acirc;n, T&acirc;y Hồ đến hiện trường phối hợp ch&iacute;nh quyền, người d&acirc;n địa phương tổ chức chữa ch&aacute;y, cứu nạn, cứu hộ.</p>\r\n<div id=\"pc-inarticle-2\" class=\"mt-4 text-center\"></div>\r\n<figure class=\"image\"><picture class=\"max-450\"> <source srcset=\"https://ss-images.saostar.vn/wwebp1200/2024/12/19/pc/1734609982287/zusznt5bvq1-alakdvt4fz2-xp05goktyh3.jpeg\" type=\"image/webp\" /> <img src=\"https://ss-images.saostar.vn/wp1200/2024/12/19/pc/1734609982287/zusznt5bvq1-alakdvt4fz2-xp05goktyh3.jpeg\" alt=\"Video: Lời khai với t&igrave;nh tiết bất ngờ của kẻ đốt qu&aacute;n h&aacute;t khiến 11 người tử vong Ảnh 2\" width=\"1536\" height=\"2048\" data-photo-gallery=\"https://ss-images.saostar.vn/2024/12/19/pc/1734609982287/zusznt5bvq1-alakdvt4fz2-xp05goktyh3.jpeg\" /> </picture>\r\n<figcaption>Hiện trường vụ ch&aacute;y</figcaption>\r\n</figure>\r\n<p>Khoảng 23h40 c&ugrave;ng ng&agrave;y, đ&aacute;m ch&aacute;y được khống chế, lực lượng chức năng đ&atilde; hướng dẫn, hỗ trợ đưa 5 người tho&aacute;t ra ngo&agrave;i (c&oacute; 4 người bị thương đang được cấp cứu tại Bệnh viện) v&agrave; ph&aacute;t hiện 11 người tử vong.</p>\r\n<p>Ngay sau đ&oacute;, Gi&aacute;m đốc C&ocirc;ng an TP đ&atilde; chỉ đạo c&aacute;c đơn vị nghiệp vụ khẩn trương điều tra, l&agrave;m r&otilde; nguy&ecirc;n nh&acirc;n vụ ch&aacute;y.</p>\r\n<p>Đến khoảng 0h ng&agrave;y 19/12, C&ocirc;ng an Th&agrave;nh phố đ&atilde; bắt giữ được đối tượng đốt qu&aacute;n c&agrave; ph&ecirc; l&agrave; Cao Văn H&ugrave;ng.</p>'),
(27, 'hehe', '2024-12-19 10:21:46', '2024-12-19 10:21:46', 2, 600, NULL, NULL, '<p><strong>5 \"đại gia\" Saudi Arabia quyết giải cứu Rashford</strong></p>\r\n<p>Tương lai của Marcus Rashford ở <a class=\"TextlinkBaiviet\" title=\"MU\" href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">MU</a> ng&agrave;y c&agrave;ng trở n&ecirc;n mịt mờ sau khi tiền đạo 27 tuổi bị loại khỏi danh s&aacute;ch đăng k&iacute; thi đấu ở trận thắng Man City 2-1 cuối tuần qua. Nhiều nguồn tin cho rằng anh sẽ tiếp tục vắng mặt trong cuộc chạm tr&aacute;n Tottenham thuộc khu&ocirc;n khổ tứ kết League Cup.</p>\r\n<p>Theo The Telegraph, h&agrave;ng loạt&nbsp;c&acirc;u lạc bộ Saudi Arabia đang b&agrave;y tỏ sự quan t&acirc;m đến Rashford. Trong đ&oacute;, 4 \"&ocirc;ng lớn\"&nbsp;được hậu thuẫn bởi Quỹ Đầu tư C&ocirc;ng (PIF) gồm Al Ittihad, Al Hilal, Al Nassr v&agrave; Al Ahli đều muốn giải cứu ch&acirc;n s&uacute;t người Anh khỏi MU nhờ&nbsp;tiềm lực t&agrave;i ch&iacute;nh mạnh mẽ.</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<div id=\"container-24h-banner-in-image\" style=\"text-align: center; width: 100%; clear: both; position: relative;\">\r\n<div style=\"position: relative; max-width: 740px; margin: 0 auto;\">\r\n<div><span style=\"aspect-ratio: 740 / 387; display: block;\"><img class=\"news-image initial loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-19/9586a-17345096176072-1920--1--1734613510-347-width740height387.jpg\" alt=\"C&aacute;c đội b&oacute;ng Saudi Arabia, trong đ&oacute; c&oacute; Al Nassr của Ronaldo đang quan t&acirc;m tới Rashford\" width=\"647\" height=\"338\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-19/9586a-17345096176072-1920--1--1734613510-347-width740height387.jpg\" data-was-processed=\"true\" /></span></div>\r\n<div><span style=\"aspect-ratio: 740 / 387; display: block;\">C&aacute;c đội b&oacute;ng Saudi Arabia, trong đ&oacute; c&oacute; Al Nassr của Ronaldo đang quan t&acirc;m tới Rashford</span></div>\r\n<div><span style=\"aspect-ratio: 740 / 387; display: block;\">Ngo&agrave;i ra, Al-Qadsiah, đội b&oacute;ng mới l&ecirc;n hạng Saudi Pro League m&ugrave;a n&agrave;y&nbsp;cũng c&oacute; thể tham gia v&agrave;o cuộc đua gi&agrave;nh chữ k&yacute; của Rashford.</span></div>\r\n</div>\r\n</div>\r\n<p>Hợp đồng hiện tại giữa Rashford v&agrave; MU c&ograve;n thời hạn tới năm&nbsp;2028 k&egrave;m mức đ&atilde;i ngộ&nbsp;khoảng 325.000 bảng/tuần.&nbsp;Theo tờ Daily Mail, MU sẵn s&agrave;ng để cầu thủ 27 tuổi ra đi v&agrave;o th&aacute;ng 1/2025 với mức gi&aacute; khoảng 40 triệu bảng.</p>\r\n<p>Trả lời phỏng vấn&nbsp;nh&agrave; b&aacute;o Henry Winter sau trận derby Manchester, Rashford tuy&ecirc;n bố anh&nbsp;\"sẵn s&agrave;ng cho một thử th&aacute;ch mới\". Khi được hỏi về phản ứng của Rashford ở cuộc họp b&aacute;o trước trận Tottenham - MU, HLV Ruben Amorim tỏ r&otilde; sự&nbsp;kh&ocirc;ng h&agrave;i l&ograve;ng:</p>\r\n<p>&ldquo;Nếu t&ocirc;i l&agrave; Rashford, t&ocirc;i sẽ n&oacute;i chuyện với HLV của m&igrave;nh. Thật kh&oacute; để giải th&iacute;ch t&ocirc;i sẽ l&agrave;m g&igrave; trong t&igrave;nh huống n&agrave;y. T&ocirc;i c&oacute; ch&uacute;t cảm x&uacute;c. Hiện tại t&ocirc;i đang tập trung chuẩn bị cho trận đấu, rồi ch&uacute;ng ta sẽ xem x&eacute;t. T&ocirc;i chỉ tập trung&nbsp;v&agrave;o đội b&oacute;ng thay v&igrave; c&aacute;c&nbsp;c&aacute; nh&acirc;n&rdquo;.&nbsp;</p>\r\n<p><strong>Barcelona t&iacute;nh đổi 2 sao lấy Rashford</strong></p>\r\n<p>D&ugrave; được&nbsp;c&aacute;c CLB Saudi Arabia&nbsp;theo đuổi, khả năng&nbsp;Rashford&nbsp;rời ch&acirc;u &Acirc;u vẫn l&agrave; dấu hỏi lớn trong bối cảnh anh đang quyết t&acirc;m t&igrave;m đường trở lại ĐT Anh dưới thời t&acirc;n HLV trưởng&nbsp;Thomas Tuchel. Chuy&ecirc;n gia chuyển nhượng Fabrizio Romano h&eacute; lộ, chuyển đến T&acirc;y Ban Nha sẽ l&agrave; giấc mơ của Rashford trong trường hợp phải rời MU.</p>\r\n<p>Đ&aacute;ng ch&uacute; &yacute;, Barcelona cũng rất quan t&acirc;m tới tiền đạo 27 tuổi. Theo trang&nbsp;madrid-barcelona,&nbsp;huấn luyện vi&ecirc;n Hansi Flick muốn đội chủ s&acirc;n Nou Camp chi&ecirc;u mộ&nbsp;một cầu thủ chạy c&aacute;nh ngang tầm đẳng cấp&nbsp;với bộ đ&ocirc;i Lamine Yamal v&agrave; Raphinha để l&agrave;m d&agrave;y lực lượng cho h&agrave;ng c&ocirc;ng, trong đ&oacute; Rashford l&agrave; lựa chọn nổi bật.</p>\r\n<p>Trong khi đ&oacute;, Chủ tịch Barca,&nbsp;Joan Laporta rất ngưỡng mộ Rashford về&nbsp;sức ảnh hưởng truyền th&ocirc;ng, b&ecirc;n cạnh yếu tố chuy&ecirc;n m&ocirc;n. Thậm ch&iacute;&nbsp;để thuyết phục MU nhả người, Barca&nbsp;sẵn s&agrave;ng trao đổi 1 trong 2 cầu thủ&nbsp;Ronald Araujo hoặc Frenkie de Jong.</p>\r\n<p><a href=\"https://www.24h.com.vn/bong-da/dai-gia-a-rap-soi-suc-vi-rashford-barcelona-muon-doi-de-jong-lay-sao-mu-c48a1627814.html\" target=\"_blank\" rel=\"noopener\"><img class=\"logoFlag1 loading\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-18/7-1733996723-567-width100height100-1734514924-366-width100height100.png\" alt=\"\" data-was-processed=\"true\" /><img class=\"loading\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-18/ch----nh---t-0311--2330--15--1734514923-616-width600height250.png\" alt=\"\" width=\"439\" height=\"183\" data-was-processed=\"true\" /><img class=\"logoFlag1 loading\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-18/thi---t-k----ch--a-c---t--n--92--1734514924-847-width100height100.png\" alt=\"\" data-was-processed=\"true\" /></a></p>\r\n<div class=\"data-embed-code-minigame\">\r\n<div class=\"boxG boxG_temp7\" style=\"background-image: url(\'/year-two/Back_End/LARAVER/post/bgs.jpg\');\"><br /><form id=\"minigame_frm_update_data50\" class=\"minigame_frm_update_data\" action=\"\" enctype=\"multipart/form-data\" method=\"post\" name=\"frm_update_data50\" target=\"frm_submit\">\r\n<div class=\"boxG_tit txtCent\">\r\n<p>Việt Nam - Myanmar</p>\r\n</div>\r\n<div class=\"boxG_sapo\">\r\n<p>Theo bạn tỷ số trận đấu sẽ như thế n&agrave;o?</p>\r\n</div>\r\n<div class=\"tsdd disFlex txtCent\">\r\n<div><br />\r\n<div class=\"fcName\">Việt Nam</div>\r\n</div>\r\n<div><br />\r\n<div class=\"fcName\">Myanmar</div>\r\n</div>\r\n</div>\r\n</form></div>\r\n</div>'),
(28, 'bài cuối', '2024-12-19 10:23:41', '2024-12-19 10:23:41', 2, 600, NULL, NULL, '<div class=\"cate-24h-foot-arti-deta-tags\"><span class=\"tagsNameEvent\">Sự kiện: </span> <a href=\"https://www.24h.com.vn/tin-anh-nguoi-mau-thoi-trang-hot-c78e448.html\">Tin ảnh, phong c&aacute;ch người mẫu hot</a> <a href=\"https://www.24h.com.vn/nguyen-tran-khanh-van-c78e5996.html\">Nguyễn Trần Kh&aacute;nh V&acirc;n</a></div>\r\n<nav class=\"cate-24h-foot-arti-deta-social d-flex flex-auto align-items-center\"><a class=\"btn-save-news btn-save-news-1627612 btn-save-24h unsave d-inline-flex align-items-center justify-content-center margin-left-10 margin-right-10\" data-news_id=\"1627612\"> </a></nav>\r\n<div class=\"d-flex align-items-end justify-content-between margin-bottom-5 btn-kd-social\"><nav class=\"cate-24h-foot-arti-deta-social d-flex flex-auto align-items-center\"><a class=\"btn-save-news btn-save-news-1627612 btn-save-24h unsave d-inline-flex align-items-center justify-content-center margin-left-10 margin-right-10\" data-news_id=\"1627612\"><span class=\"unsave-title\">Lưu b&agrave;i</span> </a>\r\n<div class=\"btn-share-24h\">\r\n<div class=\"cv19-sha-social d-flex align-items-center\"><span id=\"btn-share-top\" class=\"cv19-sha-social__tit d-flex align-items-center text-uppercase\">Chia sẻ</span></div>\r\n</div>\r\n</nav></div>\r\n<div class=\"cate-24h-foot-arti-deta-video-hight-iframe \">&nbsp;</div>\r\n<article class=\"cate-24h-foot-arti-deta-info\">\r\n<h2 id=\"article_sapo\" class=\"cate-24h-foot-arti-deta-sum ctTp tuht_show\"><strong> M&agrave;n sexy dance của Kh&aacute;nh V&acirc;n trong tiệc cưới kh&ocirc;ng d&agrave;i, chỉ cỡ v&agrave;i ph&uacute;t, cũng kh&ocirc;ng c&oacute; động t&aacute;c n&agrave;o đ&aacute;ng bị đ&aacute;nh gi&aacute; phản cảm, thế m&agrave; th&agrave;nh n&aacute;o loạn những ng&agrave;y qua. </strong></h2>\r\n<p><strong>Qu&agrave; tặng ch&uacute; rể, cả nước được xem</strong></p>\r\n<p>Đ&aacute;m cưới của người nổi tiếng đương nhi&ecirc;n thu h&uacute;t. C&ocirc; d&acirc;u l&agrave; hoa hậu lại trổ t&agrave;i sexy dance ngay trong tiệc cưới, ch&uacute; rể ngồi ngắm v&agrave; hưởng ứng bằng nụ cười tươi r&oacute;i, ở ta vẫn l&agrave; chuyện trước nay chưa c&oacute;.</p>\r\n<p>V&igrave; chưa c&oacute; n&ecirc;n mới tạo tranh luận. Người nhẹ nh&agrave;ng th&igrave; ch&ecirc; &ldquo;kỳ&rdquo;. Người nặng lời th&igrave; ch&ecirc; lố lăng, phản cảm. C&oacute; người c&ograve;n n&oacute;i hoa hậu nhảy sexy trong đ&aacute;m cưới đi ngược lại thuần phong mỹ tục... Nhưng chồng Kh&aacute;nh V&acirc;n - nhiếp ảnh gia Nguyễn Long - đ&atilde; l&ecirc;n tiếng rằng vợ anh kh&ocirc;ng cần phải xin lỗi. V&igrave; anh thấy vui với &ldquo;m&oacute;n qu&agrave;&rdquo; n&agrave;y, kh&aacute;ch mời cũng vui tưng bừng.</p>\r\n<p>B&ecirc;n cạnh những lời ch&ecirc; tr&aacute;ch, cũng kh&ocirc;ng &iacute;t người b&ecirc;nh vực Kh&aacute;nh V&acirc;n. Nhiều người n&oacute;i rằng đ&aacute;m cưới l&agrave; của người ta. Cho n&ecirc;n việc Kh&aacute;nh V&acirc;n quậy tưng bừng cũng kh&ocirc;ng c&oacute; g&igrave; đ&aacute;ng tr&aacute;ch.</p>\r\n<p>C&ocirc; ấy quậy chứng tỏ c&ocirc; ấy h&agrave;i l&ograve;ng, m&atilde;n nguyện với lựa chọn của m&igrave;nh. C&oacute; người c&ograve;n soi &aacute;nh mắt, nụ cười của chồng Kh&aacute;nh V&acirc;n d&agrave;nh cho vợ trong tiệc cưới.</p>\r\n<p><strong>D&aacute;m khoe phải d&aacute;m nhận &yacute; kiến tr&aacute;i chiều</strong></p>\r\n<p>Người ch&ecirc; bai hoặc bảo vệ Kh&aacute;nh V&acirc;n đều c&oacute; c&aacute;i l&yacute; ri&ecirc;ng. Nhưng nếu ph&iacute;a Kh&aacute;nh V&acirc;n giữ tiệc cưới v&agrave; tất cả hoạt động diễn ra trong đ&oacute; như một c&acirc;u chuyện của ri&ecirc;ng th&igrave; đ&atilde; chẳng xảy ra chuyện g&igrave;. B&ecirc;n cạnh khuyến c&aacute;o trẻ em kh&ocirc;ng n&ecirc;n g&oacute;p mặt trong tiệc cưới, BTC n&ecirc;n c&oacute; th&ecirc;m y&ecirc;u cầu kh&aacute;ch mời kh&ocirc;ng quay phim, chụp h&igrave;nh trong tiệc cưới.</p>\r\n<p>Đằng n&agrave;y, m&agrave;n sexy dance bị bung ra th&igrave; l&agrave;m sao tr&aacute;nh được luận b&agrave;n? Dũng cảm khoe ra th&igrave; c&ocirc; cũng phải dũng cảm nhận về &yacute; kiến hai chiều. Kh&aacute;nh V&acirc;n cũng &ldquo;khoe&rdquo; tr&ecirc;n trang c&aacute; nh&acirc;n về sự bầm dập khi muốn trở th&agrave;nh vũ c&ocirc;ng, lại c&agrave;ng khiến kh&aacute;n giả t&ograve; m&ograve; xem m&agrave;n nhảy m&uacute;a ấy hấp dẫn cỡ n&agrave;o.</p>\r\n<div id=\"container-24h-banner-in-image\" style=\"text-align: center; width: 100%; clear: both; position: relative;\">\r\n<div style=\"position: relative; max-width: 740px; margin: 0 auto;\"><span style=\"aspect-ratio: 740 / 453; display: block;\"><img class=\"news-image initial loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-19/1734569675-chong-cuoi-ha-ha-353-width680height453.jpg\" alt=\"M&agrave;n sexy dance g&acirc;y b&atilde;o của Kh&aacute;nh V&acirc;n.\" width=\"740\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-19/1734569675-chong-cuoi-ha-ha-353-width680height453.jpg\" data-was-processed=\"true\" /></span>\r\n<div id=\"24h-banner-in-image\" style=\"left: 50%; transform: translateX(-50%); position: absolute; display: block; height: 90px; color: white; bottom: 0px;\">\r\n<div id=\"ADS_139_15s\" class=\"txtCent  \">\r\n<div class=\"text_adver_right\">&nbsp;</div>\r\n<div id=\"div-gpt-ad-1498551316151-13\" style=\"margin: 0 auto;\"></div>\r\n<span id=\"ADS_139_15s_0\" class=\"m_banner_show\" style=\"width: 660px;\"></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"img_chu_thich_0407\" style=\"text-align: center;\"><em>M&agrave;n sexy dance g&acirc;y b&atilde;o của Kh&aacute;nh V&acirc;n.</em></p>\r\n<p>Kh&aacute;nh V&acirc;n từng gi&agrave;nh vương miện, từng mang chu&ocirc;ng đi đ&aacute;nh xứ người. Tuy c&ocirc; kh&ocirc;ng ẵm giải song qu&aacute; tr&igrave;nh c&ocirc; tham gia ở đấu trường nhan sắc quốc tế hết sức tưng bừng, thu h&uacute;t sự quan t&acirc;m của kh&aacute;n giả trong nước. Sau khi về nước Kh&aacute;nh V&acirc;n tiếp tục hoạt động s&ocirc;i nổi trong l&agrave;ng giải tr&iacute;, chứ kh&ocirc;ng ở ẩn, n&ecirc;n c&ocirc; l&agrave; một trong những hoa hậu giữ được sức h&uacute;t.</p>\r\n<p>Hoa hậu c&oacute; thể kh&ocirc;ng sở hữu lượng fan đ&ocirc;ng đảo như những Idol Sơn T&ugrave;ng M-TP, Soobin Ho&agrave;ng Sơn hay HIEUTHUHAI&hellip; song mỹ nh&acirc;n đội vương miện lại được kh&aacute;n giả đặt nhiều hy vọng về chuẩn mực trong h&agrave;nh động, ứng xử, giao tiếp.</p>\r\n<p>Kh&aacute;nh V&acirc;n th&iacute;ch vui, th&iacute;ch quậy nhưng lại hơi thiếu nhạy cảm khi đưa sexy dance th&agrave;nh điểm nhấn của tiệc cưới. H&atilde;y nh&igrave;n sự trừng phạt d&agrave;nh cho Lisa - Idol to&agrave;n cầu khi c&ocirc; nhận lời biểu diễn ở qu&aacute;n bar &ldquo;người lớn&rdquo;. Bao nhi&ecirc;u fan ở ch&acirc;u &Aacute;, nhất l&agrave; ở Trung Quốc, đ&atilde; xa rời Lisa? Ngay cả mẹ đẻ của Lisa cũng bị vạ l&acirc;y, hay Angelababy bị tẩy chay khi &ldquo;lỡ dại&rdquo; đi xem Lisa biểu diễn.</p>\r\n<p>V&igrave; thế Kh&aacute;nh V&acirc;n muốn t&aacute;o bạo, đổi mới h&igrave;nh ảnh, muốn quậy m&agrave; tung m&agrave;n sexy dance trong ng&agrave;y trọng đại của cuộc đời th&igrave; kh&ocirc;ng tr&aacute;nh khỏi lời ra, tiếng v&agrave;o. D&ugrave; g&igrave; Kh&aacute;nh V&acirc;n cũng đ&atilde; ghi được dấu ấn, l&agrave; c&ocirc; d&acirc;u ti&ecirc;n phong diễn sexy dance ở Việt Nam. Nhưng sự ti&ecirc;n phong n&agrave;y chắc kh&oacute; biến th&agrave;nh xu hướng.</p>\r\n<p>Một t&agrave;i khoản b&igrave;nh luận: \"Sở hữu cơ thể đẹp như Kh&aacute;nh V&acirc;n tội g&igrave; kh&ocirc;ng nhảy sexy\". Đ&uacute;ng l&agrave; đẹp đẽ th&igrave; ph&ocirc; ra như người xưa khuyến kh&iacute;ch, song cũng c&oacute; lời dạy: &ldquo;Ăn tr&ocirc;ng nồi, ngồi tr&ocirc;ng hướng&rdquo; - tức l&agrave; nhắc ta &yacute; tứ hơn</p>\r\n</article>'),
(29, 'baif cuoois', '2024-12-20 01:10:13', '2024-12-20 01:10:13', 2, 600, NULL, NULL, '<p><img src=\"/year-two/Back_End/LARAVER/public//storage/photos/poroduct/z6042305236063_52f1df868f72af3d3933cf535f07aa51.jpg\" alt=\"\" width=\"182\" height=\"115\" /></p>\r\n<p>&nbsp;</p>'),
(30, 'dũng', '2024-12-20 03:35:37', '2024-12-20 03:35:37', 2, 600, NULL, NULL, '<div class=\"bai_tuong_thuat_ocm\">\r\n<div class=\"liveCnt\">\r\n<div class=\"att\">\r\n<div id=\"tttt-container\" class=\"m2\">\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"1\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">HLV Kim Sang Sik: \"ĐT Việt Nam tự tin gi&agrave;nh kết quả tốt nhất\"</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>N&oacute;i về qu&aacute; tr&igrave;nh chuẩn bị của ĐT Việt Nam, HLV Kim Sang Sik khẳng định c&aacute;c cầu thủ đang c&oacute; trạng th&aacute;i t&acirc;m l&iacute; t&iacute;ch cực&nbsp;v&agrave; quyết t&acirc;m hướng tới kết quả tốt nhất:</p>\r\n<p>\"Đ&acirc;y l&agrave; trận đấu cuối c&ugrave;ng của v&ograve;ng bảng, đồng thời x&aacute;c định xem Việt Nam&nbsp;c&oacute; gi&agrave;nh ng&ocirc;i&nbsp;đầu hay kh&ocirc;ng. Ch&uacute;ng t&ocirc;i rất tự tin v&igrave; đ&atilde; chuẩn bị kỹ lưỡng.&nbsp;Cầu thủ cảm thấy mệt mỏi nhưng đối thủ cũng vậy. Hiện tại, to&agrave;n đội c&oacute;&nbsp;tinh thần t&iacute;ch cực v&agrave; sẽ&nbsp;cố gắng gi&agrave;nh kết quả tốt nhất v&agrave;o ng&agrave;y mai\".</p>\r\n<p align=\"center\"><span style=\"height: 400px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453312009_66c1f17868fcb6cc5178997c4c5570ea--2--1734671020-769-width600height400.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 1\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453312009_66c1f17868fcb6cc5178997c4c5570ea--2--1734671020-769-width600height400.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"2\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">&Ocirc;ng sẽ sử dụng Xu&acirc;n Son như thế n&agrave;o trong trận đấu ng&agrave;y mai?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>ĐT Việt Nam rất may mắn khi c&oacute; Xu&acirc;n Son trong đội. T&ocirc;i thấy cậu ấy đ&atilde;&nbsp;sẵn s&agrave;ng cho trận đấu ng&agrave;y mai. Cậu ấy sở hữu thể chất, tinh thần rất tốt.</p>\r\n<p>Đ&acirc;y l&agrave; trận mở m&agrave;n của Xu&acirc;n Son cũng l&agrave;&nbsp;khởi đầu mới cho ĐT Việt Nam. Chắc chắn mọi người sẽ đổ dồn sự ch&uacute; &yacute;&nbsp;v&agrave;o cậu ấy. Hy vọng Xu&acirc;n Son c&oacute; m&agrave;n tr&igrave;nh diễn tốt, cống hiến cho người h&acirc;m mộ Việt Nam những pha b&oacute;ng đẹp.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"3\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Theo &ocirc;ng, liệu Xu&acirc;n Son c&oacute; thể kết hợp tốt với Tiến Linh tr&ecirc;n h&agrave;ng c&ocirc;ng ĐT Việt Nam?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Xu&acirc;n Son đ&atilde; trở th&agrave;nh c&ocirc;ng d&acirc;n Việt Nam, đ&acirc;y l&agrave; điều tốt cho đội tuyển quốc gia. Về Tiến Linh, cậu ấy&nbsp;l&agrave; tiền đạo h&agrave;ng đầu. T&ocirc;i hy vọng 2 cầu thủ sẽ c&oacute; sự kết nối trong trận mai cũng như tất cả c&aacute;c trận trong tương lai. T&ocirc;i tin rằng&nbsp;họ c&oacute; thể chơi&nbsp;ăn &yacute; để gi&uacute;p đội tuyển gi&agrave;nh kết quả tốt.</p>\r\n<p align=\"center\"><span style=\"height: 412px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148553873313_4f5eae11fb9325e25b9ba50cee592572--2--1734673491-375-width600height412.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 2\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148553873313_4f5eae11fb9325e25b9ba50cee592572--2--1734673491-375-width600height412.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"4\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">ĐT Việt Nam r&uacute;t ra b&agrave;i học kinh nghiệm n&agrave;o sau trận h&ograve;a Philippines?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Ở trận gặp Philippines, t&ocirc;i đ&atilde; thực hiện nhiều thay đổi so với trận gặp L&agrave;o v&agrave; Indonesia nhưng&nbsp;hiệu quả chưa được như &yacute;. Mỗi trận, đội tuyển đều c&oacute; sự chuẩn bị kh&aacute;c nhau, t&ocirc;i tin tưởng tất cả cầu thủ khi điền t&ecirc;n họ v&agrave;o đội h&igrave;nh xuất ph&aacute;t bởi họ đều sẵn s&agrave;ng v&agrave;o s&acirc;n thi đấu.</p>\r\n<p>ĐT Việt Nam kh&ocirc;ng thắng&nbsp;Philippines nhưng 1 điểm vẫn l&agrave; kết quả t&iacute;ch&nbsp;cực. Từ trận đấu n&agrave;y, t&ocirc;i cũng hiểu&nbsp;cầu thủ của m&igrave;nh hơn.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"5\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">ĐT Việt Nam c&oacute; thể gặp Malaysia hoặc Singapore ở b&aacute;n kết. &Ocirc;ng nghĩ sao về những đối thủ n&agrave;y?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>T&ocirc;i c&oacute; theo d&otilde;i c&aacute;c trận đấu ở&nbsp;bảng A nhưng hiện tại, mọi sự tập trung của t&ocirc;i đều d&agrave;nh cho trận đấu ng&agrave;y mai. T&ocirc;i nghĩ Malaysia v&agrave; Singapore&nbsp;đều c&oacute; cơ hội đi tiếp như nhau.</p>\r\n<p>ĐT Việt Nam&nbsp;gặp&nbsp;đối thủ n&agrave;o tại b&aacute;n kết cũng được bởi mục ti&ecirc;u xa hơn&nbsp;của ch&uacute;ng t&ocirc;i&nbsp;l&agrave; trận chung kết.&nbsp;Tuy nhi&ecirc;n, to&agrave;n đội sẽ tập trung v&agrave;o từng trận đấu. Nhiệm vụ của ban huấn luyện l&agrave;&nbsp;gi&uacute;p cầu thủ&nbsp;cải thiện thể lực, phong độ v&agrave; kiểm so&aacute;t diễn biến tổng thể của c&aacute;c&nbsp;trận đấu.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"6\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">&Ocirc;ng c&oacute; thể chia sẻ bản th&acirc;n th&iacute;ch gặp đội n&agrave;o tại b&aacute;n kết hơn?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>B&oacute;ng đ&aacute;&nbsp;Đ&ocirc;ng Nam &Aacute; đang c&oacute; sự thay đổi về chiến thuật v&agrave; chất lượng của c&aacute;c đội tuyển qua từng năm. T&ocirc;i sẽ cố gắng l&agrave;m tốt nhất việc ph&acirc;n t&iacute;ch từng đội d&ugrave; kh&ocirc;ng thể chắc chắn&nbsp;100% bởi&nbsp;kh&ocirc;ng c&oacute; g&igrave; dễ d&agrave;ng cả.</p>\r\n<p>Tất cả cầu thủ đều tự tin, sẵn s&agrave;ng trước bất cứ dối thủ n&agrave;o sắp tới. Khi biết đối thủ, ch&uacute;ng t&ocirc;i sẽ c&oacute; kế hoạch đối thủ.</p>\r\n<p>Về mặt c&aacute; nh&acirc;n, t&ocirc;i&nbsp;th&iacute;ch gặp Malaysia hơn nhưng ĐT Việt Nam&nbsp;phải&nbsp;tập trung v&agrave;o trận đấu&nbsp;ng&agrave;y mai để đạt kết quả tốt.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"7\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">2 b&agrave;n thắng gần nhất của ĐT Việt Nam đều do c&ocirc;ng của c&aacute;c tiền vệ. &Ocirc;ng c&oacute; nghĩ Xu&acirc;n Son sẽ l&agrave; phương &aacute;n giải quyết vấn đề của h&agrave;ng tiền đạo?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Trước Philippines, ĐT Việt Nam đ&atilde; trải qua&nbsp;hiệp 1 rất t&iacute;ch cực. To&agrave;n đội cũng kh&ocirc;ng ảnh hưởng qu&aacute; nhiều&nbsp;sau một v&agrave;i khoảnh khắc thi đấu kh&ocirc;ng tốt v&agrave;&nbsp;Quang Hải bị đau nhẹ.</p>\r\n<p>Sự g&oacute;p mặt của Xu&acirc;n Son c&oacute; thể đem lại&nbsp;hiệu ứng t&iacute;ch cực, chất lượng cho h&agrave;ng c&ocirc;ng v&agrave; gi&uacute;p&nbsp;đội tuyển đạt kết quả tốt.</p>\r\n<p>ĐT Việt Nam đ&atilde; c&oacute; nhiều b&agrave;i học qu&yacute; gi&aacute; sau trận h&ograve;a Philippines. Hy vọng c&aacute;c cầu thủ giữ vững động lực, tinh thần chiến đấu để gi&agrave;nh chiến thắng v&agrave;o ng&agrave;y mai.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"8\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Tiền đạo Nguyễn Xu&acirc;n Son: \"T&ocirc;i rất h&agrave;o hứng với trận đấu ng&agrave;y mai\"</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Trong khi đ&oacute;, tiền đạo Nguyễn Xu&acirc;n Son đ&atilde; tiết lộ về qu&aacute; tr&igrave;nh&nbsp;chuẩn bị cho cuộc chạm tr&aacute;n ĐT Myanmar của&nbsp;ĐT Việt Nam cũng như c&aacute; nh&acirc;n anh:</p>\r\n<p>\"T&ocirc;i rất h&agrave;o hứng. To&agrave;n đội đ&atilde; chuẩn bị rất tốt. D&ugrave; c&oacute; ch&uacute;t mệt mỏi sau chuyến đi, to&agrave;n đội&nbsp;vẫn giữ sự tập trung tối đa. Ch&uacute;ng t&ocirc;i sẽ chiến đấu c&ugrave;ng nhau, lu&ocirc;n duy tr&igrave; sự tự tin&nbsp;để chuẩn bị cho từng trận đấu. Ch&uacute;ng t&ocirc;i ổn v&agrave; sẽ gi&agrave;nh chiến thắng\".</p>\r\n<p align=\"center\"><span style=\"height: 400px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453227144_88af9874e553fbeb20fdae553550ae4e-1734671243-882-width600height400.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 3\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453227144_88af9874e553fbeb20fdae553550ae4e-1734671243-882-width600height400.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"9\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Anh cảm thấy thế n&agrave;o trước trận ra mắt đội tuyển Việt Nam?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Khoảnh khắc n&agrave;y rất tuyệt vời đối với t&ocirc;i. T&ocirc;i chỉ muốn tập trung thi đấu v&agrave;&nbsp;tận hưởng khoảnh khắc n&agrave;y. T&ocirc;i cảm thấy&nbsp;rất hạnh ph&uacute;c khi được kho&aacute;c &aacute;o&nbsp;đội tuyển quốc gia. Cảm ơn c&aacute;c đồng đội đ&atilde; ủng hộ t&ocirc;i. T&ocirc;i sẽ cố gắng cống hiến những g&igrave; tốt nhất để gi&uacute;p đội tuyển gi&agrave;nh chiến thắng.&nbsp;</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"10\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Anh đ&atilde; chuẩn bị m&agrave;n ăn mừng n&agrave;o nếu ghi b&agrave;n chưa?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>(Cười)&nbsp;T&ocirc;i kh&ocirc;ng biết nữa. T&ocirc;i cũng cần nghĩ đến điều đ&oacute; nhưng th&agrave;nh thật m&agrave; n&oacute;i&nbsp;th&igrave; giờ chưa c&oacute; g&igrave; cả.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"11\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Anh c&oacute; thể tự tin h&aacute;t Quốc ca chưa?</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>T&ocirc;i rất tự tin h&aacute;t Quốc ca. T&ocirc;i học h&agrave;ng ng&agrave;y v&agrave; t&iacute;ch cực&nbsp;giao tiếp với c&aacute;c đồng đội. Dần dần t&ocirc;i sẽ l&agrave;m tốt th&ocirc;i!</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"linD\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p><strong>ĐT Việt Nam vẫn rộng cửa đi tiếp</strong></p>\r\n<p>Trận h&ograve;a Philippines 1-1 khiến ĐT Việt Nam bỏ lỡ cơ hội gi&agrave;nh v&eacute; sớm v&agrave;o b&aacute;n kết. D&ugrave; vậy với 7 điểm/3 trận c&ugrave;ng ng&ocirc;i đ&agrave;u bảng B, cơ hội đi tiếp của thầy tr&ograve; HLV Kim Sang Sik vẫn rất rộng mở trước trận đấu cuối v&ograve;ng bảng với Myanmar v&agrave;o 20h ng&agrave;y 21/12.&nbsp;</p>\r\n<p>Thậm ch&iacute;, trường hợp khiến ĐT Việt Nam bị loại l&agrave; tương đối hẹp. Cụ thể, \"Những chiến binh sao v&agrave;ng\"&nbsp;thua Myanmar, c&ograve;n Indonesia thắng Philippines, l&uacute;c n&agrave;y&nbsp;bảng B xuất hiện 3 đội c&oacute; c&ugrave;ng 7 điểm (Việt Nam, Myanmar, Indonesia) v&agrave; ĐT Việt Nam sẽ dừng bước nếu c&oacute; chỉ số phụ k&eacute;m c&aacute;c đối thủ.&nbsp;</p>\r\n<p align=\"center\"><span style=\"aspect-ratio: 740 / 483; max-width: 653px;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/Truc-tiep-hop-bao-dT-Viet-Nam-dau-Myanmar-9-1734599164-897-width740height483-1734652240-539-width740height483.jpg\" alt=\"Nguyễn Xu&acirc;n Son sẽ c&oacute; trận ra mắt ĐT Việt Nam?\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/Truc-tiep-hop-bao-dT-Viet-Nam-dau-Myanmar-9-1734599164-897-width740height483-1734652240-539-width740height483.jpg\" data-was-processed=\"true\" /></span></p>\r\n<p class=\"img_chu_thich_0407\" align=\"center\">Nguyễn Xu&acirc;n Son sẽ c&oacute; trận ra mắt ĐT Việt Nam?</p>\r\n<p><strong>T&acirc;m điểm Nguyễn Xu&acirc;n Son</strong></p>\r\n<p>Nguyễn Xu&acirc;n Son chắc chắn sẽ trở th&agrave;nh t&acirc;m điểm ở cuộc họp b&aacute;o. Sau 3 trận ngồi kh&aacute;n đ&agrave;i do chưa đủ điều kiện về thời gian sinh sống ở Việt Nam theo quy định của FIFA, tiền đạo gốc Brazil&nbsp;đang khao kh&aacute;t&nbsp;ra s&acirc;n thi đấu trong m&agrave;u &aacute;o đội tuyển quốc gia.</p>\r\n<p>Đội trưởng Đỗ Duy Mạnh v&agrave; tiền đạo B&ugrave;i Vĩ H&agrave;o đều nhận định, sự g&oacute;p mặt của Xu&acirc;n Son ở trận đấu giữa ĐT Việt Nam v&agrave; Myanmar tới đ&acirc;y sẽ phần n&agrave;o gi&uacute;p đội nh&agrave; c&oacute; nhiều phương &aacute;n tấn c&ocirc;ng hơn. Bởi ở cuộc đối đầu với Philippines tối 18/12, HLV Kim Sang Sik đ&atilde; sử dụng cả 5 tiền đạo gồm Vĩ H&agrave;o, Thanh B&igrave;nh, Tiến Linh, Văn To&agrave;n v&agrave; Tuấn Hải nhưng kh&ocirc;ng mang lại hiệu quả</p>');
INSERT INTO `posts` (`id`, `title`, `created_at`, `updated_at`, `user_id`, `votes`, `deleted_at`, `thumbnail`, `content`) VALUES
(31, 'dung', '2024-12-20 03:37:07', '2024-12-20 03:37:07', 2, 600, NULL, NULL, '<div class=\"bai_tuong_thuat_ocm\">\r\n<div class=\"liveCnt\">\r\n<div class=\"att\">\r\n<div id=\"tttt-container\" class=\"m2\">\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"1\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">HLV Kim Sang Sik: \"ĐT Việt Nam tự tin gi&agrave;nh kết quả tốt nhất\"</div>\r\n</div>\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>N&oacute;i về qu&aacute; tr&igrave;nh chuẩn bị của ĐT Việt Nam, HLV Kim Sang Sik khẳng định c&aacute;c cầu thủ đang c&oacute; trạng th&aacute;i t&acirc;m l&iacute; t&iacute;ch cực&nbsp;v&agrave; quyết t&acirc;m hướng tới kết quả tốt nhất:</p>\r\n<p>\"Đ&acirc;y l&agrave; trận đấu cuối c&ugrave;ng của v&ograve;ng bảng, đồng thời x&aacute;c định xem Việt Nam&nbsp;c&oacute; gi&agrave;nh ng&ocirc;i&nbsp;đầu hay kh&ocirc;ng. Ch&uacute;ng t&ocirc;i rất tự tin v&igrave; đ&atilde; chuẩn bị kỹ lưỡng.&nbsp;Cầu thủ cảm thấy mệt mỏi nhưng đối thủ cũng vậy. Hiện tại, to&agrave;n đội c&oacute;&nbsp;tinh thần t&iacute;ch cực v&agrave; sẽ&nbsp;cố gắng gi&agrave;nh kết quả tốt nhất v&agrave;o ng&agrave;y mai\".</p>\r\n<p align=\"center\"><span style=\"height: 400px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453312009_66c1f17868fcb6cc5178997c4c5570ea--2--1734671020-769-width600height400.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 1\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453312009_66c1f17868fcb6cc5178997c4c5570ea--2--1734671020-769-width600height400.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">&Ocirc;ng sẽ sử dụng Xu&acirc;n Son như thế n&agrave;o trong trận đấu ng&agrave;y mai?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"2\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>ĐT Việt Nam rất may mắn khi c&oacute; Xu&acirc;n Son trong đội. T&ocirc;i thấy cậu ấy đ&atilde;&nbsp;sẵn s&agrave;ng cho trận đấu ng&agrave;y mai. Cậu ấy sở hữu thể chất, tinh thần rất tốt.</p>\r\n<p>Đ&acirc;y l&agrave; trận mở m&agrave;n của Xu&acirc;n Son cũng l&agrave;&nbsp;khởi đầu mới cho ĐT Việt Nam. Chắc chắn mọi người sẽ đổ dồn sự ch&uacute; &yacute;&nbsp;v&agrave;o cậu ấy. Hy vọng Xu&acirc;n Son c&oacute; m&agrave;n tr&igrave;nh diễn tốt, cống hiến cho người h&acirc;m mộ Việt Nam những pha b&oacute;ng đẹp.</p>\r\n</div>\r\n<div class=\"clear\">Theo &ocirc;ng, liệu Xu&acirc;n Son c&oacute; thể kết hợp tốt với Tiến Linh tr&ecirc;n h&agrave;ng c&ocirc;ng ĐT Việt Nam?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"3\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>Xu&acirc;n Son đ&atilde; trở th&agrave;nh c&ocirc;ng d&acirc;n Việt Nam, đ&acirc;y l&agrave; điều tốt cho đội tuyển quốc gia. Về Tiến Linh, cậu ấy&nbsp;l&agrave; tiền đạo h&agrave;ng đầu. T&ocirc;i hy vọng 2 cầu thủ sẽ c&oacute; sự kết nối trong trận mai cũng như tất cả c&aacute;c trận trong tương lai. T&ocirc;i tin rằng&nbsp;họ c&oacute; thể chơi&nbsp;ăn &yacute; để gi&uacute;p đội tuyển gi&agrave;nh kết quả tốt.</p>\r\n<p align=\"center\"><span style=\"height: 412px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148553873313_4f5eae11fb9325e25b9ba50cee592572--2--1734673491-375-width600height412.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 2\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148553873313_4f5eae11fb9325e25b9ba50cee592572--2--1734673491-375-width600height412.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">ĐT Việt Nam r&uacute;t ra b&agrave;i học kinh nghiệm n&agrave;o sau trận h&ograve;a Philippines?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"4\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Ở trận gặp Philippines, t&ocirc;i đ&atilde; thực hiện nhiều thay đổi so với trận gặp L&agrave;o v&agrave; Indonesia nhưng&nbsp;hiệu quả chưa được như &yacute;. Mỗi trận, đội tuyển đều c&oacute; sự chuẩn bị kh&aacute;c nhau, t&ocirc;i tin tưởng tất cả cầu thủ khi điền t&ecirc;n họ v&agrave;o đội h&igrave;nh xuất ph&aacute;t bởi họ đều sẵn s&agrave;ng v&agrave;o s&acirc;n thi đấu.</p>\r\n<p>ĐT Việt Nam kh&ocirc;ng thắng&nbsp;Philippines nhưng 1 điểm vẫn l&agrave; kết quả t&iacute;ch&nbsp;cực. Từ trận đấu n&agrave;y, t&ocirc;i cũng hiểu&nbsp;cầu thủ của m&igrave;nh hơn.</p>\r\n</div>\r\n<div class=\"clear\">ĐT Việt Nam c&oacute; thể gặp Malaysia hoặc Singapore ở b&aacute;n kết. &Ocirc;ng nghĩ sao về những đối thủ n&agrave;y?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"5\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>T&ocirc;i c&oacute; theo d&otilde;i c&aacute;c trận đấu ở&nbsp;bảng A nhưng hiện tại, mọi sự tập trung của t&ocirc;i đều d&agrave;nh cho trận đấu ng&agrave;y mai. T&ocirc;i nghĩ Malaysia v&agrave; Singapore&nbsp;đều c&oacute; cơ hội đi tiếp như nhau.</p>\r\n<p>ĐT Việt Nam&nbsp;gặp&nbsp;đối thủ n&agrave;o tại b&aacute;n kết cũng được bởi mục ti&ecirc;u xa hơn&nbsp;của ch&uacute;ng t&ocirc;i&nbsp;l&agrave; trận chung kết.&nbsp;Tuy nhi&ecirc;n, to&agrave;n đội sẽ tập trung v&agrave;o từng trận đấu. Nhiệm vụ của ban huấn luyện l&agrave;&nbsp;gi&uacute;p cầu thủ&nbsp;cải thiện thể lực, phong độ v&agrave; kiểm so&aacute;t diễn biến tổng thể của c&aacute;c&nbsp;trận đấu.</p>\r\n</div>\r\n<div class=\"clear\">&Ocirc;ng c&oacute; thể chia sẻ bản th&acirc;n th&iacute;ch gặp đội n&agrave;o tại b&aacute;n kết hơn?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"6\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>B&oacute;ng đ&aacute;&nbsp;Đ&ocirc;ng Nam &Aacute; đang c&oacute; sự thay đổi về chiến thuật v&agrave; chất lượng của c&aacute;c đội tuyển qua từng năm. T&ocirc;i sẽ cố gắng l&agrave;m tốt nhất việc ph&acirc;n t&iacute;ch từng đội d&ugrave; kh&ocirc;ng thể chắc chắn&nbsp;100% bởi&nbsp;kh&ocirc;ng c&oacute; g&igrave; dễ d&agrave;ng cả.</p>\r\n<p>Tất cả cầu thủ đều tự tin, sẵn s&agrave;ng trước bất cứ dối thủ n&agrave;o sắp tới. Khi biết đối thủ, ch&uacute;ng t&ocirc;i sẽ c&oacute; kế hoạch đối thủ.</p>\r\n<p>Về mặt c&aacute; nh&acirc;n, t&ocirc;i&nbsp;th&iacute;ch gặp Malaysia hơn nhưng ĐT Việt Nam&nbsp;phải&nbsp;tập trung v&agrave;o trận đấu&nbsp;ng&agrave;y mai để đạt kết quả tốt.</p>\r\n</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"linD\">2 b&agrave;n thắng gần nhất của ĐT Việt Nam đều do c&ocirc;ng của c&aacute;c tiền vệ. &Ocirc;ng c&oacute; nghĩ Xu&acirc;n Son sẽ l&agrave; phương &aacute;n giải quyết vấn đề của h&agrave;ng tiền đạo?</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"7\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"clF\">&nbsp;</div>\r\n<p>Trước Philippines, ĐT Việt Nam đ&atilde; trải qua&nbsp;hiệp 1 rất t&iacute;ch cực. To&agrave;n đội cũng kh&ocirc;ng ảnh hưởng qu&aacute; nhiều&nbsp;sau một v&agrave;i khoảnh khắc thi đấu kh&ocirc;ng tốt v&agrave;&nbsp;Quang Hải bị đau nhẹ.</p>\r\n<p>Sự g&oacute;p mặt của Xu&acirc;n Son c&oacute; thể đem lại&nbsp;hiệu ứng t&iacute;ch cực, chất lượng cho h&agrave;ng c&ocirc;ng v&agrave; gi&uacute;p&nbsp;đội tuyển đạt kết quả tốt.</p>\r\n<p>ĐT Việt Nam đ&atilde; c&oacute; nhiều b&agrave;i học qu&yacute; gi&aacute; sau trận h&ograve;a Philippines. Hy vọng c&aacute;c cầu thủ giữ vững động lực, tinh thần chiến đấu để gi&agrave;nh chiến thắng v&agrave;o ng&agrave;y mai.</p>\r\n</div>\r\n<div class=\"clear\">Tiền đạo Nguyễn Xu&acirc;n Son: \"T&ocirc;i rất h&agrave;o hứng với trận đấu ng&agrave;y mai\"</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"8\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<div class=\"livetit_wrap ovf clF\">\r\n<div class=\"livetit\" style=\"color: #000000;\">Trong khi đ&oacute;, tiền đạo Nguyễn Xu&acirc;n Son đ&atilde; tiết lộ về qu&aacute; tr&igrave;nh&nbsp;chuẩn bị cho cuộc chạm tr&aacute;n ĐT Myanmar của&nbsp;ĐT Việt Nam cũng như c&aacute; nh&acirc;n anh:</div>\r\n</div>\r\n<p>\"T&ocirc;i rất h&agrave;o hứng. To&agrave;n đội đ&atilde; chuẩn bị rất tốt. D&ugrave; c&oacute; ch&uacute;t mệt mỏi sau chuyến đi, to&agrave;n đội&nbsp;vẫn giữ sự tập trung tối đa. Ch&uacute;ng t&ocirc;i sẽ chiến đấu c&ugrave;ng nhau, lu&ocirc;n duy tr&igrave; sự tự tin&nbsp;để chuẩn bị cho từng trận đấu. Ch&uacute;ng t&ocirc;i ổn v&agrave; sẽ gi&agrave;nh chiến thắng\".</p>\r\n<p align=\"center\"><span style=\"height: 400px; display: block;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453227144_88af9874e553fbeb20fdae553550ae4e-1734671243-882-width600height400.jpg\" alt=\"Họp b&aacute;o Việt Nam đấu Myanmar: HLV Kim th&iacute;ch gặp Malaysia b&aacute;n kết, Xu&acirc;n Son c&oacute; thể đ&aacute; cặp Tiến Linh - 3\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/z6148453227144_88af9874e553fbeb20fdae553550ae4e-1734671243-882-width600height400.jpg\" data-was-processed=\"true\" /></span></p>\r\n</div>\r\n<div class=\"clear\">Anh cảm thấy thế n&agrave;o trước trận ra mắt đội tuyển Việt Nam?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"9\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>Khoảnh khắc n&agrave;y rất tuyệt vời đối với t&ocirc;i. T&ocirc;i chỉ muốn tập trung thi đấu v&agrave;&nbsp;tận hưởng khoảnh khắc n&agrave;y. T&ocirc;i cảm thấy&nbsp;rất hạnh ph&uacute;c khi được kho&aacute;c &aacute;o&nbsp;đội tuyển quốc gia. Cảm ơn c&aacute;c đồng đội đ&atilde; ủng hộ t&ocirc;i. T&ocirc;i sẽ cố gắng cống hiến những g&igrave; tốt nhất để gi&uacute;p đội tuyển gi&agrave;nh chiến thắng.&nbsp;</p>\r\n</div>\r\n<div class=\"clear\">Anh đ&atilde; chuẩn bị m&agrave;n ăn mừng n&agrave;o nếu ghi b&agrave;n chưa?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"10\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>(Cười)&nbsp;T&ocirc;i kh&ocirc;ng biết nữa. T&ocirc;i cũng cần nghĩ đến điều đ&oacute; nhưng th&agrave;nh thật m&agrave; n&oacute;i&nbsp;th&igrave; giờ chưa c&oacute; g&igrave; cả.</p>\r\n</div>\r\n<div class=\"clear\">Anh c&oacute; thể tự tin h&aacute;t Quốc ca chưa?</div>\r\n</div>\r\n</div>\r\n<div class=\"tttt-set tttt_full\" data-tttt-set=\"11\">\r\n<div class=\"rlt\">\r\n<div class=\"inner\" style=\"padding-left: 0;\">\r\n<p>T&ocirc;i rất tự tin h&aacute;t Quốc ca. T&ocirc;i học h&agrave;ng ng&agrave;y v&agrave; t&iacute;ch cực giao tiếp với c&aacute;c đồng đội. Dần dần t&ocirc;i sẽ l&agrave;m tốt th&ocirc;i!</p>\r\n<p><strong>ĐT Việt Nam vẫn rộng cửa đi tiếp</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Trận h&ograve;a Philippines 1-1 khiến ĐT Việt Nam bỏ lỡ cơ hội gi&agrave;nh v&eacute; sớm v&agrave;o b&aacute;n kết. D&ugrave; vậy với 7 điểm/3 trận c&ugrave;ng ng&ocirc;i đ&agrave;u bảng B, cơ hội đi tiếp của thầy tr&ograve; HLV Kim Sang Sik vẫn rất rộng mở trước trận đấu cuối v&ograve;ng bảng với Myanmar v&agrave;o 20h ng&agrave;y 21/12.&nbsp;</p>\r\n<p>Thậm ch&iacute;, trường hợp khiến ĐT Việt Nam bị loại l&agrave; tương đối hẹp. Cụ thể, \"Những chiến binh sao v&agrave;ng\"&nbsp;thua Myanmar, c&ograve;n Indonesia thắng Philippines, l&uacute;c n&agrave;y&nbsp;bảng B xuất hiện 3 đội c&oacute; c&ugrave;ng 7 điểm (Việt Nam, Myanmar, Indonesia) v&agrave; ĐT Việt Nam sẽ dừng bước nếu c&oacute; chỉ số phụ k&eacute;m c&aacute;c đối thủ.&nbsp;</p>\r\n<p align=\"center\"><span style=\"aspect-ratio: 740 / 483; max-width: 653px;\"><img class=\"news-image loaded\" src=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/Truc-tiep-hop-bao-dT-Viet-Nam-dau-Myanmar-9-1734599164-897-width740height483-1734652240-539-width740height483.jpg\" alt=\"Nguyễn Xu&acirc;n Son sẽ c&oacute; trận ra mắt ĐT Việt Nam?\" data-original=\"https://icdn.24h.com.vn/upload/4-2024/images/2024-12-20/Truc-tiep-hop-bao-dT-Viet-Nam-dau-Myanmar-9-1734599164-897-width740height483-1734652240-539-width740height483.jpg\" data-was-processed=\"true\" /></span></p>\r\n<p class=\"img_chu_thich_0407\" align=\"center\">Nguyễn Xu&acirc;n Son sẽ c&oacute; trận ra mắt ĐT Việt Nam?</p>\r\n<p><strong>T&acirc;m điểm Nguyễn Xu&acirc;n Son</strong></p>\r\n<p>Nguyễn Xu&acirc;n Son chắc chắn sẽ trở th&agrave;nh t&acirc;m điểm ở cuộc họp b&aacute;o. Sau 3 trận ngồi kh&aacute;n đ&agrave;i do chưa đủ điều kiện về thời gian sinh sống ở Việt Nam theo quy định của FIFA, tiền đạo gốc Brazil&nbsp;đang khao kh&aacute;t&nbsp;ra s&acirc;n thi đấu trong m&agrave;u &aacute;o đội tuyển quốc gia.</p>\r\n<p>Đội trưởng Đỗ Duy Mạnh v&agrave; tiền đạo B&ugrave;i Vĩ H&agrave;o đều nhận định, sự g&oacute;p mặt của Xu&acirc;n Son ở trận đấu giữa ĐT Việt Nam v&agrave; Myanmar tới đ&acirc;y sẽ phần n&agrave;o gi&uacute;p đội nh&agrave; c&oacute; nhiều phương &aacute;n tấn c&ocirc;ng hơn. Bởi ở cuộc đối đầu với Philippines tối 18/12, HLV Kim Sang Sik đ&atilde; sử dụng cả 5 tiền đạo gồm Vĩ H&agrave;o, Thanh B&igrave;nh, Tiến Linh, Văn To&agrave;n v&agrave; Tuấn Hải nhưng kh&ocirc;ng mang lại hiệu quả</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `content`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'thân văn dũng', 'Ihone 12 pro', 2000, 1, NULL, NULL),
(2, 'dấy tên', 'Ihone 17 pro', 20009, 1, NULL, NULL),
(3, 'Phan Xuân CHinh', 'Ihone 13 pro', 4000, 1, NULL, NULL),
(4, 'Văn Thanh', 'Ihone 11 pro', 1000, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'thêm bài viết', NULL, NULL),
(2, 'xóa bài viết', NULL, NULL),
(3, 'thêm sản phẩm', NULL, NULL),
(4, 'xóa sản phẩm', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grend` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `grend`) VALUES
(1, 'thân văn dũng', 'dung123@gmail.com', NULL, '123456789', NULL, NULL, NULL, NULL),
(2, 'than van dung', 'dung123tl@gmail.com', NULL, '$2y$12$E6RNtE58P6jerXQVKKIG5.2R6fKLOg1xrRARiTe7LfxBAVXTDV3rW', NULL, NULL, NULL, NULL),
(3, 'phan xuan chinh', 'xuanchinh@gmail.com', NULL, '$2y$12$IK4ZffQ/.zqSrZZv5byA1u/D3M32Mt8F64XfwQoXrxdKxNHwQeZRS', NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `featured_images`
--
ALTER TABLE `featured_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_images_post_id_foreign` (`post_id`);

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
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `featured_images`
--
ALTER TABLE `featured_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `featured_images`
--
ALTER TABLE `featured_images`
  ADD CONSTRAINT `featured_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
