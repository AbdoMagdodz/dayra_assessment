-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2021 at 12:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dayra`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Abdelrahman Magdy', '01114988158', 'abdomagdodz@gmail.com', '2021-11-25 19:41:49', '2021-11-25 19:41:49'),
(2, 'Abdelrahman Magdy', '01114988158', 'abdomagdodz1@gmail.com', '2021-11-25 19:46:04', '2021-11-25 19:46:04'),
(3, 'Abdelrahman Magdy', '01114988159', 'abdomagdodz2@gmail.com', '2021-11-25 21:14:48', '2021-11-25 21:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `amount`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 1, '11.20', '2020-10-01', '2021-11-25 19:45:45', '2021-11-25 19:45:45'),
(2, 1, '11.20', '2020-10-01', '2021-11-25 19:45:55', '2021-11-25 19:45:55'),
(3, 2, '11.20', '2020-10-01', '2021-11-25 19:46:04', '2021-11-25 19:46:04'),
(4, 1, '11.20', '2020-10-01', '2021-11-25 20:25:34', '2021-11-25 20:25:34'),
(5, 1, '11.20', '2020-10-01', '2021-11-25 20:25:51', '2021-11-25 20:25:51'),
(6, 1, '11.20', '2020-10-01', '2021-11-25 20:26:48', '2021-11-25 20:26:48'),
(7, 1, '11.20', '2020-10-01', '2021-11-25 20:27:04', '2021-11-25 20:27:04'),
(8, 1, '11.20', '2020-10-01', '2021-11-25 20:27:22', '2021-11-25 20:27:22'),
(9, 1, '11.20', '2020-10-01', '2021-11-25 20:27:35', '2021-11-25 20:27:35'),
(10, 1, '11.20', '2020-10-01', '2021-11-25 20:28:12', '2021-11-25 20:28:12'),
(11, 1, '11.20', '2020-10-01', '2021-11-25 20:28:38', '2021-11-25 20:28:38'),
(12, 1, '11.20', '2020-10-01', '2021-11-25 20:29:35', '2021-11-25 20:29:35'),
(13, 1, '11.20', '2020-10-01', '2021-11-25 20:29:49', '2021-11-25 20:29:49'),
(14, 1, '11.20', '2020-10-01', '2021-11-25 20:30:25', '2021-11-25 20:30:25'),
(15, 1, '11.20', '2020-10-01', '2021-11-25 20:43:24', '2021-11-25 20:43:24'),
(16, 1, '11.20', '2020-10-01', '2021-11-25 20:43:57', '2021-11-25 20:43:57'),
(17, 1, '11.20', '2020-10-01', '2021-11-25 20:45:15', '2021-11-25 20:45:15'),
(18, 1, '11.20', '2020-10-01', '2021-11-25 20:45:42', '2021-11-25 20:45:42'),
(19, 1, '11.20', '2020-10-01', '2021-11-25 20:47:55', '2021-11-25 20:47:55'),
(20, 1, '11.20', '2020-10-01', '2021-11-25 20:48:21', '2021-11-25 20:48:21'),
(21, 1, '11.20', '2020-10-01', '2021-11-25 20:48:49', '2021-11-25 20:48:49'),
(22, 1, '11.20', '2020-10-01', '2021-11-25 20:51:40', '2021-11-25 20:51:40'),
(23, 1, '11.20', '2020-10-01', '2021-11-25 20:54:57', '2021-11-25 20:54:57'),
(24, 1, '11.20', '2020-10-01', '2021-11-25 20:56:37', '2021-11-25 20:56:37'),
(25, 1, '11.20', '2020-10-01', '2021-11-25 20:57:32', '2021-11-25 20:57:32'),
(26, 1, '11.20', '2020-10-01', '2021-11-25 20:57:44', '2021-11-25 20:57:44'),
(27, 1, '11.20', '2020-10-01', '2021-11-25 20:59:04', '2021-11-25 20:59:04'),
(28, 1, '11.20', '2020-10-01', '2021-11-25 21:00:12', '2021-11-25 21:00:12'),
(29, 1, '11.20', '2020-10-01', '2021-11-25 21:01:44', '2021-11-25 21:01:44'),
(30, 1, '11.20', '2020-10-01', '2021-11-25 21:02:52', '2021-11-25 21:02:52'),
(31, 1, '11.20', '2020-10-01', '2021-11-25 21:03:32', '2021-11-25 21:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_25_142557_create_clients_table', 1),
(5, '2021_11_25_143135_create_invoices_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(9, '2016_06_01_000004_create_oauth_clients_table', 2),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2f5c8ebf7dc4fb5954a0a2d5a0e7578b28cedabb98597d20741a574a83ff732c1c3428f47266c25c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:20:58', '2021-11-25 18:20:58', '2022-11-25 20:20:58'),
('41d33f4d180fe9499468f9cf1fce31271b63d52b67c9e41d9035e5626bc8b01fbc2e5bb87194fb0f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:23:29', '2021-11-25 18:23:29', '2022-11-25 20:23:29'),
('4baf2c2d84a88cbd1a4fae84b6af2028cf897c83d4cb3520b872b701ab0f214fa7feee5710bc31ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:40:42', '2021-11-25 18:40:42', '2022-11-25 20:40:42'),
('5bac8f67c9ec6e2bf44a65916425fcb2fd5beaf562b0cc5464ca47940f676f5e0b8178900c229426', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:23:27', '2021-11-25 18:23:27', '2022-11-25 20:23:27'),
('79e368ba0c40123df6ba16f4c930aaf2735d012ee07e5e278b88ce3cd8d07f314db887b47fa64239', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 21:16:16', '2021-11-25 21:16:16', '2022-11-25 23:16:16'),
('820ddb244317a211c40aa6253523d8f95e98a63e83a0b256739baee52a34060c56554433ee9eceda', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 19:31:49', '2021-11-25 19:31:49', '2022-11-25 21:31:49'),
('a69e6abd1c59875b64f0769e4d4c1c1e6f50d89a40d984a1483164a091216596b93a9f18314aa9fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:20:55', '2021-11-25 18:20:55', '2022-11-25 20:20:55'),
('b0656cfe24544ce9d06869c00bef2afb10152fb1d3c4c69f5629a998c12344da5c4f7659c3b11c7c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:47:07', '2021-11-25 18:47:07', '2022-11-25 20:47:07'),
('b1170cacdcc8596645bfa27538eece658563effbc482609931b126c0e6ba86b4155ecc1274f3be5c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 17:26:51', '2021-11-25 17:26:51', '2022-11-25 19:26:51'),
('d28fc8278aa272ab55d46fdb0e1f4faf09b775d0e8090ecacc3be8f4c41bcac53f98a526d78bf361', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:44:27', '2021-11-25 18:44:27', '2022-11-25 20:44:27'),
('d5047e66cbfcb371d8b51bb0909f92657ae42418696b57a3a16d99d2f2aae097cf82702eda07b82d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:44:25', '2021-11-25 18:44:25', '2022-11-25 20:44:25'),
('fd7749a3a92ded8c460ba63930ef48d7b16fb0010cec481cd598b61dcf5e9ccbc9deba8ed6cd8ece', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 18:21:02', '2021-11-25 18:21:02', '2022-11-25 20:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Q6XmdF9M5xmRTkVo1qOwT3hpOlp4S7sXncav45x1', NULL, 'http://localhost', 1, 0, 0, '2021-11-25 12:57:49', '2021-11-25 12:57:49'),
(2, NULL, 'Laravel Password Grant Client', 'om23zL0ctiJM8YdJWlGIy50oEqIE145UIoj8iJWB', 'users', 'http://localhost', 0, 1, 0, '2021-11-25 12:57:49', '2021-11-25 12:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-25 12:57:49', '2021-11-25 12:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@dayra.co', '2021-11-25 12:38:54', '$2y$10$WwZIsa.7vwSLz/iEc.PrHu4haPgkE.peoiAme9PqfuHvxWJeHrm6O', 'ORNdAYyqAI', '2021-11-25 12:38:54', '2021-11-25 12:38:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
