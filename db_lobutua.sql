-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 03:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lobutua`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_pribadi`
--

CREATE TABLE `dokumen_pribadi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori_dokumen` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `kategorilaporan_anak`
--

CREATE TABLE `kategorilaporan_anak` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_induk` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategorilaporan_anak`
--

INSERT INTO `kategorilaporan_anak` (`id_kategori`, `nama_kategori`, `id_induk`) VALUES
(1, 'Jalan', 1),
(2, 'Layanan Transportasi', 1),
(3, 'Air', 1),
(4, 'Bangunan', 1),
(5, 'Lainnya', 1),
(6, 'Alam', 2),
(7, 'Non-Alam', 2),
(8, 'Lainnya', 2),
(9, 'Kehilangan', 3),
(10, 'Perampokan', 3),
(11, 'Penganiayaan', 3),
(12, 'Pelecehan', 3),
(13, 'Lainnya', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategorilaporan_induk`
--

CREATE TABLE `kategorilaporan_induk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategorilaporan_induk`
--

INSERT INTO `kategorilaporan_induk` (`id`, `nama`) VALUES
(1, 'Infrastruktur'),
(2, 'Bencana'),
(3, 'Kriminal');

-- --------------------------------------------------------

--
-- Table structure for table `kategoripengumuman`
--

CREATE TABLE `kategoripengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoripengumuman`
--

INSERT INTO `kategoripengumuman` (`id`, `name`) VALUES
(1, 'Umum'),
(2, 'Penting'),
(3, 'Lowongan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_administrasi`
--

CREATE TABLE `kategori_administrasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_administrasi`
--

INSERT INTO `kategori_administrasi` (`id`, `nama_kategori`, `waktu_dibuat`, `waktu_diperbarui`) VALUES
(1, 'Akta Lahir', NULL, NULL),
(2, 'Akta Mati', NULL, NULL),
(3, 'Surat Pengantar Pindah', NULL, NULL),
(4, 'Surat Pengantar KTP', NULL, NULL),
(5, 'Surat Keterangan Kematian', NULL, NULL),
(6, 'Surat Keterangan Domisili', NULL, NULL),
(7, 'Surat Keterangan Kurang Mampu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `waktu_dibuat`, `waktu_diperbarui`, `nama`, `no_hp`, `lokasi`, `judul`, `keterangan`, `bukti_gambar`, `status`, `id_user`, `id_kategori`) VALUES
(1, '2021-06-07 13:52:25', '2021-06-07 13:52:25', 'Matthew Alfredo', '0813961922', 'Lobutua', 'Kehilangan Uang 24.000.000', 'Saya telah kehilangan banyak uang yang berharga, sehingga saya tidak tahu lagi harus kemana', 'uploaded/laporan/laporan-kehilangan-uang.jpeg', 'Diperiksa', 2, 9),
(2, '2021-06-07 13:52:25', '2021-06-07 13:52:25', 'Genesis Hairul Sinaga', '0821201912', 'Lobutua', 'Jalanan Rusak', 'Saya wisatawan yang datang ke desa ini, \n            tetapi saya sangat kecewa dengan infrastruktur yang sangan buruk, bagaimana para pengendara bisa nyaman kalau jalanannya sangat rusak seperti ini!', 'uploaded/laporan/laporan-jalan.jpeg', 'Diperiksa', 2, 1),
(3, '2021-06-07 13:52:25', '2021-06-07 13:52:25', 'Dewa Sembiring', '085729102910', 'Lobutua', 'Seseorang telah dirampok', 'Saya telah menyaksikan di Jl. Bilal dekat lampu merah bahwa ada perampokan oleh 2 orang terhadap seorang ibu ibu.\n            Perampok menggunakan motor Beat tahun 2013, warna hitam, plat nomor BK 1929 UW sekitar jam 02.45 dinihari tanggal 29/May/2019', 'uploaded/laporan/laporan-perampokan.jpeg', 'Diperiksa', 2, 10);

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
(4, '2021_03_29_130905_create_pengumuman_table', 1),
(5, '2021_03_29_142306_add_phone_field_to_users_table', 1),
(6, '2021_04_03_220957_create_kategoripengumuman_table', 1),
(7, '2021_04_03_221200_add_id_kategori_to_pengumuman_table', 1),
(8, '2021_04_12_103735_add_id_admin_to_pengumuman_table', 1),
(9, '2021_04_16_024424_create_permission_tables', 1),
(10, '2021_04_19_124611_create_kategorilaporan_induk_table', 1),
(11, '2021_04_19_124719_create_kategorilaporan_anak_table', 1),
(12, '2021_04_19_125238_create_laporan_table', 1),
(13, '2021_04_29_173532_create_kategori_administrasi_table', 1),
(14, '2021_04_29_182507_create_dokumen_pribadi_table', 1),
(15, '2021_04_29_182520_create_surat_pengantar_table', 1),
(16, '2021_04_29_182526_create_surat_keterangan_table', 1),
(17, '2021_05_21_220049_create_cache_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

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
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL,
  `kategori_pengumuman_id` bigint(20) UNSIGNED NOT NULL,
  `id_admin` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `konten`, `gambar`, `waktu_dibuat`, `waktu_diperbarui`, `kategori_pengumuman_id`, `id_admin`) VALUES
(1, 'Rapat Penanganan Covid-19', 'Kepada anggota keamanan dan relawan covid diahrapkan untuk dapat menghadiri rapat yang akan diadakan pada tanggal 30 Juni 2021 Pukul 18.00 di Kantor Desa.\n            Akan ada pembahasan penting yang dilakukan mengenai tindak lanjut kita terhadap covid-19 di desa kita tercinta, Lobutua.', 'uploaded/pengumuman/covid.jpg', '2021-06-07 13:52:25', '2021-06-07 13:52:25', 2, 1),
(2, 'Sistem Layanan Desa Lobutua', 'Layanan Desa Lobutua merupakan hasil kerja Kelompok 4, mata kuliah Proyek Akhir 1 Prodi D3TI.', 'uploaded/pengumuman/lobutua.jpg', '2021-06-07 13:52:25', '2021-06-07 13:52:25', 1, 1),
(3, 'Lowongan Pekerjaan IT', 'Perusahaan banyak membutuhkan karyawan di bidang IT, dengan ini diharapkan masyarakan yang membutuhkan pekerjaan IT\n            dapat mendaftar ke lowongan pekerjaan agar dapat Bersinergi baik bagi perusahaan dan desa.', 'uploaded/pengumuman/loker.jpg', '2021-06-07 13:52:25', '2021-06-07 13:52:25', 3, 1),
(4, 'Rapat Keuangan Desa', 'Pada tanggal 27/Mei/2021 pukul 09.00 WIB akan dilaksanakan rapat keuangan desa yang dihadiri oleh seluruh perangkat desa dan masyarakat.\n            Rapat ini guna membahas kondisi keuangan desa yang sedang menipis dan bagaimana solusinya. Dengan ini diharapkan masyarakat dapat saling bekerja sama demi kemakmuran desa.', 'uploaded/pengumuman/rapat-keuangan.jpg', '2021-06-07 13:52:25', '2021-06-07 13:52:25', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `waktu_dibuat`, `waktu_diperbarui`) VALUES
(1, 'role-list', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(2, 'role-create', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(3, 'role-edit', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(4, 'role-delete', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(5, 'pengumuman-list', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(6, 'pengumuman-create', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(7, 'pengumuman-edit', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(8, 'pengumuman-delete', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(9, 'user-list', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(10, 'user-create', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(11, 'user-edit', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(12, 'user-delete', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(13, 'laporan-list', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(14, 'laporan-create', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(15, 'laporan-edit', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(16, 'laporan-delete', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(17, 'administrasi-list', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(18, 'administrasi-create', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(19, 'administrasi-delete', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `waktu_dibuat`, `waktu_diperbarui`) VALUES
(1, 'Admin Master', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(2, 'Admin', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24'),
(3, 'Member', 'web', '2021-06-07 13:52:24', '2021-06-07 13:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keterangan`
--

CREATE TABLE `surat_keterangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori_dokumen` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_pengantar`
--

CREATE TABLE `surat_pengantar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori_dokumen` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL
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
  `waktu_dibuat` timestamp NULL DEFAULT NULL,
  `waktu_diperbarui` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `waktu_dibuat`, `waktu_diperbarui`, `phone`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$EP11dPqKySJHnXrxxKDCiexxzFdAZdZGr2KPkiRdxwsYc83eR.UtO', NULL, '2021-06-07 13:52:24', '2021-06-07 13:52:24', '08123456789'),
(2, 'Kelompok 4', 'kelompok4@gmail.com', NULL, '$2y$10$Dx8Yp5l4z8qVE4X5XnenMe.igELcEFj7Jv7InWpJqDrd/GEiG/aVi', NULL, '2021-06-07 13:52:25', '2021-06-07 13:52:25', '081234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `dokumen_pribadi`
--
ALTER TABLE `dokumen_pribadi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pribadi_id_kategori_dokumen_foreign` (`id_kategori_dokumen`),
  ADD KEY `dokumen_pribadi_id_user_foreign` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategorilaporan_anak`
--
ALTER TABLE `kategorilaporan_anak`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `kategorilaporan_anak_id_induk_foreign` (`id_induk`);

--
-- Indexes for table `kategorilaporan_induk`
--
ALTER TABLE `kategorilaporan_induk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoripengumuman`
--
ALTER TABLE `kategoripengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_administrasi`
--
ALTER TABLE `kategori_administrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_id_user_foreign` (`id_user`),
  ADD KEY `laporan_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengumuman_kategori_pengumuman_id_foreign` (`kategori_pengumuman_id`),
  ADD KEY `pengumuman_id_admin_foreign` (`id_admin`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_keterangan_id_kategori_dokumen_foreign` (`id_kategori_dokumen`),
  ADD KEY `surat_keterangan_id_user_foreign` (`id_user`);

--
-- Indexes for table `surat_pengantar`
--
ALTER TABLE `surat_pengantar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_pengantar_id_kategori_dokumen_foreign` (`id_kategori_dokumen`),
  ADD KEY `surat_pengantar_id_user_foreign` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen_pribadi`
--
ALTER TABLE `dokumen_pribadi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategorilaporan_anak`
--
ALTER TABLE `kategorilaporan_anak`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategorilaporan_induk`
--
ALTER TABLE `kategorilaporan_induk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategoripengumuman`
--
ALTER TABLE `kategoripengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_administrasi`
--
ALTER TABLE `kategori_administrasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_pengantar`
--
ALTER TABLE `surat_pengantar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumen_pribadi`
--
ALTER TABLE `dokumen_pribadi`
  ADD CONSTRAINT `dokumen_pribadi_id_kategori_dokumen_foreign` FOREIGN KEY (`id_kategori_dokumen`) REFERENCES `kategori_administrasi` (`id`),
  ADD CONSTRAINT `dokumen_pribadi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `kategorilaporan_anak`
--
ALTER TABLE `kategorilaporan_anak`
  ADD CONSTRAINT `kategorilaporan_anak_id_induk_foreign` FOREIGN KEY (`id_induk`) REFERENCES `kategorilaporan_induk` (`id`);

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategorilaporan_anak` (`id_kategori`),
  ADD CONSTRAINT `laporan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pengumuman_kategori_pengumuman_id_foreign` FOREIGN KEY (`kategori_pengumuman_id`) REFERENCES `kategoripengumuman` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD CONSTRAINT `surat_keterangan_id_kategori_dokumen_foreign` FOREIGN KEY (`id_kategori_dokumen`) REFERENCES `kategori_administrasi` (`id`),
  ADD CONSTRAINT `surat_keterangan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `surat_pengantar`
--
ALTER TABLE `surat_pengantar`
  ADD CONSTRAINT `surat_pengantar_id_kategori_dokumen_foreign` FOREIGN KEY (`id_kategori_dokumen`) REFERENCES `kategori_administrasi` (`id`),
  ADD CONSTRAINT `surat_pengantar_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
