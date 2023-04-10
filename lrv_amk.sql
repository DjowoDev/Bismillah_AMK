-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 07:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrv_amk`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id` int(11) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jumlah_barang` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id`, `id_cabang`, `nama_cabang`, `alamat`, `jumlah_barang`, `created_at`, `updated_at`) VALUES
(1, 'CBG123', 'Cabang \"A\"', 'Peranan', 102, NULL, NULL),
(2, 'CBG540', 'Cabang \"B\"', 'Sidorejo', NULL, NULL, NULL),
(3, 'CBG660', 'Cabang \"C\"', 'Sukoharjo', NULL, NULL, NULL);

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
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fix_detail_order`
--

CREATE TABLE `fix_detail_order` (
  `id` int(11) NOT NULL,
  `id_transaction` int(11) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
('KTG1110', 'Sabun', '2023-04-07 17:01:00', '2023-04-07 17:00:00'),
('KTG150', 'Pewangi', '2023-04-07 19:00:00', '2023-04-07 19:00:00'),
('KTG1530', 'Pelicin Pakaian', '2023-04-07 19:00:00', '2023-04-07 19:00:00'),
('KTG1860', 'Cairan Kimia', '2023-04-07 19:00:00', '2023-04-07 19:00:00'),
('KTG2190', 'Sabun', '2022-08-14 19:47:09', '2022-08-14 19:47:09');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_09_023529_create_sessions_table', 1),
(7, '2022_08_09_044527_create_products_table', 1),
(8, '2022_08_10_035731_create_kategoris_table', 1),
(9, '2022_08_11_071212_create_satuans_table', 1),
(10, '2022_08_11_080151_create_cabangs_table', 1),
(11, '2022_08_11_095506_create_supliers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_cabang` varchar(30) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_barang`, `id_cabang`, `id_user`, `nama_barang`, `kategori`, `harga`, `jumlah`, `total`, `satuan`, `created_at`) VALUES
(539, 1039800, 'CBG123', '12', 'Superpel', 'Sabun', '22000', 2, 44000, 'BTL', '2023-04-08 08:56:11'),
(540, 12330, 'CBG123', '12', 'Sabun Cair Dapur', 'Sabun', '15000', 2, 30000, 'BTL', '2023-04-08 08:56:12'),
(541, 1797750, 'CBG123', '12', 'Pelicil Seltika', 'Pelicin Pakaian', '15000', 2, 30000, 'BTL', '2023-04-08 08:56:15'),
(542, 1942290, 'CBG123', '12', 'Alkohol 70%', 'Cairan Kimia', '1900000', 2, 3800000, 'Drem', '2023-04-08 08:56:17'),
(543, 2339280, 'CBG123', '12', 'Pewangi Seltika', 'Pewangi', '15000', 3, 45000, 'BTL', '2023-04-08 08:56:21');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `id_suplier` varchar(20) NOT NULL,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `barcode`, `nama_barang`, `gambar`, `kategori`, `harga_beli`, `harga_jual`, `profit`, `stok`, `satuan`, `id_cabang`, `keterangan`, `id_suplier`, `kode_penjualan`, `kode_pembelian`, `created_at`, `updated_at`) VALUES
('1039800', NULL, 'Superpel', NULL, 'Sabun', 15000, 22000, 7000, 100, 'BTL', 'CBG123', NULL, 'SPL630', '123', '321', '2023-04-08 01:54:14', '2023-04-08 01:54:14'),
('12330', NULL, 'Sabun Cair Dapur', NULL, 'Sabun', 10000, 15000, 5000, 100, 'BTL', 'CBG123', NULL, 'SPL630', '123', '321', '2023-04-08 01:53:07', '2023-04-08 01:53:07'),
('1797750', NULL, 'Pelicil Seltika', NULL, 'Pelicin Pakaian', 10000, 15000, 5000, 50, 'BTL', 'CBG123', NULL, 'SPL630', '123', '321', '2023-04-08 01:52:08', '2023-04-08 01:52:08'),
('1942290', NULL, 'Alkohol 70%', NULL, 'Cairan Kimia', 1500000, 1900000, 400000, 10, 'Drem', 'CBG123', NULL, 'SPL2010', '123', '321', '2023-04-08 01:55:20', '2023-04-08 01:55:20'),
('2339280', NULL, 'Pewangi Seltika', NULL, 'Pewangi', 10000, 15000, 5000, 50, 'BTL', 'CBG123', NULL, 'SPL630', '123', '321', '2023-04-08 01:51:15', '2023-04-08 01:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` varchar(20) NOT NULL,
  `nama_satuan` varchar(255) NOT NULL,
  `nama_asli` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `nama_satuan`, `nama_asli`, `created_at`, `updated_at`) VALUES
('STN0', 'Drem', 'Drem', '2023-04-08 01:49:42', '2023-04-08 01:49:42'),
('STN2400', 'BTL', 'Botol', '2023-04-08 01:49:20', '2023-04-08 01:49:20'),
('STN960', 'BOX', 'BOX', '2023-04-08 01:49:02', '2023-04-08 01:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('runEEnPzOIZJeaolvp1PopMNi1Jic137BLuegbBY', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVBqT0cweVJxRFRQWFV2ODBLMVFqZlA2RWRaMzFrcmNiT2k0ZmthNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1665819269),
('t9TkIjWMuAKb2vYPmOxHkxfUjbECRXOzKN7Kixyv', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaUIxWjVsaGZPWUFacGNvdEhBMjBGbkFjSTNPektLcGlNeTFCV3NOTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlcnMiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1665822071),
('wzTjJIdkA2rD1OT3xvLa7W48hlV0hNNJaBOiDkgA', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFhXQkxMTFJIUHUzWGEzb3k3STB2aU9rekpwMDF0NFZzY0NZNFk2ciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1665819269);

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_suplier` varchar(255) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL,
  `alamat_suplier` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`id`, `id_suplier`, `nama_suplier`, `alamat_suplier`, `tlp`, `created_at`, `updated_at`) VALUES
(8, 'SPL630', 'PT. SUMBER BANGUN', 'Sidorejo', '089342756388', '2023-04-08 01:22:14', '2023-04-08 01:22:14'),
(9, 'SPL2010', 'PT. SAMI SURYA KIMIA', 'Telukan', '085336578911', '2023-04-08 01:23:20', '2023-04-08 01:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_transaction` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `cashback` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_transaction`, `id_cabang`, `id_user`, `total`, `cash`, `cashback`, `created_at`) VALUES
(135, '7481', 'CBG123', '12', 3949000, 4000000, 51000, '2023-04-08 08:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `id_cabang` varchar(20) DEFAULT NULL,
  `user_level` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `id_cabang`, `user_level`, `created_at`, `updated_at`) VALUES
(12, 'Admin A', 'AdminA@admin.gmail.com', 'L', NULL, '$2y$10$jzs.surwv0v.AhwEXtY.0.DflsZWJUvbkcwHwibrDKYb9mCsEFbge', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG123', '1', '2023-04-07 10:10:29', '2023-04-07 10:10:29'),
(13, 'Admin B', 'AdminB@admin.gmail.com', 'L', NULL, '$2y$10$jU97GzSPMFG4GSziTm2tGua6mz4g/yMlmgj3jypZa872ILxbhRXfy', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG540', '1', NULL, NULL),
(14, 'Admin C', 'AdminC@admin.gmail.com', 'L', NULL, '$2y$10$wR5IU9DoJPesL0YTkA79.uXBkSL7MsyOhJm5fzUfVcdaCWi7xnTFC', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG660', '1', NULL, NULL),
(15, 'Kasir A', 'KasirA@kasir.com', 'L', NULL, '$2y$10$NTlu5jsx9KhmxeTUvMPom.pFH1S1ladfqMEwZPST3097uLaYPnuG.', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG123', '2', NULL, NULL),
(16, 'Kasir B', 'KasirB@kasir.com', 'L', NULL, '$2y$10$wRVFYgcyWj7Wu.hWHsCbgeK7QNeylaVb6SvOm5.SyEHGowKX4whV.', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG540', '2', NULL, NULL),
(17, 'Kasir C', 'KasirC@kasir.com', 'L', NULL, '$2y$10$R5FlAvsnvUxTMFUf0rdc8.alEUhNzclWupDWVCtWLPHsYBMnUaG/2', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG660', '2', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
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
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
