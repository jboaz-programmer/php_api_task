-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2023 at 09:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `favorite` int(11) NOT NULL DEFAULT 1,
  `like_count` int(11) NOT NULL DEFAULT 1,
  `book_status` varchar(255) NOT NULL,
  `book_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `book_name`, `book_title`, `author`, `favorite`, `like_count`, `book_status`, `book_type`) VALUES
(1, '2023-01-22 17:29:12', '2023-01-24 16:06:07', 'HWDs', 'Hawa the buss Driver Book', 'ngugi', 1, 1, 'sold out', 'Novels'),
(5, '2023-01-22 19:30:41', '2023-01-24 06:53:39', 'mbara', 'mabara the farmer', 'ngugi wathiongo', 1, 1, 'available', 'plot'),
(7, '2023-01-23 15:09:10', '2023-01-23 15:09:31', 'HWDs', 'Hawa the buss Driver Book', 'ngugi', 1, 0, 'sold out', 'Novel'),
(8, '2023-01-23 21:59:06', '2023-01-23 21:59:06', 'BKN', 'Music Book', 'Shigongo', 1, 0, 'available', 'Play'),
(9, '2023-01-23 22:12:55', '2023-01-23 22:12:55', 'BKN', 'i must i will i can', 'Dr mengi', 1, 0, 'available', 'Novel'),
(10, '2023-01-24 06:31:43', '2023-01-24 06:31:43', 'BKN', 'My life', 'Shigongo Erick', 1, 0, 'available', 'play'),
(11, '2023-01-24 17:12:46', '2023-01-24 17:12:46', 'BKN', 'Eat that Frog', 'Dr Ell', 1, 1, 'available', 'Play');

-- --------------------------------------------------------

--
-- Table structure for table `comment_tables`
--

CREATE TABLE `comment_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_22_115217_create_posts_table', 2),
(6, '2023_01_22_130651_create_userdatas_table', 3),
(7, '2023_01_22_201038_create_books_table', 4),
(8, '2023_01_24_054417_add_mobile_to_user', 5),
(9, '2023_01_24_054514_add_sex_to_user', 5),
(10, '2023_01_24_175043_create_comment_tables_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', 'e53b823708925ff731b10ffb4c1c2e25a4a06a8239a55af753f0429b43740b76', '[\"*\"]', NULL, NULL, '2023-01-23 10:08:28', '2023-01-23 10:08:28'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', '37c3a52f6d69bea6d17f3c3749e9e9e5d21b9df1f8d7614997150f1e61661b8e', '[\"*\"]', NULL, NULL, '2023-01-23 10:09:44', '2023-01-23 10:09:44'),
(3, 'App\\Models\\User', 1, 'Personal Access Token', '5068a717cc3d88f99950b25c36970a8a2b81b34ec5f9d62aab2862bf0d7bea17', '[\"*\"]', NULL, NULL, '2023-01-23 10:10:12', '2023-01-23 10:10:12'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', 'd3bd3eb081dc7dfcdc3d7374cf2171db7dcd7ce2d4f92c32a144efd4582dcbb0', '[\"*\"]', NULL, NULL, '2023-01-23 10:11:18', '2023-01-23 10:11:18'),
(5, 'App\\Models\\User', 1, 'Personal Access Token', 'd4db2a1b9c5bedf02c2ef1d699b21a0d75092d165241b853af10f5522293d668', '[\"*\"]', NULL, NULL, '2023-01-23 10:13:55', '2023-01-23 10:13:55'),
(6, 'App\\Models\\User', 1, 'Personal Access Token', 'b4741dd2f8715c8cdb61f540d894ee0cb1a15872fa26f3f2f8720596908c5343', '[\"*\"]', NULL, NULL, '2023-01-23 10:15:49', '2023-01-23 10:15:49'),
(7, 'App\\Models\\User', 1, 'Personal Access Token', '8fcdb7bba9f0f1fe9b11a56b16caa0bcdcbc58f194fc08e4169ca937d6edf4a4', '[\"*\"]', NULL, NULL, '2023-01-23 10:17:32', '2023-01-23 10:17:32'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', 'e0c6e045d0d438347b52b0f8443c235ddd1b6089b4eb0d75598f2ad57af4ca1c', '[\"*\"]', NULL, NULL, '2023-01-23 10:20:02', '2023-01-23 10:20:02'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', '1b81e59f63da5a423b215b5708b42e5ce88b31ee841f88daf6b71df4776c8051', '[\"*\"]', NULL, NULL, '2023-01-23 10:20:32', '2023-01-23 10:20:32'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', '21283f80c807aff1984feb17eac5bd284af063d02886ab3a043690e157b46882', '[\"*\"]', NULL, NULL, '2023-01-23 10:22:40', '2023-01-23 10:22:40'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', 'c22bcd415864e0b136c133597741299a6ad2200546466e60f955f83a4d11a8ff', '[\"*\"]', NULL, NULL, '2023-01-23 10:23:10', '2023-01-23 10:23:10'),
(12, 'App\\Models\\User', 1, 'Personal Access Token', '84d221cc763591c258fe4bc5d1f5c88740c764c433037ab1e6dbb99ae50a1f4e', '[\"*\"]', NULL, NULL, '2023-01-23 10:28:34', '2023-01-23 10:28:34'),
(13, 'App\\Models\\User', 1, 'Personal Access Token', 'e98c4b7c025a28d90e20f0f36647d57c13153a6fc4f54432ae4bd3aa69c0f28e', '[\"*\"]', NULL, NULL, '2023-01-23 10:33:34', '2023-01-23 10:33:34'),
(14, 'App\\Models\\User', 1, 'Personal Access Token', 'b493815ef977ad215dac768e924c483061091fce2794601ded39b3601a398db1', '[\"*\"]', NULL, NULL, '2023-01-23 10:38:09', '2023-01-23 10:38:09'),
(15, 'App\\Models\\User', 1, 'Personal Access Token', 'eb79b236991a8c74395d95a796a56765599645afce502bfeff44df3bc883b659', '[\"*\"]', NULL, NULL, '2023-01-23 10:38:26', '2023-01-23 10:38:26'),
(16, 'App\\Models\\User', 1, 'Personal Access Token', '151180b1b387a397372088cef88521ab844626faf8be9d4d804c7068424a765a', '[\"*\"]', NULL, NULL, '2023-01-23 10:38:57', '2023-01-23 10:38:57'),
(17, 'App\\Models\\User', 1, 'Personal Access Token', '9db0ed7b9ba306430c37be762b271d01a545c1a2ad2875df3832d1aa435c117b', '[\"*\"]', NULL, NULL, '2023-01-23 10:43:04', '2023-01-23 10:43:04'),
(18, 'App\\Models\\User', 1, 'Personal Access Token', '0acf52d5dc75189053387e19da08ba0d2ba221516cd3bade679811e8b04f311a', '[\"*\"]', NULL, NULL, '2023-01-23 10:48:00', '2023-01-23 10:48:00'),
(19, 'App\\Models\\User', 1, 'Personal', '6cfd210746c3d4164a7b8b9e888bb78d2701dc441249480b8b93d081a3065c48', '[\"*\"]', NULL, NULL, '2023-01-23 10:49:57', '2023-01-23 10:49:57'),
(20, 'App\\Models\\User', 1, 'API TOKEN', '961d5cfe87644b94f5d5b9cfb96fac582903e9fe37d47408f1a15a031bb0df73', '[\"*\"]', NULL, NULL, '2023-01-23 11:00:34', '2023-01-23 11:00:34'),
(21, 'App\\Models\\User', 1, 'API TOKEN', '79c6a347007d7e9b262e895ad45bd9180350189543f82fc84797d919b25992bd', '[\"*\"]', NULL, NULL, '2023-01-23 11:07:22', '2023-01-23 11:07:22'),
(22, 'App\\Models\\User', 2, 'API TOKEN', '00128058a5e5c2fe2208be2c32bf8c954ae5c4dde7e4d859fa14d2e06ac88678', '[\"*\"]', NULL, NULL, '2023-01-23 11:08:18', '2023-01-23 11:08:18'),
(23, 'App\\Models\\User', 2, 'API TOKEN', '5e0bd4d11c2bb617a4d544b2c8cc0d76c9ea596e13bd3813f56de1eb6a426095', '[\"*\"]', NULL, NULL, '2023-01-23 14:44:33', '2023-01-23 14:44:33'),
(24, 'App\\Models\\User', 3, 'API TOKEN', '113a2e00c0316d7714f3aeff4e033b56b1816e430c67bc9418fb0ada0f9cf36c', '[\"*\"]', NULL, NULL, '2023-01-23 15:05:20', '2023-01-23 15:05:20'),
(25, 'App\\Models\\User', 3, 'API TOKEN', '51db97eaba7fa5263e897bf9524faf42d15ad116329e6fd4a1a522f3eed6f184', '[\"*\"]', NULL, NULL, '2023-01-24 07:00:21', '2023-01-24 07:00:21'),
(26, 'App\\Models\\User', 3, 'API TOKEN', '060be3fa7e3b94589117475af87ec711b2ba8bd555283e24fff7d6039b7e3b22', '[\"*\"]', NULL, NULL, '2023-01-24 09:30:21', '2023-01-24 09:30:21'),
(27, 'App\\Models\\User', 3, 'API TOKEN', '061179b0749f1049a2c37d89ce1edef4b120f7b52cdaf91e8cc3b03421e22ce3', '[\"*\"]', NULL, NULL, '2023-01-24 09:31:53', '2023-01-24 09:31:53'),
(28, 'App\\Models\\User', 3, 'API TOKEN', '779f48f5eb9afeb11d8dc89b08a4e87c54eaf59c270a3038ad92435a7ec857ac', '[\"*\"]', NULL, NULL, '2023-01-24 09:34:22', '2023-01-24 09:34:22'),
(29, 'App\\Models\\User', 3, 'API TOKEN', '0e51997ec2767ff1671626eb960a42bfc0352476a74c20c8c1951f31db6f8035', '[\"*\"]', NULL, NULL, '2023-01-24 09:35:45', '2023-01-24 09:35:45'),
(30, 'App\\Models\\User', 3, 'API TOKEN', '8658c5987d03711b4734b9a1605a80bfc14957b61c864d6fc869529cc408f5b3', '[\"*\"]', NULL, NULL, '2023-01-24 09:40:01', '2023-01-24 09:40:01'),
(31, 'App\\Models\\User', 3, 'API TOKEN', '6224e9c0b5269fb4ba286dc22e28819972a79c1f5f12c1b413976dba0534ece0', '[\"*\"]', NULL, NULL, '2023-01-24 09:47:50', '2023-01-24 09:47:50'),
(32, 'App\\Models\\User', 3, 'API TOKEN', '7ceeafeda81b5617f3a4846955fa2722a9d9bed8d665cd283ebaa8bd129b4f75', '[\"*\"]', NULL, NULL, '2023-01-24 09:55:06', '2023-01-24 09:55:06'),
(33, 'App\\Models\\User', 3, 'API TOKEN', '1d9a623330ffca2b7d6f41de46ae7ed8b6928ea93f541d0a67f2af7d386ff655', '[\"*\"]', NULL, NULL, '2023-01-24 10:04:33', '2023-01-24 10:04:33'),
(34, 'App\\Models\\User', 3, 'API TOKEN', '6a44d2068a6581667484b36c8b3d71aaf16d41c7ba991c1e9fb3530116dd1e02', '[\"*\"]', NULL, NULL, '2023-01-24 10:04:42', '2023-01-24 10:04:42'),
(35, 'App\\Models\\User', 3, 'API TOKEN', '24cbaa8161f696cf9af99484435cd1db7ebdb7817ca871fb65964207c23471ad', '[\"*\"]', NULL, NULL, '2023-01-24 10:56:01', '2023-01-24 10:56:01'),
(36, 'App\\Models\\User', 3, 'API TOKEN', '35106ac79cc817b6da268f6311b24e6780dc15e025bdab2b1b9eb1784933594c', '[\"*\"]', NULL, NULL, '2023-01-24 10:58:39', '2023-01-24 10:58:39'),
(37, 'App\\Models\\User', 3, 'API TOKEN', 'ba644ef81b36127b4c4aabbe7a0dc5564f983251597b322f3e94939d2a08b4c7', '[\"*\"]', NULL, NULL, '2023-01-24 11:25:29', '2023-01-24 11:25:29'),
(38, 'App\\Models\\User', 3, 'API TOKEN', '839fc0aa5175e3487296c67bdb20ae1302488d69a3ac7897bee6cd90ee9f9afd', '[\"*\"]', NULL, NULL, '2023-01-24 11:28:35', '2023-01-24 11:28:35'),
(39, 'App\\Models\\User', 3, 'API TOKEN', 'a85e08aacfbec6f829f5e2148caee9e74eac5448489062beb3908e311c20f6b7', '[\"*\"]', NULL, NULL, '2023-01-24 11:43:58', '2023-01-24 11:43:58'),
(40, 'App\\Models\\User', 3, 'API TOKEN', 'e770874339290af93beb398ecb65d9b9c4b0d4491d79b75b12bd6214547bd176', '[\"*\"]', NULL, NULL, '2023-01-24 11:44:11', '2023-01-24 11:44:11'),
(41, 'App\\Models\\User', 3, 'API TOKEN', '7110754d0bca2569eb9ec01ad1f5a5efea19a8cfb4369f35a533fbd2f2282678', '[\"*\"]', NULL, NULL, '2023-01-24 11:46:25', '2023-01-24 11:46:25'),
(42, 'App\\Models\\User', 3, 'API TOKEN', '13adbac7fab59f8d65c69358b0bc8afebd7e1a6020c1716989073c91d52cdd87', '[\"*\"]', NULL, NULL, '2023-01-24 11:47:49', '2023-01-24 11:47:49'),
(43, 'App\\Models\\User', 3, 'API TOKEN', '402b23e36d4788a986bbc2068a4e228f547befc78da268d659fc4955230a9c29', '[\"*\"]', NULL, NULL, '2023-01-24 14:54:40', '2023-01-24 14:54:40'),
(44, 'App\\Models\\User', 3, 'API TOKEN', 'b29d27cb0ebc8d20f436bcdf37d20217c291d13f90ab5c460d6c5ac2e95367a0', '[\"*\"]', NULL, NULL, '2023-01-24 14:55:56', '2023-01-24 14:55:56'),
(45, 'App\\Models\\User', 3, 'API TOKEN', '53bad423742ec6e251df2afd47ea1d026951867f7703829e93bbc7313a92e429', '[\"*\"]', NULL, NULL, '2023-01-24 15:49:33', '2023-01-24 15:49:33'),
(46, 'App\\Models\\User', 3, 'API TOKEN', 'c2fa1b90286326364bbb8439831e38c1ca92b394548c8ff464575d423c9050c9', '[\"*\"]', NULL, NULL, '2023-01-24 15:50:34', '2023-01-24 15:50:34'),
(47, 'App\\Models\\User', 3, 'API TOKEN', '0adec8436852578401c71b083b4ec9f20f018bec54f22f657373094425bb3146', '[\"*\"]', NULL, NULL, '2023-01-24 16:09:43', '2023-01-24 16:09:43'),
(48, 'App\\Models\\User', 3, 'API TOKEN', '1ba639a984685bb9d6975fe367d976261beab6e040f537131ee1b32b79ca2dc3', '[\"*\"]', NULL, NULL, '2023-01-24 16:19:26', '2023-01-24 16:19:26'),
(49, 'App\\Models\\User', 3, 'API TOKEN', 'c271c1afc3d9930d8ccde25fdc4d412b716272199ed975105cdee7a68035db2f', '[\"*\"]', NULL, NULL, '2023-01-24 16:44:16', '2023-01-24 16:44:16'),
(50, 'App\\Models\\User', 3, 'API TOKEN', 'f7be959dbc0b419b574ab861f02e16317fc4f91b519a59f83d8276c015fcf2ef', '[\"*\"]', NULL, NULL, '2023-01-24 16:50:18', '2023-01-24 16:50:18'),
(51, 'App\\Models\\User', 3, 'API TOKEN', 'f360ec3c08c0871dc22978c531a2ef3a74010e18e1408dd852040fc95af06ff4', '[\"*\"]', NULL, NULL, '2023-01-24 17:03:25', '2023-01-24 17:03:25'),
(52, 'App\\Models\\User', 3, 'API TOKEN', '47bbac467412f63d3bafb997985f07f263f4dd9bc210752944d0c5fca3e1e3aa', '[\"*\"]', NULL, NULL, '2023-01-24 17:10:25', '2023-01-24 17:10:25'),
(53, 'App\\Models\\User', 3, 'API TOKEN', '8c9b5f8911331255e089fd62a65a9b3d415e3eae8854ca813b81b116ce137b26', '[\"*\"]', NULL, NULL, '2023-01-24 17:12:01', '2023-01-24 17:12:01'),
(54, 'App\\Models\\User', 3, 'API TOKEN', '435b887f6a20643c797cf4627fdee868ec31c7399b6255cf174d3ab3cc68450c', '[\"*\"]', NULL, NULL, '2023-01-24 17:13:08', '2023-01-24 17:13:08'),
(55, 'App\\Models\\User', 3, 'API TOKEN', '619d4b7e62f9a9775e4ee7761ba7907482a6a4a272d951d349b0dcbc015d1131', '[\"*\"]', NULL, NULL, '2023-01-24 17:13:29', '2023-01-24 17:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdatas`
--

CREATE TABLE `userdatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userdatas`
--

INSERT INTO `userdatas` (`id`, `created_at`, `updated_at`, `username`, `mobile`, `password`, `email`) VALUES
(1, NULL, NULL, 'jimmy', '0787201920', '1234', ''),
(2, '2023-01-22 10:58:29', '2023-01-22 18:35:39', 'admin3', '0782101819', '123455', 'heriboaz@gmail.com'),
(3, '2023-01-22 11:09:43', '2023-01-22 11:09:43', 'admin2', '0782101819', '123455', 'jimmyboaz@gmail.com'),
(4, '2023-01-22 11:13:59', '2023-01-22 11:13:59', 'admin3', '0782101819', '123455', 'jamesboaz@gmail.com'),
(6, '2023-01-23 04:07:35', '2023-01-23 04:07:35', 'jimmyboaz', '07676267182', '123455', 'jimmy@gmail.com'),
(7, '2023-01-23 04:36:19', '2023-01-23 04:36:19', 'jimmyboaz', '07676267182', '$2y$10$M4FZMzGkPymZlo8fvCycr.UsdpxFMtj9O50cJdECanRt9vTosbB.m', 'jimmy@gmail.com'),
(8, '2023-01-23 05:32:27', '2023-01-23 05:32:27', 'goodluck b', '0672624287', '$2y$10$xoiaO8uoyPsRO9qR3oF2T.vHpSyEnbcetM7TrXu4qGxkacF.afuaa', 'goodluck@gmail.com'),
(9, '2023-01-23 05:33:37', '2023-01-23 05:33:37', 'inno', '0672624290', '$2y$10$5JrSIDPXbjW3WJq/091vsu2IFtkGeh5MMcaVFYHPyy/ZV/q1MseeW', 'inno@gmail.com'),
(10, '2023-01-23 07:08:22', '2023-01-23 07:08:22', 'kenny', '0788907654', '123455', 'mjomba@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `sex`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'jimmy kitema', 'jimmy@gmail.com', '', '', NULL, '$2y$10$w0JyuHEznB9RGaSPEN16IeUwe.d6A.wAfcGARMmLL9L.s61u44XqK', 'admin', NULL, '2023-01-23 15:04:46', '2023-01-23 15:04:46'),
(4, 'sadru kilimo', 'sadru@gmail.com', '', '', NULL, '$2y$10$wpPSRKjbJ2/9ZMhJRXPDy.qhXWSV8wTY46NF9CKBfEwisB2.Dk26G', 'user', NULL, '2023-01-24 03:19:53', '2023-01-24 03:19:53'),
(10, 'anthony ndowo', 'joachim@gmail.com', '0782819029', 'male', NULL, '$2y$10$i5E/KgqNLGiKPT2seObcAuLkb3MUlmpPccnoDbEzzYdLvQ8VUiQAa', 'user', NULL, '2023-01-24 05:27:01', '2023-01-24 05:40:06'),
(11, 'mohamed', 'mohamed@gmail.com', '0789291829', 'm', NULL, '$2y$10$qg.TJk24DnfErxKLLCFBueLNQsYdDhs5pOx.Cczig/u7YaU/Ze9ui', 'user', NULL, '2023-01-24 06:09:53', '2023-01-24 06:09:53'),
(12, 'mustapha', 'mustapha@gmail.com', '0767637283', 'male', NULL, '$2y$10$3qb5tcDHwXsLzaSwCmhjYuU49d9kqc2k.EkT0yiJCM6vL8zPaivmG', 'user', NULL, '2023-01-24 07:11:39', '2023-01-24 07:11:39'),
(13, 'joachim peter', 'magege@gmail.com', '0782819029', 'male', NULL, '$2y$10$YpU.j6tmc8VOg71NxSRnkuPHEX75lclEkb5uwSWXkmV2oVSm76F1e', 'user', NULL, '2023-01-24 16:38:52', '2023-01-24 16:38:52'),
(14, 'dizasta', 'dizasta@gmail.com', '0788990029', 'male', NULL, '$2y$10$/8cyt9tGFJADEABcDoAC9eISg35NlL2F3GsZDTE0ZKAj83nBiz8eO', 'user', NULL, '2023-01-24 16:41:55', '2023-01-24 16:41:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_tables`
--
ALTER TABLE `comment_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdatas`
--
ALTER TABLE `userdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comment_tables`
--
ALTER TABLE `comment_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userdatas`
--
ALTER TABLE `userdatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
