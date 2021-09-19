-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 09:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$216000$gM3HHKlpzn19$D7XFWXg8mAnbNMU52pxY17QAc+8nMlLOfD8/5Iws+x8=', 'anurag', 'kumar', 'anurag', 'anuragk5132@gmail.com', '', '2021-09-17 06:44:04.416858', '2021-09-17 06:44:04.416858', 1, 1, 1, 1),
(3, 'pbkdf2_sha256$216000$avSWURVm5Kf0$ovglfxa6QDey+vFcp9CCDE0P28+9EVeC42f+kahaubk=', 'akash', 'verma', 'akash', 'learntoearngirl@gmail.com', '', '2021-09-17 06:59:01.481532', '2021-09-17 06:59:01.481532', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` int(11) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `address_line_2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_honeypot_loginattempt`
--

CREATE TABLE `admin_honeypot_loginattempt` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `session_key` varchar(50) DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `path` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add user profile', 8, 'add_userprofile'),
(30, 'Can change user profile', 8, 'change_userprofile'),
(31, 'Can delete user profile', 8, 'delete_userprofile'),
(32, 'Can view user profile', 8, 'view_userprofile'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add variation', 10, 'add_variation'),
(38, 'Can change variation', 10, 'change_variation'),
(39, 'Can delete variation', 10, 'delete_variation'),
(40, 'Can view variation', 10, 'view_variation'),
(41, 'Can add review rating', 11, 'add_reviewrating'),
(42, 'Can change review rating', 11, 'change_reviewrating'),
(43, 'Can delete review rating', 11, 'delete_reviewrating'),
(44, 'Can view review rating', 11, 'view_reviewrating'),
(45, 'Can add productgallery', 12, 'add_productgallery'),
(46, 'Can change productgallery', 12, 'change_productgallery'),
(47, 'Can delete productgallery', 12, 'delete_productgallery'),
(48, 'Can view productgallery', 12, 'view_productgallery'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add cart item', 14, 'add_cartitem'),
(54, 'Can change cart item', 14, 'change_cartitem'),
(55, 'Can delete cart item', 14, 'delete_cartitem'),
(56, 'Can view cart item', 14, 'view_cartitem'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add order product', 17, 'add_orderproduct'),
(66, 'Can change order product', 17, 'change_orderproduct'),
(67, 'Can delete order product', 17, 'delete_orderproduct'),
(68, 'Can view order product', 17, 'view_orderproduct'),
(69, 'Can add login attempt', 18, 'add_loginattempt'),
(70, 'Can change login attempt', 18, 'change_loginattempt'),
(71, 'Can delete login attempt', 18, 'delete_loginattempt'),
(72, 'Can view login attempt', 18, 'view_loginattempt');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem_variations`
--

CREATE TABLE `carts_cartitem_variations` (
  `id` int(11) NOT NULL,
  `cartitem_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `cat_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'account'),
(8, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(18, 'admin_honeypot', 'loginattempt'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(13, 'carts', 'cart'),
(14, 'carts', 'cartitem'),
(6, 'category', 'category'),
(4, 'contenttypes', 'contenttype'),
(15, 'orders', 'order'),
(17, 'orders', 'orderproduct'),
(16, 'orders', 'payment'),
(5, 'sessions', 'session'),
(9, 'store', 'product'),
(12, 'store', 'productgallery'),
(11, 'store', 'reviewrating'),
(10, 'store', 'variation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2021-09-17 06:43:01.983319'),
(2, 'accounts', '0002_userprofile', '2021-09-17 06:43:02.056934'),
(3, 'accounts', '0003_auto_20210322_0422', '2021-09-17 06:43:02.133394'),
(4, 'accounts', '0004_auto_20210917_0019', '2021-09-17 06:43:02.137765'),
(5, 'contenttypes', '0001_initial', '2021-09-17 06:43:02.177029'),
(6, 'admin', '0001_initial', '2021-09-17 06:43:02.203053'),
(7, 'admin', '0002_logentry_remove_auto_add', '2021-09-17 06:43:02.311266'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-17 06:43:02.318359'),
(9, 'admin_honeypot', '0001_initial', '2021-09-17 06:43:02.341377'),
(10, 'admin_honeypot', '0002_auto_20160208_0854', '2021-09-17 06:43:02.395806'),
(11, 'contenttypes', '0002_remove_content_type_name', '2021-09-17 06:43:02.455024'),
(12, 'auth', '0001_initial', '2021-09-17 06:43:02.526386'),
(13, 'auth', '0002_alter_permission_name_max_length', '2021-09-17 06:43:02.759717'),
(14, 'auth', '0003_alter_user_email_max_length', '2021-09-17 06:43:02.766671'),
(15, 'auth', '0004_alter_user_username_opts', '2021-09-17 06:43:02.774236'),
(16, 'auth', '0005_alter_user_last_login_null', '2021-09-17 06:43:02.781220'),
(17, 'auth', '0006_require_contenttypes_0002', '2021-09-17 06:43:02.784239'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2021-09-17 06:43:02.791193'),
(19, 'auth', '0008_alter_user_username_max_length', '2021-09-17 06:43:02.797223'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2021-09-17 06:43:02.804099'),
(21, 'auth', '0010_alter_group_name_max_length', '2021-09-17 06:43:02.821012'),
(22, 'auth', '0011_update_proxy_permissions', '2021-09-17 06:43:02.831312'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2021-09-17 06:43:02.837580'),
(24, 'category', '0001_initial', '2021-09-17 06:43:02.865303'),
(25, 'category', '0002_auto_20201006_0125', '2021-09-17 06:43:02.870649'),
(26, 'store', '0001_initial', '2021-09-17 06:43:02.904438'),
(27, 'store', '0002_variation', '2021-09-17 06:43:02.981957'),
(28, 'carts', '0001_initial', '2021-09-17 06:43:03.071070'),
(29, 'carts', '0002_cartitem_variations', '2021-09-17 06:43:03.249510'),
(30, 'carts', '0003_auto_20210308_1648', '2021-09-17 06:43:03.578153'),
(31, 'orders', '0001_initial', '2021-09-17 06:43:03.796251'),
(32, 'orders', '0002_auto_20210313_0211', '2021-09-17 06:43:04.151629'),
(33, 'orders', '0003_auto_20210313_0218', '2021-09-17 06:43:04.242666'),
(34, 'sessions', '0001_initial', '2021-09-17 06:43:04.373975'),
(35, 'store', '0003_reviewrating', '2021-09-17 06:43:04.428722'),
(36, 'store', '0004_productgallery', '2021-09-17 06:43:04.564113'),
(37, 'store', '0005_auto_20210321_0717', '2021-09-17 06:43:04.623476');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('433x6b9gqmvgufi9cr1ddvsfvo9evsbo', 'eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2MzE4NjIxNjUuMzU0NzQ1MX0:1mR7tV:50y688E2PxSGrdWBlfDwYoI3qEhGdhJ_OLSJNMQs8lM', '2021-10-01 07:02:45.446704');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_line_1` varchar(50) NOT NULL,
  `address_line_2` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct_variations`
--

CREATE TABLE `orders_orderproduct_variations` (
  `id` int(11) NOT NULL,
  `orderproduct_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_productgallery`
--

CREATE TABLE `store_productgallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_variation`
--

CREATE TABLE `store_variation` (
  `id` int(11) NOT NULL,
  `variation_category` varchar(100) NOT NULL,
  `variation_value` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`);

--
-- Indexes for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  ADD KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_payment_id_46928ccc_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderproduct_vari_orderproduct_id_variatio_8c028ee7_uniq` (`orderproduct_id`,`variation_id`),
  ADD KEY `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` (`variation_id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_category_category_id` (`category_id`);

--
-- Indexes for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_productgallery_product_id_f2821a49_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_variation`
--
ALTER TABLE `store_variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  ADD CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_payment_id_46928ccc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD CONSTRAINT `orders_orderproduct__orderproduct_id_0f116a3b_fk_orders_or` FOREIGN KEY (`orderproduct_id`) REFERENCES `orders_orderproduct` (`id`),
  ADD CONSTRAINT `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD CONSTRAINT `store_productgallery_product_id_f2821a49_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
