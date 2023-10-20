-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 06:26 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulieu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add nhanvien', 7, 'add_nhanvien'),
(26, 'Can change nhanvien', 7, 'change_nhanvien'),
(27, 'Can delete nhanvien', 7, 'delete_nhanvien'),
(28, 'Can view nhanvien', 7, 'view_nhanvien'),
(29, 'Can add hoadon', 8, 'add_hoadon'),
(30, 'Can change hoadon', 8, 'change_hoadon'),
(31, 'Can delete hoadon', 8, 'delete_hoadon'),
(32, 'Can view hoadon', 8, 'view_hoadon'),
(33, 'Can add loai', 9, 'add_loai'),
(34, 'Can change loai', 9, 'change_loai'),
(35, 'Can delete loai', 9, 'delete_loai'),
(36, 'Can view loai', 9, 'view_loai'),
(37, 'Can add chitiethoadon', 10, 'add_chitiethoadon'),
(38, 'Can change chitiethoadon', 10, 'change_chitiethoadon'),
(39, 'Can delete chitiethoadon', 10, 'delete_chitiethoadon'),
(40, 'Can view chitiethoadon', 10, 'view_chitiethoadon'),
(41, 'Can add hanghoa', 11, 'add_hanghoa'),
(42, 'Can change hanghoa', 11, 'change_hanghoa'),
(43, 'Can delete hanghoa', 11, 'delete_hanghoa'),
(44, 'Can view hanghoa', 11, 'view_hanghoa'),
(45, 'Can add khachhang', 12, 'add_khachhang'),
(46, 'Can change khachhang', 12, 'change_khachhang'),
(47, 'Can delete khachhang', 12, 'delete_khachhang'),
(48, 'Can view khachhang', 12, 'view_khachhang'),
(49, 'Can add ban', 13, 'add_ban'),
(50, 'Can change ban', 13, 'change_ban'),
(51, 'Can delete ban', 13, 'delete_ban'),
(52, 'Can view ban', 13, 'view_ban');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$7Dw8gIIa4XRdtaL1jd34DA$sebtpOZd7MHp1ifMuu0X5zQWJpEONNbN5G2XLx7Mga0=', '2022-12-04 17:23:20.992549', 1, 'nhutam', '', '', '', 1, 1, '2022-12-04 16:04:55.510757');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_ban`
--

CREATE TABLE `csdl_ban` (
  `id` bigint(20) NOT NULL,
  `Maban` varchar(5) NOT NULL,
  `SoChoNgoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_ban`
--

INSERT INTO `csdl_ban` (`id`, `Maban`, `SoChoNgoi`) VALUES
(1, '1', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_chitiethoadon`
--

CREATE TABLE `csdl_chitiethoadon` (
  `id` bigint(20) NOT NULL,
  `MaMaChiTietHoaDonHH` varchar(10) NOT NULL,
  `MaHD_id` bigint(20) NOT NULL,
  `MaHH_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_hanghoa`
--

CREATE TABLE `csdl_hanghoa` (
  `id` bigint(20) NOT NULL,
  `MaHH` varchar(10) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Maloai` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaLoai_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_hanghoa`
--

INSERT INTO `csdl_hanghoa` (`id`, `MaHH`, `DonGia`, `Maloai`, `SoLuong`, `MaLoai_id`) VALUES
(1, '12', 15000, '1', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_hoadon`
--

CREATE TABLE `csdl_hoadon` (
  `id` bigint(20) NOT NULL,
  `MaHD` varchar(10) NOT NULL,
  `NgayLap` date NOT NULL,
  `Tongtien` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaKH_id` bigint(20) NOT NULL,
  `MaNV_id` bigint(20) NOT NULL,
  `Maban_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_hoadon`
--

INSERT INTO `csdl_hoadon` (`id`, `MaHD`, `NgayLap`, `Tongtien`, `SoLuong`, `MaKH_id`, `MaNV_id`, `Maban_id`) VALUES
(2, '1212', '2022-12-04', 10000, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_khachhang`
--

CREATE TABLE `csdl_khachhang` (
  `id` bigint(20) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `SoDT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_khachhang`
--

INSERT INTO `csdl_khachhang` (`id`, `MaKH`, `TenKH`, `SoDT`) VALUES
(1, '01', 'Nguyễn Văn Ánh', '086266222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_loai`
--

CREATE TABLE `csdl_loai` (
  `id` bigint(20) NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_loai`
--

INSERT INTO `csdl_loai` (`id`, `MaLoai`, `TenLoai`) VALUES
(1, '1', 'Hải Sản'),
(2, '2', 'Đồ uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_nhanvien`
--

CREATE TABLE `csdl_nhanvien` (
  `id` bigint(20) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `SoDT` varchar(11) NOT NULL,
  `ChucVu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `csdl_nhanvien`
--

INSERT INTO `csdl_nhanvien` (`id`, `MaNV`, `TenNV`, `SoDT`, `ChucVu`) VALUES
(1, 123, 'Nguyễn Như Tâm', '012', 'Nhân viên'),
(2, 3, 'Ánh', '013132', 'Quản lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-04 16:25:59.540497', '1', 'LOAI object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-12-04 16:26:11.730958', '2', 'LOAI object (2)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2022-12-04 16:26:53.459974', '1', 'NHANVIEN object (1)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-12-04 16:29:05.947418', '1', 'HANGHOA object (1)', 1, '[{\"added\": {}}]', 11, 1),
(5, '2022-12-04 16:29:20.354723', '1', 'BAN object (1)', 1, '[{\"added\": {}}]', 13, 1),
(6, '2022-12-04 16:30:06.425460', '1', 'KHACHHANG object (1)', 1, '[{\"added\": {}}]', 12, 1),
(7, '2022-12-04 16:30:10.467619', '1', 'HOADON object (1)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-12-04 16:31:15.764112', '1', 'CHITIETHOADON object (1)', 1, '[{\"added\": {}}]', 10, 1),
(9, '2022-12-04 16:43:05.625047', '2', 'HOADON object (2)', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-12-04 16:43:16.362218', '1', 'HOADON object (1)', 3, '', 8, 1),
(11, '2022-12-04 16:49:29.655245', '1', 'NHANVIEN object (1)', 2, '[{\"changed\": {\"fields\": [\"ChucVu\"]}}]', 7, 1),
(12, '2022-12-04 17:10:49.740337', '2', 'NHANVIEN object (2)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'csdl', 'ban'),
(10, 'csdl', 'chitiethoadon'),
(11, 'csdl', 'hanghoa'),
(8, 'csdl', 'hoadon'),
(12, 'csdl', 'khachhang'),
(9, 'csdl', 'loai'),
(7, 'csdl', 'nhanvien'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-04 16:02:51.449195'),
(2, 'auth', '0001_initial', '2022-12-04 16:02:51.703923'),
(3, 'admin', '0001_initial', '2022-12-04 16:02:51.762573'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-04 16:02:51.769518'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-04 16:02:51.776867'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-04 16:02:51.813227'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-04 16:02:51.836919'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-04 16:02:51.848270'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-04 16:02:51.854592'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-04 16:02:51.878344'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-04 16:02:51.881821'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-04 16:02:51.888459'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-04 16:02:51.899294'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-04 16:02:51.911664'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-04 16:02:51.924057'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-04 16:02:51.929522'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-04 16:02:51.940852'),
(18, 'sessions', '0001_initial', '2022-12-04 16:02:51.955303'),
(19, 'csdl', '0001_initial', '2022-12-04 16:03:28.217953'),
(20, 'csdl', '0002_alter_hoadon_ngaylap_alter_hoadon_soluong', '2022-12-04 17:06:22.276765');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `csdl_ban`
--
ALTER TABLE `csdl_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `csdl_chitiethoadon`
--
ALTER TABLE `csdl_chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csdl_chitiethoadon_MaHD_id_553cae67_fk_csdl_hoadon_id` (`MaHD_id`),
  ADD KEY `csdl_chitiethoadon_MaHH_id_f363510f_fk_csdl_hanghoa_id` (`MaHH_id`);

--
-- Chỉ mục cho bảng `csdl_hanghoa`
--
ALTER TABLE `csdl_hanghoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csdl_hanghoa_MaLoai_id_2d8e1bc7_fk_csdl_loai_id` (`MaLoai_id`);

--
-- Chỉ mục cho bảng `csdl_hoadon`
--
ALTER TABLE `csdl_hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csdl_hoadon_MaKH_id_d371690d_fk_csdl_khachhang_id` (`MaKH_id`),
  ADD KEY `csdl_hoadon_MaNV_id_a5391066_fk_csdl_nhanvien_id` (`MaNV_id`),
  ADD KEY `csdl_hoadon_Maban_id_267f3bdd_fk_csdl_ban_id` (`Maban_id`);

--
-- Chỉ mục cho bảng `csdl_khachhang`
--
ALTER TABLE `csdl_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `csdl_loai`
--
ALTER TABLE `csdl_loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `csdl_nhanvien`
--
ALTER TABLE `csdl_nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `csdl_ban`
--
ALTER TABLE `csdl_ban`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `csdl_chitiethoadon`
--
ALTER TABLE `csdl_chitiethoadon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `csdl_hanghoa`
--
ALTER TABLE `csdl_hanghoa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `csdl_hoadon`
--
ALTER TABLE `csdl_hoadon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `csdl_khachhang`
--
ALTER TABLE `csdl_khachhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `csdl_loai`
--
ALTER TABLE `csdl_loai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `csdl_nhanvien`
--
ALTER TABLE `csdl_nhanvien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `csdl_chitiethoadon`
--
ALTER TABLE `csdl_chitiethoadon`
  ADD CONSTRAINT `csdl_chitiethoadon_MaHD_id_553cae67_fk_csdl_hoadon_id` FOREIGN KEY (`MaHD_id`) REFERENCES `csdl_hoadon` (`id`),
  ADD CONSTRAINT `csdl_chitiethoadon_MaHH_id_f363510f_fk_csdl_hanghoa_id` FOREIGN KEY (`MaHH_id`) REFERENCES `csdl_hanghoa` (`id`);

--
-- Các ràng buộc cho bảng `csdl_hanghoa`
--
ALTER TABLE `csdl_hanghoa`
  ADD CONSTRAINT `csdl_hanghoa_MaLoai_id_2d8e1bc7_fk_csdl_loai_id` FOREIGN KEY (`MaLoai_id`) REFERENCES `csdl_loai` (`id`);

--
-- Các ràng buộc cho bảng `csdl_hoadon`
--
ALTER TABLE `csdl_hoadon`
  ADD CONSTRAINT `csdl_hoadon_MaKH_id_d371690d_fk_csdl_khachhang_id` FOREIGN KEY (`MaKH_id`) REFERENCES `csdl_khachhang` (`id`),
  ADD CONSTRAINT `csdl_hoadon_MaNV_id_a5391066_fk_csdl_nhanvien_id` FOREIGN KEY (`MaNV_id`) REFERENCES `csdl_nhanvien` (`id`),
  ADD CONSTRAINT `csdl_hoadon_Maban_id_267f3bdd_fk_csdl_ban_id` FOREIGN KEY (`Maban_id`) REFERENCES `csdl_ban` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
