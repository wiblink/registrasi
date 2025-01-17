-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2023 at 04:07 PM
-- Server version: 10.6.15-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhxdzljv_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirm`
--

CREATE TABLE `confirm` (
  `id_confirm` int(11) NOT NULL,
  `id_register` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `confirm`
--

INSERT INTO `confirm` (`id_confirm`, `id_register`, `created`) VALUES
(1, 34, '2023-10-31 03:42:06'),
(2, 42, '2023-10-31 05:00:36'),
(3, 48, '2023-10-31 11:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id_module` smallint(5) UNSIGNED NOT NULL,
  `nama_module` varchar(50) DEFAULT NULL,
  `judul_module` varchar(50) DEFAULT NULL,
  `id_module_status` tinyint(1) DEFAULT NULL,
  `login` enum('Y','N','R') NOT NULL DEFAULT 'Y',
  `deskripsi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel modul aplikasi' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id_module`, `nama_module`, `judul_module`, `id_module_status`, `login`, `deskripsi`) VALUES
(1, 'builtin/menu', 'Menu Manager', 1, 'Y', 'Administrasi Menu'),
(2, 'builtin/module', 'Module Manager', 1, 'Y', 'Pengaturan Module'),
(3, 'builtin/module-role', 'Assign Role ke Module', 1, 'Y', 'Assign Role ke Module'),
(4, 'builtin/role', 'Role Manager', 1, 'Y', 'Pengaturan Role'),
(5, 'builtin/user', 'User Manager', 1, 'Y', 'Pengaturan user'),
(6, 'login', 'Login', 1, 'R', 'Login ke akun Anda'),
(7, 'builtin/user-role', 'Assign Role ke User', 1, 'Y', 'Assign role ke user'),
(8, 'builtin/menu-role', 'Menu - Role', 1, 'Y', 'Assign role ke menu'),
(9, 'image-upload', 'Image Upload', 1, 'Y', 'Image Upload'),
(15, 'builtin/setting-layout', 'Setting Layout', 1, 'Y', 'Setting Layout Aplikasi'),
(16, 'builtin/setting-app', 'Setting App', 1, 'Y', 'Pengaturan aplikasi seperti nama aplikasi, logo, d'),
(21, 'options-dinamis', 'Options Dinamis', 1, 'Y', 'Options Dinamis'),
(22, 'input-dinamis', 'Input Dinamis', 1, 'Y', 'Input Dinamis'),
(25, 'home', 'Home', 1, 'Y', 'Home'),
(26, 'multiple-fileupload', 'Multiple File Upload', 1, 'Y', 'Multiple File Upload'),
(27, 'data-tables-ajax', 'Data Tables Ajax', 1, 'Y', 'Data Tables Ajax'),
(28, 'data-tables', 'Data Tables', 1, 'Y', 'Data Tables'),
(29, 'produk', 'Produk', 1, 'N', 'Produk'),
(30, 'uploadexcel', 'Upload Excel', 1, 'Y', 'Upload Excel'),
(31, 'downloadexcel', 'Download Excel', 1, 'Y', 'Download Excel'),
(32, 'pdfkirimemail', 'PDF Kirim Email', 1, 'Y', 'PDF Kirim Email'),
(33, 'register', 'Register Akun', 1, 'R', 'Register Akun'),
(34, 'builtin/setting-registrasi', 'Setting Registrasi Akun', 1, 'Y', 'Setting Registrasi Akun'),
(35, 'recovery', 'Reset Password', 1, 'R', 'Reset Password'),
(36, 'chartjs', 'Chartjs', 1, 'Y', 'Chartjs'),
(37, 'apexcharts', 'ApexCharts', 1, 'Y', 'ApexCharts'),
(38, 'echarts', 'ECharts', 1, 'Y', 'ECharts'),
(39, 'filepicker', 'File Picker', 1, 'Y', 'File Picker Manager'),
(40, 'gallery', 'Gallery', 1, 'Y', 'Gallery Manager'),
(41, 'artikel', 'Artikel', 1, 'Y', 'Artikel'),
(42, 'filedownload', 'File Download', 1, 'Y', 'File Download'),
(43, 'chained-dropdown', 'Chained Dropdown', 1, 'Y', 'Chained Dropdown'),
(44, 'wilayah', 'Wilayah', 1, 'Y', 'Wilayah'),
(45, 'form-ajax', 'Form Ajax', 1, 'Y', 'Form Ajax'),
(46, 'dashboard', 'Dashboard', 1, 'Y', 'Dashboard'),
(49, 'tanpalogin', 'Tanpa Login', 1, 'N', 'Module tanpa perlu login'),
(51, 'builtin/permission', 'Permission', 1, 'Y', 'Permission'),
(52, 'builtin/role-permission', 'Role Permission', 1, 'Y', 'Role Permission'),
(55, 'kategori', 'Kategori Barang', 1, 'Y', 'Kategori Barang'),
(56, 'barang-kategori', 'Kategori Barang', 1, 'Y', 'Kategori Barang'),
(57, 'grocery-crud', 'Grocery CRUD', 1, 'Y', 'Grocery CRUD'),
(58, 'grocery-crud-flexigrid', 'Grocery CRUD Flexigrid', 1, 'Y', 'Grocery CRUD Flexigrid'),
(59, 'grocery-crud-datatables', 'Grocery CRUD Datatables', 1, 'Y', 'Grocery CRUD Datatables'),
(60, 'grocery-crud-datatables-ajax', 'Grocery CRUD Datatables Ajax', 1, 'Y', 'Grocery CRUD Datatables Ajax'),
(62, 'insertcustomer', 'Customer', 1, 'Y', 'Modul Untuk Input Customer'),
(63, 'reservation', 'Reservasi', 1, 'Y', 'Reservasi rental mobil'),
(64, 'sdv', 'sdv', 1, 'Y', 'sdv'),
(65, 'listreminder', 'List Reminder', 1, 'Y', 'Data Mobil yang sedang dipakat / current rental'),
(66, 'finishcar', 'List Finish Car', 1, 'Y', 'Daftar mobil yang telah selesai dipakai'),
(75, 'tester', 'sdc', 1, 'Y', 'sdc'),
(76, 'pdfcontroller', 'pdfcontroller', 1, 'Y', 'pdfcontroller'),
(77, 'car', 'Car', 1, 'Y', 'Data untuk mobil'),
(78, 'verify', 'Verify', 1, 'R', 'Verifikasi Tamu');

-- --------------------------------------------------------

--
-- Table structure for table `module_status`
--

CREATE TABLE `module_status` (
  `id_module_status` tinyint(1) NOT NULL,
  `nama_status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel status modul, seperti: aktif, non aktif, dalam perbaikan' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `module_status`
--

INSERT INTO `module_status` (`id_module_status`, `nama_status`, `keterangan`) VALUES
(1, 'Aktif', NULL),
(2, 'Tidak Aktif', NULL),
(3, 'Dalam Perbaikan', 'Hanya role developer yang dapat mengakses module dengan status ini');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id_register` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL,
  `status` enum('active','suspended','deleted') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(255) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `id_wilayah` varchar(5) DEFAULT NULL,
  `hadir` varchar(10) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel register untuk pendaftar' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id_register`, `email`, `nama`, `verified`, `status`, `created`, `avatar`, `instansi`, `id_wilayah`, `hadir`, `jabatan`, `no_hp`, `hari`) VALUES
(49, 'Elvarianykarina@gmail.com', 'ROKIDI S.E.,M.M', 0, 'active', '2023-10-31 11:34:07', NULL, 'ins4', '896', 'hadir', '', '085247718889', '2023-11-10'),
(51, 'Peman_tanjungbalai@yahoo.com', 'nurmalini marpaung', 0, 'active', '2023-10-31 11:41:34', NULL, 'ins1', '57', 'hadir', '', '085261650404', '2023-11-09'),
(52, 'helsa_28@yahoo.co.id', 'Hellen Hasmeita Sari', 0, 'active', '2023-10-31 11:55:01', NULL, 'ins2', '', 'hadir', '', '085263118117', NULL),
(53, 'romeosyahrir123@gmail.com', 'Romeo Syahrir', 0, 'active', '2023-10-31 12:21:26', NULL, 'ins2', '722', 'hadir', '', '081264258691', '2023-11-10'),
(54, 'bapendallg2023@gmail.com', 'Dr. Drs. H. Dian Chandra, M.Si', 0, 'active', '2023-10-31 13:48:40', NULL, 'ins2', '430', 'hadir', '', '0811271343456', '2023-11-09'),
(55, 'jismanjisman1983@gmail.com', 'JISMAN,S.Sos', 0, 'active', '2023-10-31 14:17:08', NULL, 'ins2', '676', 'wakil', 'Kasubid. Penagihan Pajak Daerah & Retribusi Daerah', '08114588322', '2023-11-10'),
(56, 'tnatasatya@gmail.com', 'M.A Suharto', 0, 'active', '2023-10-31 14:24:52', NULL, 'ins4', '905', 'hadir', '', '082208236895', '2023-11-09'),
(57, 'tnatasatya@gmail.com', 'M.A Suharto', 0, 'active', '2023-10-31 14:28:15', NULL, 'ins4', '905', 'hadir', '', '082208236895', '2023-11-09'),
(58, 'jataj248@gmail.com', 'H. JATA, S.E.,M.M', 0, 'active', '2023-10-31 15:09:31', NULL, 'ins1', '15', 'hadir', '', '081269711156', '2023-11-09'),
(59, 'durohmanaep@gmail.com', 'Dr. Aep Durohman, S.Pd, M.Pd', 0, 'active', '2023-10-31 15:14:51', NULL, 'ins2', '473', 'hadir', '', '081290949430', '2023-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `type` varchar(50) NOT NULL,
  `param` varchar(255) NOT NULL,
  `value` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`type`, `param`, `value`) VALUES
('app', 'background_logo', 'transparent'),
('app', 'btn_login', 'btn-secondary'),
('app', 'deskripsi_web', 'Template administrasi lengkap dengan fitur penting dalam pengembangan aplikasi seperti pengatuan web, layout, dll'),
('app', 'favicon', 'favicon.png'),
('app', 'footer_app', '&copy; {{YEAR}} &lt;a href=&quot;https://tamu&quot; target=&quot;_blank&quot;&gt;Tamu DEV staff&lt;/a&gt;'),
('app', 'footer_login', '&copy; {{YEAR}} &lt;a href=&quot;https://tamu&quot; target=&quot;_blank&quot;&gt;Tamu DEV staff&lt;/a&gt;'),
('app', 'judul_web', 'Admin Template Jagowebdev'),
('app', 'logo_app', 'logo_aplikasi.png'),
('app', 'logo_login', 'logo_text(1).png'),
('app', 'logo_register', 'logo_register.png'),
('layout', 'bootswatch_theme', 'default'),
('layout', 'color_scheme', 'grey'),
('layout', 'font_family', 'poppins'),
('layout', 'font_size', '14.5'),
('layout', 'logo_background_color', 'dark'),
('layout', 'sidebar_color', 'dark'),
('register', 'default_page_id_module', '5'),
('register', 'default_page_id_role', '2'),
('register', 'default_page_type', 'id_module'),
('register', 'default_page_url', '{{BASE_URL}}builtin/user/edit?id=1'),
('register', 'enable', 'Y'),
('register', 'id_role', '2'),
('register', 'metode_aktivasi', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `setting_user`
--

CREATE TABLE `setting_user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `param` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `setting_user`
--

INSERT INTO `setting_user` (`id_user`, `type`, `param`) VALUES
(2, 'layout', '{\"color_scheme\":\"blue-dark\",\"sidebar_color\":\"dark\",\"logo_background_color\":\"default\",\"font_family\":\"open-sans\",\"font_size\":\"15\",\"bootswatch_theme\":\"\"}'),
(3, 'layout', '{\"color_scheme\":\"grey\",\"bootswatch_theme\":\"default\",\"sidebar_color\":\"dark\",\"logo_background_color\":\"dark\",\"font_family\":\"poppins\",\"font_size\":\"13\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sppjb`
--

CREATE TABLE `sppjb` (
  `id_sppjb` int(11) NOT NULL,
  `id_register` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sppjb`
--

INSERT INTO `sppjb` (`id_sppjb`, `id_register`, `created`) VALUES
(2, 34, '2023-10-31 03:38:13'),
(3, 34, '2023-10-31 03:39:35'),
(4, 48, '2023-10-31 11:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL,
  `status` enum('active','suspended','deleted') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(255) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `id_wilayah` varchar(5) DEFAULT NULL,
  `hadir` varchar(10) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel user untuk login' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `nama`, `verified`, `status`, `created`, `avatar`, `instansi`, `id_wilayah`, `hadir`, `jabatan`, `no_hp`, `hari`) VALUES
(1, 'ssss@gmail.com', 'Mike Portnoy', 0, 'active', '2023-10-30 01:50:17', NULL, 'ins2', '891', 'hadir', 'Drummer', '08123534543', '2023-11-09'),
(2, 'kkk@gmail.com', 'I Made Jana', 0, 'active', '2023-10-30 01:51:55', NULL, 'ins3', '845', 'hadir', 'Kepala cabang', '452345', '2023-11-09'),
(3, 'adjie@arjanggi.com', 'Hhjk', 0, 'active', '2023-10-30 02:00:04', NULL, 'ins4', '888', 'wakil', 'Hhj', '7nj', '2023-11-09'),
(4, 'wibi.wb@gmail.com', 'Alkhwarizmi', 0, 'active', '2023-10-30 02:02:05', NULL, 'ins2', '889', 'hadir', 'Pilot', '3463', '2023-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'ardianta', 'ardianta_pargo@yahoo.co.id', '$2y$10$HIEq2w.8Et9RsJmY4TMKye4aVCxOd9xJTOtG4vyOEmo.GIBxaPQHK', 'Ardianta Pargo', 'default.svg'),
(3, 'petanikode', 'info@petanikode.com', '$2y$10$uXa.Hz9rr8gkv4ztaqf6FO84iW64gXHbeyEOy1tIQ5wmqMjTk0yQa', 'Petani Kode', 'default.svg'),
(4, 'wiblink', 'wiblink@yahoo.com', '$2y$10$lymRKzygLGBcUYdjhZGkme7.h6zlKXYaqAEZlxrFzHcywEMXJNFZC', 'tes', 'default.svg'),
(5, 'adjie', 'adjie@arjanggi.com', '$2y$10$mpVXaNWjFHg1zLPs6tcDbuCR.tpJIqJBlTv/0IrSDfdsK4ReIRPb6', 'Adji Arjanggi', 'default.svg'),
(6, 'admin02', 'ainc@arjanggi.com', '$2y$10$nISxBHC7K4kOFeSN5M4el.aWqbn7/pp2atTIRtw5sfvYHmCxkGHGW', 'admin 02', 'default.svg'),
(7, 'panitia', 'panitia@event-reg.id', '$2y$10$tqy78BJnxVT.8GvChxmnMeGisbzadkewDMmf59XPAzyzHTbOePx8u', 'panitia', 'default.svg');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id_wilayah` int(10) UNSIGNED NOT NULL,
  `kode` varchar(8) DEFAULT NULL,
  `tempat` varchar(100) DEFAULT NULL,
  `tingkat` varchar(100) DEFAULT NULL,
  `kpwdn` varchar(100) DEFAULT NULL,
  `wilchamp` char(100) DEFAULT NULL,
  `kd_wilayah` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id_wilayah`, `kode`, `tempat`, `tingkat`, `kpwdn`, `wilchamp`, `kd_wilayah`) VALUES
(1, 'I', 'Provinsi Aceh', 'Provinsi', NULL, 'Sumatera', '1'),
(2, '1', 'Kabupaten Aceh Barat Daya', 'Kabupaten', NULL, 'Sumatera', '1'),
(3, '2', 'Kabupaten Aceh Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(4, '3', 'Kabupaten Aceh Besar', 'Kabupaten', NULL, 'Sumatera', '1'),
(5, '4', 'Kabupaten Aceh Jaya', 'Kabupaten', NULL, 'Sumatera', '1'),
(6, '5', 'Kabupaten Aceh Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(7, '6', 'Kabupaten Aceh Singkil', 'Kabupaten', NULL, 'Sumatera', '1'),
(8, '7', 'Kabupaten Aceh Tamiang', 'Kabupaten', NULL, 'Sumatera', '1'),
(9, '8', 'Kabupaten Aceh Tengah', 'Kabupaten', NULL, 'Sumatera', '1'),
(10, '9', 'Kabupaten Aceh Tenggara', 'Kabupaten', NULL, 'Sumatera', '1'),
(11, '10', 'Kabupaten Aceh Timur', 'Kabupaten', NULL, 'Sumatera', '1'),
(12, '11', 'Kabupaten Aceh Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(13, '12', 'Kabupaten Bener Meriah', 'Kabupaten', NULL, 'Sumatera', '1'),
(14, '13', 'Kabupaten Bireuen', 'Kabupaten', NULL, 'Sumatera', '1'),
(15, '14', 'Kabupaten Gayo Lues', 'Kabupaten', NULL, 'Sumatera', '1'),
(16, '15', 'Kabupaten Nagan Raya', 'Kabupaten', NULL, 'Sumatera', '1'),
(17, '16', 'Kabupaten Pidie Jaya', 'Kabupaten', NULL, 'Sumatera', '1'),
(18, '17', 'Kabupaten Pidie', 'Kabupaten', NULL, 'Sumatera', '1'),
(19, '18', 'Kabupaten Simeulue', 'Kabupaten', NULL, 'Sumatera', '1'),
(20, '19', 'Kota Langsa', 'Kota', NULL, 'Sumatera', '1'),
(21, '20', 'Kota Banda Aceh', 'Kota', NULL, 'Sumatera', '1'),
(22, '21', 'Kota Lhokseumawe', 'Kota', NULL, 'Sumatera', '1'),
(23, '22', 'Kota Sabang', 'Kota', NULL, 'Sumatera', '1'),
(24, '23', 'Kota Subulussalam', 'Kota', NULL, 'Sumatera', '1'),
(25, 'II', 'Provinsi Sumatera Utara', 'Provinsi', NULL, 'Sumatera', '1'),
(26, '1', 'Kabupaten Asahan', 'Kabupaten', NULL, 'Sumatera', '1'),
(27, '2', 'Kabupaten Batu Bara', 'Kabupaten', NULL, 'Sumatera', '1'),
(28, '3', 'Kabupaten Dairi', 'Kabupaten', NULL, 'Sumatera', '1'),
(29, '4', 'Kabupaten Deli Serdang', 'Kabupaten', NULL, 'Sumatera', '1'),
(30, '5', 'Kabupaten Humbang Hasundutan', 'Kabupaten', NULL, 'Sumatera', '1'),
(31, '6', 'Kabupaten Karo', 'Kabupaten', NULL, 'Sumatera', '1'),
(32, '7', 'Kabupaten Labuhanbatu', 'Kabupaten', NULL, 'Sumatera', '1'),
(33, '8', 'Kabupaten Labuhanbatu Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(34, '9', 'Kabupaten Labuhanbatu Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(35, '10', 'Kabupaten Langkat', 'Kabupaten', NULL, 'Sumatera', '1'),
(36, '11', 'Kabupaten Mandailing Natal', 'Kabupaten', NULL, 'Sumatera', '1'),
(37, '12', 'Kabupaten Nias', 'Kabupaten', NULL, 'Sumatera', '1'),
(38, '13', 'Kabupaten Nias Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(39, '14', 'Kabupaten Nias Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(40, '15', 'Kabupaten Nias Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(41, '16', 'Kabupaten Padang Lawas', 'Kabupaten', NULL, 'Sumatera', '1'),
(42, '17', 'Kabupaten Padang Lawas Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(43, '18', 'Kabupaten Pakpak Bharat', 'Kabupaten', NULL, 'Sumatera', '1'),
(44, '19', 'Kabupaten Samosir', 'Kabupaten', NULL, 'Sumatera', '1'),
(45, '20', 'Kabupaten Simalungun', 'Kabupaten', NULL, 'Sumatera', '1'),
(46, '21', 'Kabupaten Tapanuli Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(47, '22', 'Kabupaten Tapanuli Tengah', 'Kabupaten', NULL, 'Sumatera', '1'),
(48, '23', 'Kabupaten Tapanuli Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(49, '24', 'Kabupaten Toba', 'Kabupaten', NULL, 'Sumatera', '1'),
(50, '25', 'Kabupaten Serdang Bedagai', 'Kabupaten', NULL, 'Sumatera', '1'),
(51, '26', 'Kota Binjai', 'Kota', NULL, 'Sumatera', '1'),
(52, '27', 'Kota Gunungsitoli', 'Kota', NULL, 'Sumatera', '1'),
(53, '28', 'Kota Medan', 'Kota', NULL, 'Sumatera', '1'),
(54, '29', 'Kota Padangsidimpuan', 'Kota', NULL, 'Sumatera', '1'),
(55, '30', 'Kota Pematangsiantar', 'Kota', NULL, 'Sumatera', '1'),
(56, '31', 'Kota Sibolga', 'Kota', NULL, 'Sumatera', '1'),
(57, '32', 'Kota Tanjungbalai', 'Kota', NULL, 'Sumatera', '1'),
(58, '33', 'Kota Tebing Tinggi', 'Kota', NULL, 'Sumatera', '1'),
(59, 'III', 'Provinsi Sumatera Barat', 'Provinsi', NULL, 'Sumatera', '1'),
(60, '1', 'Kabupaten Agam', 'Kabupaten', NULL, 'Sumatera', '1'),
(61, '2', 'Kabupaten Dharmasraya', 'Kabupaten', NULL, 'Sumatera', '1'),
(62, '3', 'Kabupaten Kepulauan Mentawai', 'Kabupaten', NULL, 'Sumatera', '1'),
(63, '4', 'Kabupaten Lima Puluh Kota', 'Kabupaten', NULL, 'Sumatera', '1'),
(64, '5', 'Kabupaten Padang Pariaman', 'Kabupaten', NULL, 'Sumatera', '1'),
(65, '6', 'Kabupaten Pasaman', 'Kabupaten', NULL, 'Sumatera', '1'),
(66, '7', 'Kabupaten Pasaman Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(67, '8', 'Kabupaten Pesisir Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(68, '9', 'Kabupaten Sijunjung', 'Kabupaten', NULL, 'Sumatera', '1'),
(69, '10', 'Kabupaten Solok', 'Kabupaten', NULL, 'Sumatera', '1'),
(70, '11', 'Kabupaten Solok Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(71, '12', 'Kabupaten Tanah Datar', 'Kabupaten', NULL, 'Sumatera', '1'),
(72, '13', 'Kota Bukittinggi', 'Kota', NULL, 'Sumatera', '1'),
(73, '14', 'Kota Padang', 'Kota', NULL, 'Sumatera', '1'),
(74, '15', 'Kota Padang Panjang', 'Kota', NULL, 'Sumatera', '1'),
(75, '16', 'Kota Pariaman', 'Kota', NULL, 'Sumatera', '1'),
(76, '17', 'Kota Payakumbuh', 'Kota', NULL, 'Sumatera', '1'),
(77, '18', 'Kota Sawahlunto', 'Kota', NULL, 'Sumatera', '1'),
(78, '19', 'Kota Solok', 'Kota', NULL, 'Sumatera', '1'),
(79, 'IV', 'Provinsi Riau', 'Provinsi', NULL, 'Sumatera', '1'),
(80, '1', 'Kabupaten Bengkalis', 'Kabupaten', NULL, 'Sumatera', '1'),
(81, '2', 'Kabupaten Indragiri Hilir', 'Kabupaten', NULL, 'Sumatera', '1'),
(82, '3', 'Kabupaten Indragiri Hulu', 'Kabupaten', NULL, 'Sumatera', '1'),
(83, '4', 'Kabupaten Kampar', 'Kabupaten', NULL, 'Sumatera', '1'),
(84, '5', 'Kabupaten Kepulauan Meranti', 'Kabupaten ', NULL, 'Sumatera', '1'),
(85, '6', 'Kabupaten Kuantan Singingi', 'Kabupaten', NULL, 'Sumatera', '1'),
(86, '7', 'Kabupaten Pelalawan', 'Kabupaten', NULL, 'Sumatera', '1'),
(87, '8', 'Kabupaten Rokan Hilir', 'Kabupaten', NULL, 'Sumatera', '1'),
(88, '9', 'Kabupaten Rokan Hulu', 'Kabupaten', NULL, 'Sumatera', '1'),
(89, '10', 'Kabupaten Siak', 'Kabupaten', NULL, 'Sumatera', '1'),
(90, '11', 'Kota Dumai', 'Kota', NULL, 'Sumatera', '1'),
(91, '12', 'Kota Pekanbaru', 'Kota', NULL, 'Sumatera', '1'),
(92, 'V', 'Provinsi Kepulauan Riau', 'Provinsi ', NULL, 'Sumatera', '1'),
(93, '1', 'Kabupaten Bintan', 'Kabupaten', NULL, 'Sumatera', '1'),
(94, '2', 'Kabupaten Karimun', 'Kabupaten', NULL, 'Sumatera', '1'),
(95, '3', 'Kabupaten Kepulauan Anambas', 'Kabupaten', NULL, 'Sumatera', '1'),
(96, '4', 'Kabupaten Lingga', 'Kabupaten', NULL, 'Sumatera', '1'),
(97, '5', 'Kabupaten Natuna', 'Kabupaten', NULL, 'Sumatera', '1'),
(98, '6', 'Kota Batam', 'Kota', NULL, 'Sumatera', '1'),
(99, '7', 'Kota Tanjungpinang', 'Kota', NULL, 'Sumatera', '1'),
(100, 'VI', 'Provinsi Jambi', 'Provinsi', NULL, 'Sumatera', '1'),
(101, '1', 'Kabupaten Batanghari', 'Kabupaten', NULL, 'Sumatera', '1'),
(102, '2', 'Kabupaten Bungo', 'Kabupaten', NULL, 'Sumatera', '1'),
(103, '3', 'Kabupaten Kerinci', 'Kabupaten', NULL, 'Sumatera', '1'),
(104, '4', 'Kabupaten Merangin', 'Kabupaten', NULL, 'Sumatera', '1'),
(105, '5', 'Kabupaten Muaro Jambi', 'Kabupaten', NULL, 'Sumatera', '1'),
(106, '6', 'Kabupaten Sarolangun', 'Kabupaten', NULL, 'Sumatera', '1'),
(107, '7', 'Kabupaten Tanjung Jabung Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(108, '8', 'Kabupaten Tanjung Jabung Timur', 'Kabupaten', NULL, 'Sumatera', '1'),
(109, '9', 'Kabupaten Tebo', 'Kabupaten', NULL, 'Sumatera', '1'),
(110, '10', 'Kota Jambi', 'Kota', NULL, 'Sumatera', '1'),
(111, '11', 'Kota Sungai Penuh', 'Kota', NULL, 'Sumatera', '1'),
(112, 'VII', 'Provinsi Bengkulu', 'Provinsi', NULL, 'Sumatera', '1'),
(113, '1', 'Kabupaten Bengkulu Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(114, '2', 'Kabupaten Bengkulu Tengah', 'Kabupaten', NULL, 'Sumatera', '1'),
(115, '3', 'Kabupaten Bengkulu Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(116, '4', 'Kabupaten Kaur', 'Kabupaten', NULL, 'Sumatera', '1'),
(117, '5', 'Kabupaten Kepahiang', 'Kabupaten', NULL, 'Sumatera', '1'),
(118, '6', 'Kabupaten Lebong', 'Kabupaten', NULL, 'Sumatera', '1'),
(119, '7', 'Kabupaten Mukomuko', 'Kabupaten', NULL, 'Sumatera', '1'),
(120, '8', 'Kabupaten Rejang Lebong', 'Kabupaten', NULL, 'Sumatera', '1'),
(121, '9', 'Kabupaten Seluma', 'Kabupaten', NULL, 'Sumatera', '1'),
(122, '10', 'Kota Bengkulu', 'Kota', NULL, 'Sumatera', '1'),
(123, 'VIII', 'Provinsi Sumatera Selatan', 'Provinsi', NULL, 'Sumatera', '1'),
(124, '1', 'Kabupaten Banyuasin', 'Kabupaten', NULL, 'Sumatera', '1'),
(125, '2', 'Kabupaten Empat Lawang', 'Kabupaten', NULL, 'Sumatera', '1'),
(126, '3', 'Kabupaten Lahat', 'Kabupaten', NULL, 'Sumatera', '1'),
(127, '4', 'Kabupaten Muara Enim', 'Kabupaten', NULL, 'Sumatera', '1'),
(128, '5', 'Kabupaten Musi Banyuasin', 'Kabupaten', NULL, 'Sumatera', '1'),
(129, '6', 'Kabupaten Musi Rawas', 'Kabupaten', NULL, 'Sumatera', '1'),
(130, '7', 'Kabupaten Musi Rawas Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(131, '8', 'Kabupaten Ogan Ilir', 'Kabupaten', NULL, 'Sumatera', '1'),
(132, '9', 'Kabupaten Ogan Komering Ilir', 'Kabupaten', NULL, 'Sumatera', '1'),
(133, '10', 'Kabupaten Ogan Komering Ulu', 'Kabupaten', NULL, 'Sumatera', '1'),
(134, '11', 'Kabupaten Ogan Komering Ulu Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(135, '12', 'Kabupaten Ogan Komering Ulu Timur', 'Kabupaten', NULL, 'Sumatera', '1'),
(136, '13', 'Kabupaten Penukal Abab Lematang Ilir', 'Kabupaten', NULL, 'Sumatera', '1'),
(137, '14', 'Kota Lubuk Linggau', 'Kota', NULL, 'Sumatera', '1'),
(138, '15', 'Kota Pagar Alam', 'Kota', NULL, 'Sumatera', '1'),
(139, '16', 'Kota Palembang', 'Kota', NULL, 'Sumatera', '1'),
(140, '17', 'Kota Prabumulih', 'Kota', NULL, 'Sumatera', '1'),
(141, 'IX', 'Provinsi Kepulauan Bangka Belitung', 'Provinsi ', NULL, 'Sumatera', '1'),
(142, '1', 'Kabupaten Bangka', 'Kabupaten', NULL, 'Sumatera', '1'),
(143, '2', 'Kabupaten Bangka Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(144, '3', 'Kabupaten Bangka Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(145, '4', 'Kabupaten Bangka Tengah', 'Kabupaten', NULL, 'Sumatera', '1'),
(146, '5', 'Kabupaten Belitung', 'Kabupaten', NULL, 'Sumatera', '1'),
(147, '6', 'Kabupaten Belitung Timur', 'Kabupaten', NULL, 'Sumatera', '1'),
(148, '7', 'Kota Pangkalpinang', 'Kota', NULL, 'Sumatera', '1'),
(149, 'X', 'Provinsi Lampung', 'Provinsi', NULL, 'Sumatera', '1'),
(150, '1', 'Kabupaten Lampung Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(151, '2', 'Kabupaten Lampung Selatan', 'Kabupaten', NULL, 'Sumatera', '1'),
(152, '3', 'Kabupaten Lampung Tengah', 'Kabupaten', NULL, 'Sumatera', '1'),
(153, '4', 'Kabupaten Lampung Timur', 'Kabupaten', NULL, 'Sumatera', '1'),
(154, '5', 'Kabupaten Lampung Utara', 'Kabupaten', NULL, 'Sumatera', '1'),
(155, '6', 'Kabupaten Mesuji', 'Kabupaten', NULL, 'Sumatera', '1'),
(156, '7', 'Kabupaten Pesawaran', 'Kabupaten', NULL, 'Sumatera', '1'),
(157, '8', 'Kabupaten Pesisir Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(158, '9', 'Kabupaten Pringsewu', 'Kabupaten', NULL, 'Sumatera', '1'),
(159, '10', 'Kabupaten Tanggamus', 'Kabupaten', NULL, 'Sumatera', '1'),
(160, '11', 'Kabupaten Tulang Bawang', 'Kabupaten', NULL, 'Sumatera', '1'),
(161, '12', 'Kabupaten Tulang Bawang Barat', 'Kabupaten', NULL, 'Sumatera', '1'),
(162, '13', 'Kabupaten Way Kanan', 'Kabupaten', NULL, 'Sumatera', '1'),
(163, '14', 'Kota Bandar Lampung', 'Kota', NULL, 'Sumatera', '1'),
(164, '15', 'Kota Metro', 'Kota', NULL, 'Sumatera', '1'),
(165, 'XI', 'Provinsi DKI Jakarta', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(166, 'XII', 'Provinsi Jawa Barat', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(167, '1', 'Kabupaten Bandung', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(168, '2', 'Kabupaten Bandung Barat', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(169, '3', 'Kabupaten Bekasi', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(170, '4', 'Kabupaten Bogor', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(171, '5', 'Kabupaten Ciamis', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(172, '6', 'Kabupaten Cianjur', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(173, '7', 'Kabupaten Cirebon', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(174, '8', 'Kabupaten Garut', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(175, '9', 'Kabupaten Indramayu', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(176, '10', 'Kabupaten Karawang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(177, '11', 'Kabupaten Kuningan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(178, '12', 'Kabupaten Majalengka', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(179, '13', 'Kabupaten Pangandaran', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(180, '14', 'Kabupaten Purwakarta', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(181, '15', 'Kabupaten Subang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(182, '16', 'Kabupaten Sukabumi', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(183, '17', 'Kabupaten Sumedang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(184, '18', 'Kabupaten Tasikmalaya', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(185, '19', 'Kota Bandung', 'Kota', NULL, 'Jawa-Bali', '1'),
(186, '20', 'Kota Banjar', 'Kota', NULL, 'Jawa-Bali', '1'),
(187, '21', 'Kota Bekasi', 'Kota', NULL, 'Jawa-Bali', '1'),
(188, '22', 'Kota Bogor', 'Kota', NULL, 'Jawa-Bali', '1'),
(189, '23', 'Kota Cimahi', 'Kota', NULL, 'Jawa-Bali', '1'),
(190, '24', 'Kota Cirebon', 'Kota', NULL, 'Jawa-Bali', '1'),
(191, '25', 'Kota Depok', 'Kota', NULL, 'Jawa-Bali', '1'),
(192, '26', 'Kota Sukabumi', 'Kota', NULL, 'Jawa-Bali', '1'),
(193, '27', 'Kota Tasikmalaya', 'Kota', NULL, 'Jawa-Bali', '1'),
(194, 'XII', 'Provinsi Banten', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(195, '1', 'Kabupaten Lebak', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(196, '2', 'Kabupaten Pandeglang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(197, '3', 'Kabupaten Serang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(198, '4', 'Kabupaten Tangerang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(199, '5', 'Kota Cilegon', 'Kota', NULL, 'Jawa-Bali', '1'),
(200, '6', 'Kota Serang', 'Kota', NULL, 'Jawa-Bali', '1'),
(201, '7', 'Kota Tangerang', 'Kota', NULL, 'Jawa-Bali', '1'),
(202, '8', 'Kota Tangerang Selatan', 'Kota', NULL, 'Jawa-Bali', '1'),
(203, 'XIV', 'Provinsi Jawa Tengah', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(204, '1', 'Kabupaten Banjarnegara', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(205, '2', 'Kabupaten Banyumas', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(206, '3', 'Kabupaten Batang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(207, '4', 'Kabupaten Blora', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(208, '5', 'Kabupaten Boyolali', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(209, '6', 'Kabupaten Brebes', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(210, '7', 'Kabupaten Cilacap', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(211, '8', 'Kabupaten Demak', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(212, '9', 'Kabupaten Grobogan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(213, '10', 'Kabupaten Jepara', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(214, '11', 'Kabupaten Karanganyar', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(215, '12', 'Kabupaten Kebumen', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(216, '13', 'Kabupaten Kendal', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(217, '14', 'Kabupaten Klaten', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(218, '15', 'Kabupaten Kudus', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(219, '16', 'Kabupaten Magelang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(220, '17', 'Kabupaten Pati', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(221, '18', 'Kabupaten Pekalongan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(222, '19', 'Kabupaten Pemalang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(223, '20', 'Kabupaten Purbalingga', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(224, '21', 'Kabupaten Purworejo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(225, '22', 'Kabupaten Rembang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(226, '23', 'Kabupaten Semarang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(227, '24', 'Kabupaten Sragen', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(228, '25', 'Kabupaten Sukoharjo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(229, '26', 'Kabupaten Tegal', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(230, '27', 'Kabupaten Temanggung', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(231, '28', 'Kabupaten Wonogiri', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(232, '29', 'Kabupaten Wonosobo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(233, '30', 'Kota Magelang', 'Kota', NULL, 'Jawa-Bali', '1'),
(234, '31', 'Kota Pekalongan', 'Kota', NULL, 'Jawa-Bali', '1'),
(235, '32', 'Kota Salatiga', 'Kota', NULL, 'Jawa-Bali', '1'),
(236, '33', 'Kota Semarang', 'Kota', NULL, 'Jawa-Bali', '1'),
(237, '34', 'Kota Surakarta', 'Kota', NULL, 'Jawa-Bali', '1'),
(238, '35', 'Kota Tegal', 'Kota', NULL, 'Jawa-Bali', '1'),
(239, 'XV', 'Provinsi Daerah Istimewa Yogyakarta', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(240, '1', 'Kabupaten Bantul', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(241, '2', 'Kabupaten Gunungkidul', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(242, '3', 'Kabupaten Kulon Progo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(243, '4', 'Kabupaten Sleman', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(244, '5', 'Kota Yogyakarta', 'Kota', NULL, 'Jawa-Bali', '1'),
(245, 'XVI', 'Provinsi Jawa Timur', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(246, '1', 'Kabupaten Bangkalan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(247, '2', 'Kabupaten Banyuwangi', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(248, '3', 'Kabupaten Blitar', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(249, '4', 'Kabupaten Bojonegoro', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(250, '5', 'Kabupaten Bondowoso', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(251, '6', 'Kabupaten Gresik', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(252, '7', 'Kabupaten Jember', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(253, '8', 'Kabupaten Jombang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(254, '9', 'Kabupaten Kediri', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(255, '10', 'Kabupaten Lamongan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(256, '11', 'Kabupaten Lumajang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(257, '12', 'Kabupaten Madiun', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(258, '13', 'Kabupaten Magetan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(259, '14', 'Kabupaten Malang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(260, '15', 'Kabupaten Nganjuk', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(261, '16', 'Kabupaten Ngawi', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(262, '17', 'Kabupaten Pacitan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(263, '18', 'Kabupaten Pamekasan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(264, '19', 'Kabupaten Pasuruan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(265, '20', 'Kabupaten Ponorogo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(266, '21', 'Kabupaten Probolinggo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(267, '22', 'Kabupaten Sampang', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(268, '23', 'Kabupaten Sidoarjo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(269, '24', 'Kabupaten Situbondo', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(270, '25', 'Kabupaten Sumenep', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(271, '26', 'Kabupaten Trenggalek', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(272, '27', 'Kabupaten Tuban', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(273, '28', 'Kabupaten Tulungagung', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(274, '29', 'Kabupaten Mojokerto', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(275, '30', 'Kota Batu', 'Kota', NULL, 'Jawa-Bali', '1'),
(276, '31', 'Kota Blitar', 'Kota', NULL, 'Jawa-Bali', '1'),
(277, '32', 'Kota Kediri', 'Kota', NULL, 'Jawa-Bali', '1'),
(278, '33', 'Kota Madiun', 'Kota', NULL, 'Jawa-Bali', '1'),
(279, '34', 'Kota Malang', 'Kota', NULL, 'Jawa-Bali', '1'),
(280, '35', 'Kota Mojokerto', 'Kota', NULL, 'Jawa-Bali', '1'),
(281, '36', 'Kota Pasuruan', 'Kota', NULL, 'Jawa-Bali', '1'),
(282, '37', 'Kota Probolinggo', 'Kota', NULL, 'Jawa-Bali', '1'),
(283, '38', 'Kota Surabaya', 'Kota', NULL, 'Jawa-Bali', '1'),
(284, 'XXVIII', 'Provinsi Bali', 'Provinsi', NULL, 'Jawa-Bali', '1'),
(285, '1', 'Kabupaten Badung', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(286, '2', 'Kabupaten Bangli', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(287, '3', 'Kabupaten Buleleng', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(288, '4', 'Kabupaten Gianyar', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(289, '5', 'Kabupaten Jembrana', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(290, '6', 'Kabupaten Karangasem', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(291, '7', 'Kabupaten Klungkung', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(292, '8', 'Kabupaten Tabanan', 'Kabupaten', NULL, 'Jawa-Bali', '1'),
(293, '9', 'Kota Denpasar', 'Kota', NULL, 'Jawa-Bali', '1'),
(294, 'I', 'Provinsi Aceh', 'Provinsi', 'Aceh', 'Sumatera', '1'),
(295, '1', 'Kabupaten Aceh Barat Daya', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(296, '2', 'Kabupaten Aceh Barat', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(297, '3', 'Kabupaten Aceh Besar', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(298, '4', 'Kabupaten Aceh Jaya', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(299, '5', 'Kabupaten Aceh Selatan', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(300, '6', 'Kabupaten Aceh Singkil', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(301, '7', 'Kabupaten Aceh Tamiang', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(302, '8', 'Kabupaten Aceh Tengah', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(303, '9', 'Kabupaten Aceh Tenggara', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(304, '10', 'Kabupaten Aceh Timur', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(305, '11', 'Kabupaten Aceh Utara', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(306, '12', 'Kabupaten Bener Meriah', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(307, '13', 'Kabupaten Bireuen', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(308, '14', 'Kabupaten Gayo Lues', 'Kabupaten', 'Lhokseumawe', 'Sumatera', '1'),
(309, '15', 'Kabupaten Nagan Raya', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(310, '16', 'Kabupaten Pidie Jaya', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(311, '17', 'Kabupaten Pidie', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(312, '18', 'Kabupaten Simeulue', 'Kabupaten', 'Aceh', 'Sumatera', '1'),
(313, '19', 'Kota Langsa', 'Kota ', 'Lhokseumawe', 'Sumatera', '1'),
(314, '20', 'Kota Banda Aceh', 'Kota ', 'Aceh', 'Sumatera', '1'),
(315, '21', 'Kota Lhokseumawe', 'Kota ', 'Lhokseumawe', 'Sumatera', '1'),
(316, '22', 'Kota Sabang', 'Kota ', 'Aceh', 'Sumatera', '1'),
(317, '23', 'Kota Subulussalam', 'Kota ', 'Aceh', 'Sumatera', '1'),
(318, 'II', 'Provinsi Sumatera Utara', 'Provinsi', 'Sumatera Utara', 'Sumatera', '1'),
(319, '1', 'Kabupaten Asahan', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(320, '2', 'Kabupaten Batu Bara', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(321, '3', 'Kabupaten Dairi', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(322, '4', 'Kabupaten Deli Serdang', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(323, '5', 'Kabupaten Humbang Hasundutan', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(324, '6', 'Kabupaten Karo', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(325, '7', 'Kabupaten Labuhanbatu', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(326, '8', 'Kabupaten Labuhanbatu Selatan', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(327, '9', 'Kabupaten Labuhanbatu Utara', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(328, '10', 'Kabupaten Langkat', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(329, '11', 'Kabupaten Mandailing Natal', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(330, '12', 'Kabupaten Nias', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(331, '13', 'Kabupaten Nias Barat', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(332, '14', 'Kabupaten Nias Selatan', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(333, '15', 'Kabupaten Nias Utara', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(334, '16', 'Kabupaten Padang Lawas', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(335, '17', 'Kabupaten Padang Lawas Utara', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(336, '18', 'Kabupaten Pakpak Bharat', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(337, '19', 'Kabupaten Samosir', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(338, '20', 'Kabupaten Simalungun', 'Kabupaten', 'Pematangsiantar', 'Sumatera', '1'),
(339, '21', 'Kabupaten Tapanuli Selatan', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(340, '22', 'Kabupaten Tapanuli Tengah', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(341, '23', 'Kabupaten Tapanuli Utara', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(342, '24', 'Kabupaten Toba', 'Kabupaten', 'Sibolga', 'Sumatera', '1'),
(343, '25', 'Kabupaten Serdang Bedagai', 'Kabupaten', 'Sumatera Utara', 'Sumatera', '1'),
(344, '26', 'Kota Binjai', 'Kota ', 'Sumatera Utara', 'Sumatera', '1'),
(345, '27', 'Kota Gunungsitoli', 'Kota ', 'Sibolga', 'Sumatera', '1'),
(346, '28', 'Kota Medan', 'Kota ', 'Sumatera Utara', 'Sumatera', '1'),
(347, '29', 'Kota Padangsidimpuan', 'Kota ', 'Sibolga', 'Sumatera', '1'),
(348, '30', 'Kota Pematangsiantar', 'Kota ', 'Pematangsiantar', 'Sumatera', '1'),
(349, '31', 'Kota Sibolga', 'Kota ', 'Sibolga', 'Sumatera', '1'),
(350, '32', 'Kota Tanjungbalai', 'Kota ', 'Pematangsiantar', 'Sumatera', '1'),
(351, '33', 'Kota Tebing Tinggi', 'Kota ', 'Sumatera Utara', 'Sumatera', '1'),
(352, 'III', 'Provinsi Sumatera Barat', 'Provinsi', 'Sumatera Barat', 'Sumatera', '1'),
(353, '1', 'Kabupaten Agam', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(354, '2', 'Kabupaten Dharmasraya', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(355, '3', 'Kabupaten Kepulauan Mentawai', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(356, '4', 'Kabupaten Lima Puluh Kota', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(357, '5', 'Kabupaten Padang Pariaman', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(358, '6', 'Kabupaten Pasaman', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(359, '7', 'Kabupaten Pasaman Barat', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(360, '8', 'Kabupaten Pesisir Selatan', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(361, '9', 'Kabupaten Sijunjung', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(362, '10', 'Kabupaten Solok', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(363, '11', 'Kabupaten Solok Selatan', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(364, '12', 'Kabupaten Tanah Datar', 'Kabupaten', 'Sumatera Barat', 'Sumatera', '1'),
(365, '13', 'Kota Bukittinggi', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(366, '14', 'Kota Padang', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(367, '15', 'Kota Padang Panjang', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(368, '16', 'Kota Pariaman', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(369, '17', 'Kota Payakumbuh', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(370, '18', 'Kota Sawahlunto', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(371, '19', 'Kota Solok', 'Kota ', 'Sumatera Barat', 'Sumatera', '1'),
(372, 'IV', 'Provinsi Riau', 'Provinsi', 'Riau', 'Sumatera', '1'),
(373, '1', 'Kabupaten Bengkalis', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(374, '2', 'Kabupaten Indragiri Hilir', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(375, '3', 'Kabupaten Indragiri Hulu', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(376, '4', 'Kabupaten Kampar', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(377, '5', 'Kabupaten Kepulauan Meranti', 'Kabupaten ', 'Riau', 'Sumatera', '1'),
(378, '6', 'Kabupaten Kuantan Singingi', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(379, '7', 'Kabupaten Pelalawan', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(380, '8', 'Kabupaten Rokan Hilir', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(381, '9', 'Kabupaten Rokan Hulu', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(382, '10', 'Kabupaten Siak', 'Kabupaten', 'Riau', 'Sumatera', '1'),
(383, '11', 'Kota Dumai', 'Kota ', 'Riau', 'Sumatera', '1'),
(384, '12', 'Kota Pekanbaru', 'Kota ', 'Riau', 'Sumatera', '1'),
(385, 'V', 'Provinsi Kepulauan Riau', 'Provinsi ', 'Kepulauan Riau', 'Sumatera', '1'),
(386, '1', 'Kabupaten Bintan', 'Kabupaten', 'Kepulauan Riau', 'Sumatera', '1'),
(387, '2', 'Kabupaten Karimun', 'Kabupaten', 'Kepulauan Riau', 'Sumatera', '1'),
(388, '3', 'Kabupaten Kepulauan Anambas', 'Kabupaten', 'Kepulauan Riau', 'Sumatera', '1'),
(389, '4', 'Kabupaten Lingga', 'Kabupaten', 'Kepulauan Riau', 'Sumatera', '1'),
(390, '5', 'Kabupaten Natuna', 'Kabupaten', 'Kepulauan Riau', 'Sumatera', '1'),
(391, '6', 'Kota Batam', 'Kota ', 'Kepulauan Riau', 'Sumatera', '1'),
(392, '7', 'Kota Tanjungpinang', 'Kota ', 'Kepulauan Riau', 'Sumatera', '1'),
(393, 'VI', 'Provinsi Jambi', 'Provinsi', 'Jambi', 'Sumatera', '1'),
(394, '1', 'Kabupaten Batanghari', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(395, '2', 'Kabupaten Bungo', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(396, '3', 'Kabupaten Kerinci', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(397, '4', 'Kabupaten Merangin', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(398, '5', 'Kabupaten Muaro Jambi', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(399, '6', 'Kabupaten Sarolangun', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(400, '7', 'Kabupaten Tanjung Jabung Barat', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(401, '8', 'Kabupaten Tanjung Jabung Timur', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(402, '9', 'Kabupaten Tebo', 'Kabupaten', 'Jambi', 'Sumatera', '1'),
(403, '10', 'Kota Jambi', 'Kota ', 'Jambi', 'Sumatera', '1'),
(404, '11', 'Kota Sungai Penuh', 'Kota ', 'Jambi', 'Sumatera', '1'),
(405, 'VII', 'Provinsi Bengkulu', 'Provinsi', 'Bengkulu', 'Sumatera', '1'),
(406, '1', 'Kabupaten Bengkulu Selatan', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(407, '2', 'Kabupaten Bengkulu Tengah', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(408, '3', 'Kabupaten Bengkulu Utara', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(409, '4', 'Kabupaten Kaur', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(410, '5', 'Kabupaten Kepahiang', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(411, '6', 'Kabupaten Lebong', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(412, '7', 'Kabupaten Mukomuko', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(413, '8', 'Kabupaten Rejang Lebong', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(414, '9', 'Kabupaten Seluma', 'Kabupaten', 'Bengkulu', 'Sumatera', '1'),
(415, '10', 'Kota Bengkulu', 'Kota ', 'Bengkulu', 'Sumatera', '1'),
(416, 'VIII', 'Provinsi Sumatera Selatan', 'Provinsi', 'Sumatera Selatan', 'Sumatera', '1'),
(417, '1', 'Kabupaten Banyuasin', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(418, '2', 'Kabupaten Empat Lawang', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(419, '3', 'Kabupaten Lahat', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(420, '4', 'Kabupaten Muara Enim', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(421, '5', 'Kabupaten Musi Banyuasin', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(422, '6', 'Kabupaten Musi Rawas', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(423, '7', 'Kabupaten Musi Rawas Utara', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(424, '8', 'Kabupaten Ogan Ilir', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(425, '9', 'Kabupaten Ogan Komering Ilir', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(426, '10', 'Kabupaten Ogan Komering Ulu', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(427, '11', 'Kabupaten Ogan Komering Ulu Selatan', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(428, '12', 'Kabupaten Ogan Komering Ulu Timur', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(429, '13', 'Kabupaten Penukal Abab Lematang Ilir', 'Kabupaten', 'Sumatera Selatan', 'Sumatera', '1'),
(430, '14', 'Kota Lubuk Linggau', 'Kota ', 'Sumatera Selatan', 'Sumatera', '1'),
(431, '15', 'Kota Pagar Alam', 'Kota ', 'Sumatera Selatan', 'Sumatera', '1'),
(432, '16', 'Kota Palembang', 'Kota ', 'Sumatera Selatan', 'Sumatera', '1'),
(433, '17', 'Kota Prabumulih', 'Kota ', 'Sumatera Selatan', 'Sumatera', '1'),
(434, 'IX', 'Provinsi Kepulauan Bangka Belitung', 'Provinsi ', 'Kep Babel', 'Sumatera', '1'),
(435, '1', 'Kabupaten Bangka', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(436, '2', 'Kabupaten Bangka Barat', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(437, '3', 'Kabupaten Bangka Selatan', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(438, '4', 'Kabupaten Bangka Tengah', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(439, '5', 'Kabupaten Belitung', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(440, '6', 'Kabupaten Belitung Timur', 'Kabupaten', 'Kep Babel', 'Sumatera', '1'),
(441, '7', 'Kota Pangkalpinang', 'Kota ', 'Kep Babel', 'Sumatera', '1'),
(442, 'X', 'Provinsi Lampung', 'Provinsi', 'Lampung', 'Sumatera', '1'),
(443, '1', 'Kabupaten Lampung Barat', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(444, '2', 'Kabupaten Lampung Selatan', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(445, '3', 'Kabupaten Lampung Tengah', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(446, '4', 'Kabupaten Lampung Timur', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(447, '5', 'Kabupaten Lampung Utara', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(448, '6', 'Kabupaten Mesuji', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(449, '7', 'Kabupaten Pesawaran', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(450, '8', 'Kabupaten Pesisir Barat', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(451, '9', 'Kabupaten Pringsewu', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(452, '10', 'Kabupaten Tanggamus', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(453, '11', 'Kabupaten Tulang Bawang', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(454, '12', 'Kabupaten Tulang Bawang Barat', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(455, '13', 'Kabupaten Way Kanan', 'Kabupaten', 'Lampung', 'Sumatera', '1'),
(456, '14', 'Kota Bandar Lampung', 'Kota ', 'Lampung', 'Sumatera', '1'),
(457, '15', 'Kota Metro', 'Kota ', 'Lampung', 'Sumatera', '1'),
(458, 'XI', 'Provinsi DKI Jakarta', 'Provinsi', 'DKI Jakarta', 'Jawa-Bali', '1'),
(459, 'XII', 'Provinsi Jawa Barat', 'Provinsi', 'Jawa Barat', 'Jawa-Bali', '1'),
(460, '1', 'Kabupaten Bandung', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(461, '2', 'Kabupaten Bandung Barat', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(462, '3', 'Kabupaten Bekasi', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(463, '4', 'Kabupaten Bogor', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(464, '5', 'Kabupaten Ciamis', 'Kabupaten', 'Tasikmalaya', 'Jawa-Bali', '1'),
(465, '6', 'Kabupaten Cianjur', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(466, '7', 'Kabupaten Cirebon', 'Kabupaten', 'Cirebon', 'Jawa-Bali', '1'),
(467, '8', 'Kabupaten Garut', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(468, '9', 'Kabupaten Indramayu', 'Kabupaten', 'Cirebon', 'Jawa-Bali', '1'),
(469, '10', 'Kabupaten Karawang', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(470, '11', 'Kabupaten Kuningan', 'Kabupaten', 'Cirebon', 'Jawa-Bali', '1'),
(471, '12', 'Kabupaten Majalengka', 'Kabupaten', 'Cirebon', 'Jawa-Bali', '1'),
(472, '13', 'Kabupaten Pangandaran', 'Kabupaten', 'Tasikmalaya', 'Jawa-Bali', '1'),
(473, '14', 'Kabupaten Purwakarta', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(474, '15', 'Kabupaten Subang', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(475, '16', 'Kabupaten Sukabumi', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(476, '17', 'Kabupaten Sumedang', 'Kabupaten', 'Jawa Barat', 'Jawa-Bali', '1'),
(477, '18', 'Kabupaten Tasikmalaya', 'Kabupaten', 'Tasikmalaya', 'Jawa-Bali', '1'),
(478, '19', 'Kota Bandung', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(479, '20', 'Kota Banjar', 'Kota ', 'Tasikmalaya', 'Jawa-Bali', '1'),
(480, '21', 'Kota Bekasi', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(481, '22', 'Kota Bogor', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(482, '23', 'Kota Cimahi', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(483, '24', 'Kota Cirebon', 'Kota ', 'Cirebon', 'Jawa-Bali', '1'),
(484, '25', 'Kota Depok', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(485, '26', 'Kota Sukabumi', 'Kota ', 'Jawa Barat', 'Jawa-Bali', '1'),
(486, '27', 'Kota Tasikmalaya', 'Kota ', 'Tasikmalaya', 'Jawa-Bali', '1'),
(487, 'XII', 'Provinsi Banten', 'Provinsi', 'Banten', 'Jawa-Bali', '1'),
(488, '1', 'Kabupaten Lebak', 'Kabupaten', 'Banten', 'Jawa-Bali', '1'),
(489, '2', 'Kabupaten Pandeglang', 'Kabupaten', 'Banten', 'Jawa-Bali', '1'),
(490, '3', 'Kabupaten Serang', 'Kabupaten', 'Banten', 'Jawa-Bali', '1'),
(491, '4', 'Kabupaten Tangerang', 'Kabupaten', 'Banten', 'Jawa-Bali', '1'),
(492, '5', 'Kota Cilegon', 'Kota ', 'Banten', 'Jawa-Bali', '1'),
(493, '6', 'Kota Serang', 'Kota ', 'Banten', 'Jawa-Bali', '1'),
(494, '7', 'Kota Tangerang', 'Kota ', 'Banten', 'Jawa-Bali', '1'),
(495, '8', 'Kota Tangerang Selatan', 'Kota ', 'Banten', 'Jawa-Bali', '1'),
(496, 'XIV', 'Provinsi Jawa Tengah', 'Provinsi', 'Jawa Tengah', 'Jawa-Bali', '1'),
(497, '1', 'Kabupaten Banjarnegara', 'Kabupaten', 'Purwokerto', 'Jawa-Bali', '1'),
(498, '2', 'Kabupaten Banyumas', 'Kabupaten', 'Purwokerto', 'Jawa-Bali', '1'),
(499, '3', 'Kabupaten Batang', 'Kabupaten', 'Tegal', 'Jawa-Bali', '1'),
(500, '4', 'Kabupaten Blora', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(501, '5', 'Kabupaten Boyolali', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(502, '6', 'Kabupaten Brebes', 'Kabupaten', 'Tegal', 'Jawa-Bali', '1'),
(503, '7', 'Kabupaten Cilacap', 'Kabupaten', 'Purwokerto', 'Jawa-Bali', '1'),
(504, '8', 'Kabupaten Demak', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(505, '9', 'Kabupaten Grobogan', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(506, '10', 'Kabupaten Jepara', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(507, '11', 'Kabupaten Karanganyar', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(508, '12', 'Kabupaten Kebumen', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(509, '13', 'Kabupaten Kendal', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(510, '14', 'Kabupaten Klaten', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(511, '15', 'Kabupaten Kudus', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(512, '16', 'Kabupaten Magelang', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(513, '17', 'Kabupaten Pati', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(514, '18', 'Kabupaten Pekalongan', 'Kabupaten', 'Tegal', 'Jawa-Bali', '1'),
(515, '19', 'Kabupaten Pemalang', 'Kabupaten', 'Tegal', 'Jawa-Bali', '1'),
(516, '20', 'Kabupaten Purbalingga', 'Kabupaten', 'Purwokerto', 'Jawa-Bali', '1'),
(517, '21', 'Kabupaten Purworejo', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(518, '22', 'Kabupaten Rembang', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(519, '23', 'Kabupaten Semarang', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(520, '24', 'Kabupaten Sragen', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(521, '25', 'Kabupaten Sukoharjo', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(522, '26', 'Kabupaten Tegal', 'Kabupaten', 'Tegal', 'Jawa-Bali', '1'),
(523, '27', 'Kabupaten Temanggung', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(524, '28', 'Kabupaten Wonogiri', 'Kabupaten', 'Solo', 'Jawa-Bali', '1'),
(525, '29', 'Kabupaten Wonosobo', 'Kabupaten', 'Jawa Tengah', 'Jawa-Bali', '1'),
(526, '30', 'Kota Magelang', 'Kota ', 'Jawa Tengah', 'Jawa-Bali', '1'),
(527, '31', 'Kota Pekalongan', 'Kota ', 'Tegal', 'Jawa-Bali', '1'),
(528, '32', 'Kota Salatiga', 'Kota ', 'Jawa Tengah', 'Jawa-Bali', '1'),
(529, '33', 'Kota Semarang', 'Kota ', 'Jawa Tengah', 'Jawa-Bali', '1'),
(530, '34', 'Kota Surakarta', 'Kota ', 'Solo', 'Jawa-Bali', '1'),
(531, '35', 'Kota Tegal', 'Kota ', 'Tegal', 'Jawa-Bali', '1'),
(532, 'XV', 'Provinsi Daerah Istimewa Yogyakarta', 'Provinsi', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(533, '1', 'Kabupaten Bantul', 'Kabupaten', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(534, '2', 'Kabupaten Gunungkidul', 'Kabupaten', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(535, '3', 'Kabupaten Kulon Progo', 'Kabupaten', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(536, '4', 'Kabupaten Sleman', 'Kabupaten', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(537, '5', 'Kota Yogyakarta', 'Kota ', 'DI Yogyakarta', 'Jawa-Bali', '1'),
(538, 'XVI', 'Provinsi Jawa Timur', 'Provinsi', 'Jawa Timur', 'Jawa-Bali', '1'),
(539, '1', 'Kabupaten Bangkalan', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(540, '2', 'Kabupaten Banyuwangi', 'Kabupaten', 'Jember', 'Jawa-Bali', '1'),
(541, '3', 'Kabupaten Blitar', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(542, '4', 'Kabupaten Bojonegoro', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(543, '5', 'Kabupaten Bondowoso', 'Kabupaten', 'Jember', 'Jawa-Bali', '1'),
(544, '6', 'Kabupaten Gresik', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(545, '7', 'Kabupaten Jember', 'Kabupaten', 'Jember', 'Jawa-Bali', '1'),
(546, '8', 'Kabupaten Jombang', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(547, '9', 'Kabupaten Kediri', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(548, '10', 'Kabupaten Lamongan', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(549, '11', 'Kabupaten Lumajang', 'Kabupaten', 'Jember', 'Jawa-Bali', '1'),
(550, '12', 'Kabupaten Madiun', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(551, '13', 'Kabupaten Magetan', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(552, '14', 'Kabupaten Malang', 'Kabupaten', 'Malang', 'Jawa-Bali', '1'),
(553, '15', 'Kabupaten Nganjuk', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(554, '16', 'Kabupaten Ngawi', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(555, '17', 'Kabupaten Pacitan', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(556, '18', 'Kabupaten Pamekasan', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(557, '19', 'Kabupaten Pasuruan', 'Kabupaten', 'Malang', 'Jawa-Bali', '1'),
(558, '20', 'Kabupaten Ponorogo', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(559, '21', 'Kabupaten Probolinggo', 'Kabupaten', 'Malang', 'Jawa-Bali', '1'),
(560, '22', 'Kabupaten Sampang', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(561, '23', 'Kabupaten Sidoarjo', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(562, '24', 'Kabupaten Situbondo', 'Kabupaten', 'Jember', 'Jawa-Bali', '1'),
(563, '25', 'Kabupaten Sumenep', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(564, '26', 'Kabupaten Trenggalek', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(565, '27', 'Kabupaten Tuban', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(566, '28', 'Kabupaten Tulungagung', 'Kabupaten', 'Kediri', 'Jawa-Bali', '1'),
(567, '29', 'Kabupaten Mojokerto', 'Kabupaten', 'Jawa Timur', 'Jawa-Bali', '1'),
(568, '30', 'Kota Batu', 'Kota ', 'Malang', 'Jawa-Bali', '1'),
(569, '31', 'Kota Blitar', 'Kota ', 'Kediri', 'Jawa-Bali', '1'),
(570, '32', 'Kota Kediri', 'Kota ', 'Kediri', 'Jawa-Bali', '1'),
(571, '33', 'Kota Madiun', 'Kota ', 'Kediri', 'Jawa-Bali', '1'),
(572, '34', 'Kota Malang', 'Kota ', 'Malang', 'Jawa-Bali', '1'),
(573, '35', 'Kota Mojokerto', 'Kota ', 'Jawa Timur', 'Jawa-Bali', '1'),
(574, '36', 'Kota Pasuruan', 'Kota ', 'Malang', 'Jawa-Bali', '1'),
(575, '37', 'Kota Probolinggo', 'Kota ', 'Malang', 'Jawa-Bali', '1'),
(576, '38', 'Kota Surabaya', 'Kota ', 'Jawa Timur', 'Jawa-Bali', '1'),
(577, 'XVII', 'Provinsi Kalimantan Barat', 'Provinsi', 'Kalimantan Barat', 'Kalimantan', '2'),
(578, '1', 'Kabupaten Bengkayang', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(579, '2', 'Kabupaten Kapuas hulu', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(580, '3', 'Kabupaten Kayong Utara', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(581, '4', 'Kabupaten Ketapang', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(582, '5', 'Kabupaten Kubu Raya', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(583, '6', 'Kabupaten Landak', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(584, '7', 'Kabupaten Melawi', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(585, '8', 'Kabupaten Mempawah', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(586, '9', 'Kabupaten Sambas', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(587, '10', 'Kabupaten Sanggau', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(588, '11', 'Kabupaten Sekadau', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(589, '12', 'Kabupaten Sintang', 'Kabupaten', 'Kalimantan Barat', 'Kalimantan', '2'),
(590, '13', 'Kota Pontianak', 'Kota ', 'Kalimantan Barat', 'Kalimantan', '2'),
(591, '14', 'Kota Singkawang', 'Kota ', 'Kalimantan Barat', 'Kalimantan', '2'),
(592, 'XVIII', 'Provinsi Kalimantan Tengah', 'Provinsi', 'Kalimantan Tengah', 'Kalimantan', '2'),
(593, '1', 'Kabupaten Barito Selatan', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(594, '2', 'Kabupaten Barito Timur', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(595, '3', 'Kabupaten Barito Utara', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(596, '4', 'Kabupaten Gunung Mas', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(597, '5', 'Kabupaten Kapuas', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(598, '6', 'Kabupaten Katingan', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(599, '7', 'Kabupaten Kotawaringin Barat', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(600, '8', 'Kabupaten Kotawaringin Timur', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(601, '9', 'Kabupaten Lamandau', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(602, '10', 'Kabupaten Murung Raya', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(603, '11', 'Kabupaten Pulang Pisau', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(604, '12', 'Kabupaten Seruyan', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(605, '13', 'Kabupaten Sukamara', 'Kabupaten', 'Kalimantan Tengah', 'Kalimantan', '2'),
(606, '14', 'Kota Palangka Raya', 'Kota ', 'Kalimantan Tengah', 'Kalimantan', '2'),
(607, 'XIX', 'Provinsi Kalimantan Selatan', 'Provinsi', 'Kalimantan Selatan', 'Kalimantan', '2'),
(608, '1', 'Kabupaten Balangan', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(609, '2', 'Kabupaten Banjar', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(610, '3', 'Kabupaten Barito Kuala', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(611, '4', 'Kabupaten Hulu Sungai Selatan', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(612, '5', 'Kabupaten Hulu Sungai Tengah', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(613, '6', 'Kabupaten Hulu Sungai Utara', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(614, '7', 'Kabupaten Kotabaru', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(615, '8', 'Kabupaten Tabalong', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(616, '9', 'Kabupaten Tanah Bumbu', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(617, '10', 'Kabupaten Tanah Laut', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(618, '11', 'Kabupaten Tapin', 'Kabupaten', 'Kalimantan Selatan', 'Kalimantan', '2'),
(619, '12', 'Kota Banjarbaru', 'Kota ', 'Kalimantan Selatan', 'Kalimantan', '2'),
(620, '13', 'Kota Banjarmasin', 'Kota ', 'Kalimantan Selatan', 'Kalimantan', '2'),
(621, 'XX', 'Provinsi Kalimantan Timur', 'Provinsi', 'Kalimantan Timur', 'Kalimantan', '2'),
(622, '1', 'Kabupaten Berau', 'Kabupaten', 'Kalimantan Timur', 'Kalimantan', '2'),
(623, '2', 'Kabupaten Kutai Barat', 'Kabupaten', 'Kalimantan Timur', 'Kalimantan', '2'),
(624, '3', 'Kabupaten Kutai Kartanegara', 'Kabupaten', 'Kalimantan Timur', 'Kalimantan', '2'),
(625, '4', 'Kabupaten Kutai Timur', 'Kabupaten', 'Kalimantan Timur', 'Kalimantan', '2'),
(626, '5', 'Kabupaten Mahakam Ulu', 'Kabupaten', 'Kalimantan Timur', 'Kalimantan', '2'),
(627, '6', 'Kabupaten Paser', 'Kabupaten', 'Balikpapan', 'Kalimantan', '2'),
(628, '7', 'Kabupaten Penajam Paser Utara', 'Kabupaten', 'Balikpapan', 'Kalimantan', '2'),
(629, '8', 'Kota Balikpapan', 'Kota ', 'Balikpapan', 'Kalimantan', '2'),
(630, '9', 'Kota Bontang', 'Kota ', 'Kalimantan Timur', 'Kalimantan', '2'),
(631, '10', 'Kota Samarinda', 'Kota ', 'Kalimantan Timur', 'Kalimantan', '2'),
(632, 'XXI', 'Provinsi Kalimantan Utara', 'Provinsi', 'Kalimantan Utara', 'Kalimantan', '2'),
(633, '1', 'Kabupaten Bulungan', 'Kabupaten', 'Kalimantan Utara', 'Kalimantan', '2'),
(634, '2', 'Kabupaten Malinau', 'Kabupaten', 'Kalimantan Utara', 'Kalimantan', '2'),
(635, '3', 'Kabupaten Nunukan', 'Kabupaten', 'Kalimantan Utara', 'Kalimantan', '2'),
(636, '4', 'Kabupaten Tana Tidung', 'Kabupaten', 'Kalimantan Utara', 'Kalimantan', '2'),
(637, '5', 'Kota Tarakan', 'Kota ', 'Kalimantan Utara', 'Kalimantan', '2'),
(638, 'XXII', 'Provinsi Sulawesi Barat', 'Provinsi', 'Sulawesi Barat', 'Sulawesi', '2'),
(639, '1', 'Kabupaten Majene', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(640, '2', 'Kabupaten Mamasa', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(641, '3', 'Kabupaten Mamuju', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(642, '4', 'Kabupaten Mamuju Tengah', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(643, '5', 'Kabupaten Pasangkayu', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(644, '6', 'Kabupaten Polewali Mandar', 'Kabupaten', 'Sulawesi Barat', 'Sulawesi', '2'),
(645, 'XXIII', 'Provinsi Sulawesi Utara', 'Provinsi', 'Sulawesi Utara', 'Sulawesi', '2'),
(646, '1', 'Kabupaten Bolaang Mongondow', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(647, '2', 'Kabupaten Bolaang Mongondow Selatan', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(648, '3', 'Kabupaten Bolaang Mongondow Timur', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(649, '4', 'Kabupaten Bolaang Mongondow Utara', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(650, '5', 'Kabupaten Kepulauan Talaud', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(651, '6', 'Kabupaten Minahasa', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(652, '7', 'Kabupaten Minahasa Selatan', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(653, '8', 'Kabupaten Minahasa Tenggara', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(654, '9', 'Kabupaten Minahasa Utara', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(655, '10', 'Kabupaten Kepulauan Siau Tagulandang Biaro', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(656, '11', 'Kabupaten Kepulauan Sangihe', 'Kabupaten', 'Sulawesi Utara', 'Sulawesi', '2'),
(657, '12', 'Kota Bitung', 'Kota ', 'Sulawesi Utara', 'Sulawesi', '2'),
(658, '13', 'Kota Kotamobagu', 'Kota ', 'Sulawesi Utara', 'Sulawesi', '2'),
(659, '14', 'Kota Manado', 'Kota ', 'Sulawesi Utara', 'Sulawesi', '2'),
(660, '15', 'Kota Tomohon', 'Kota ', 'Sulawesi Utara', 'Sulawesi', '2'),
(661, 'XXIV', 'Provinsi Gorontalo', 'Provinsi', 'Gorontalo', 'Sulawesi', '2'),
(662, '1', 'Kabupaten Boalemo', 'Kabupaten', 'Gorontalo', 'Sulawesi', '2'),
(663, '2', 'Kabupaten Bone Bolango', 'Kabupaten', 'Gorontalo', 'Sulawesi', '2'),
(664, '3', 'Kabupaten Gorontalo', 'Kabupaten', 'Gorontalo', 'Sulawesi', '2'),
(665, '4', 'Kabupaten Gorontalo Utara', 'Kabupaten', 'Gorontalo', 'Sulawesi', '2'),
(666, '5', 'Kabupaten Pohuwato', 'Kabupaten', 'Gorontalo', 'Sulawesi', '2'),
(667, '6', 'Kota Gorontalo', 'Kota ', 'Gorontalo', 'Sulawesi', '2'),
(668, 'XXV', 'Provinsi Sulawesi Tengah', 'Provinsi', 'Sulawesi Tengah', 'Sulawesi', '2'),
(669, '1', 'Kabupaten Banggai', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(670, '2', 'Kabupaten Banggai Kepulauan', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(671, '3', 'Kabupaten Banggai Laut', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(672, '4', 'Kabupaten Buol', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(673, '5', 'Kabupaten Donggala', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(674, '6', 'Kabupaten Morowali', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(675, '7', 'Kabupaten Morowali Utara', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(676, '8', 'Kabupaten Parigi Moutong', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2');
INSERT INTO `wilayah` (`id_wilayah`, `kode`, `tempat`, `tingkat`, `kpwdn`, `wilchamp`, `kd_wilayah`) VALUES
(677, '9', 'Kabupaten Poso', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(678, '10', 'Kabupaten Sigi', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(679, '11', 'Kabupaten Tojo Una Una', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(680, '12', 'Kabupaten Tolitoli', 'Kabupaten', 'Sulawesi Tengah', 'Sulawesi', '2'),
(681, '13', 'Kota Palu', 'Kota ', 'Sulawesi Tengah', 'Sulawesi', '2'),
(682, 'XXVI', 'Provinsi Sulawesi Selatan', 'Provinsi', 'Sulawesi Selatan', 'Sulawesi', '2'),
(683, '1', 'Kabupaten Bantaeng', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(684, '2', 'Kabupaten Barru', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(685, '3', 'Kabupaten Bone', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(686, '4', 'Kabupaten Bulukumba', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(687, '5', 'Kabupaten Enrekang', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(688, '6', 'Kabupaten Gowa', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(689, '7', 'Kabupaten Jeneponto', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(690, '8', 'Kabupaten Luwu', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(691, '9', 'Kabupaten Luwu Timur', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(692, '10', 'Kabupaten Luwu Utara', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(693, '11', 'Kabupaten Maros', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(694, '12', 'Kabupaten Pangkajene Dan Kepulauan', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(695, '13', 'Kabupaten Pinrang', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(696, '14', 'Kabupaten Kepulauan Selayar', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(697, '15', 'Kabupaten Sidenreng Rappang', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(698, '16', 'Kabupaten Sinjai', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(699, '17', 'Kabupaten Soppeng', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(700, '18', 'Kabupaten Takalar', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(701, '19', 'Kabupaten Tana Toraja', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(702, '20', 'Kabupaten Toraja Utara', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(703, '21', 'Kabupaten Wajo', 'Kabupaten', 'Sulawesi Selatan', 'Sulawesi', '2'),
(704, '22', 'Kota Makassar', 'Kota ', 'Sulawesi Selatan', 'Sulawesi', '2'),
(705, '23', 'Kota Palopo', 'Kota ', 'Sulawesi Selatan', 'Sulawesi', '2'),
(706, '24', 'Kota Parepare', 'Kota ', 'Sulawesi Selatan', 'Sulawesi', '2'),
(707, 'XXVII', 'Provinsi Sulawesi Tenggara', 'Provinsi', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(708, '1', 'Kabupaten Bombana', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(709, '2', 'Kabupaten Buton', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(710, '3', 'Kabupaten Buton Selatan', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(711, '4', 'Kabupaten Buton Tengah', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(712, '5', 'Kabupaten Buton Utara', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(713, '6', 'Kabupaten Kolaka', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(714, '7', 'Kabupaten Kolaka Timur', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(715, '8', 'Kabupaten Kolaka Utara', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(716, '9', 'Kabupaten Konawe', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(717, '10', 'Kabupaten Konawe Kepulauan', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(718, '11', 'Kabupaten Konawe Selatan', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(719, '12', 'Kabupaten Konawe Utara', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(720, '13', 'Kabupaten Muna', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(721, '14', 'Kabupaten Muna Barat', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(722, '15', 'Kabupaten Wakatobi', 'Kabupaten', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(723, '16', 'Kota Baubau', 'Kota ', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(724, '17', 'Kota Kendari', 'Kota ', 'Sulawesi Tenggara', 'Sulawesi', '2'),
(725, 'XXVIII', 'Provinsi Bali', 'Provinsi', 'Bali', 'Jawa-Bali', '1'),
(726, '1', 'Kabupaten Badung', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(727, '2', 'Kabupaten Bangli', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(728, '3', 'Kabupaten Buleleng', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(729, '4', 'Kabupaten Gianyar', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(730, '5', 'Kabupaten Jembrana', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(731, '6', 'Kabupaten Karangasem', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(732, '7', 'Kabupaten Klungkung', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(733, '8', 'Kabupaten Tabanan', 'Kabupaten', 'Bali', 'Jawa-Bali', '1'),
(734, '9', 'Kota Denpasar', 'Kota ', 'Bali', 'Jawa-Bali', '1'),
(735, 'XXIX', 'Provinsi Nusa Tenggara Barat', 'Provinsi', 'NTB', 'Nusampua', '2'),
(736, '1', 'Kabupaten Bima', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(737, '2', 'Kabupaten Dompu', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(738, '3', 'Kabupaten Lombok Barat', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(739, '4', 'Kabupaten Lombok Timur', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(740, '5', 'Kabupaten Lombok Utara', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(741, '6', 'Kabupaten Sumbawa', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(742, '7', 'Kabupaten Sumbawa Barat', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(743, '8', 'Kabupaten Lombok Tengah', 'Kabupaten', 'NTB', 'Nusampua', '2'),
(744, '9', 'Kota Bima', 'Kota ', 'NTB', 'Nusampua', '2'),
(745, '10', 'Kota Mataram', 'Kota ', 'NTB', 'Nusampua', '2'),
(746, 'XXX', 'Provinsi Nusa Tenggara Timur', 'Provinsi', 'NTT', 'Nusampua', '2'),
(747, '1', 'Kabupaten Alor', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(748, '2', 'Kabupaten Belu', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(749, '3', 'Kabupaten Ende', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(750, '4', 'Kabupaten Flores Timur', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(751, '5', 'Kabupaten Kupang', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(752, '6', 'Kabupaten Lembata', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(753, '7', 'Kabupaten Malaka', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(754, '8', 'Kabupaten Manggarai', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(755, '9', 'Kabupaten Manggarai Barat', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(756, '10', 'Kabupaten Manggarai Timur', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(757, '11', 'Kabupaten Nagekeo', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(758, '12', 'Kabupaten Ngada', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(759, '13', 'Kabupaten Rote Ndao', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(760, '14', 'Kabupaten Sabu Raijua', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(761, '15', 'Kabupaten Sikka', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(762, '16', 'Kabupaten Sumba Barat', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(763, '17', 'Kabupaten Sumba Barat Daya', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(764, '18', 'Kabupaten Sumba Tengah', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(765, '19', 'Kabupaten Sumba Timur', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(766, '20', 'Kabupaten Timor Tengah Selatan', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(767, '21', 'Kabupaten Timor Tengah Utara', 'Kabupaten', 'NTT', 'Nusampua', '2'),
(768, '22', 'Kota Kupang', 'Kota ', 'NTT', 'Nusampua', '2'),
(769, 'XXXI', 'Provinsi Maluku', 'Provinsi', 'Maluku', 'Nusampua', '2'),
(770, '1', 'Kabupaten Buru', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(771, '2', 'Kabupaten Buru Selatan', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(772, '3', 'Kabupaten Kepulauan Aru', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(773, '4', 'Kabupaten Maluku Barat Daya', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(774, '5', 'Kabupaten Maluku Tengah', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(775, '6', 'Kabupaten Maluku Tenggara', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(776, '7', 'Kabupaten Kepulauan Tanimbar', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(777, '8', 'Kabupaten Seram Bagian Barat', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(778, '9', 'Kabupaten Seram Bagian Timur', 'Kabupaten', 'Maluku', 'Nusampua', '2'),
(779, '10', 'Kota Ambon', 'Kota ', 'Maluku', 'Nusampua', '2'),
(780, '11', 'Kota Tual', 'Kota ', 'Maluku', 'Nusampua', '2'),
(781, 'XXXII', 'Provinsi Maluku Utara', 'Provinsi', 'Maluku Utara', 'Nusampua', '2'),
(782, '1', 'Kabupaten Halmahera Barat', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(783, '2', 'Kabupaten Halmahera Selatan', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(784, '3', 'Kabupaten Halmahera Tengah', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(785, '4', 'Kabupaten Halmahera Timur', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(786, '5', 'Kabupaten Halmahera Utara', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(787, '6', 'Kabupaten Kepulauan Sula', 'Kabupaten ', 'Maluku Utara', 'Nusampua', '2'),
(788, '7', 'Kabupaten Pulau Morotai', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(789, '8', 'Kabupaten Pulau Taliabu', 'Kabupaten', 'Maluku Utara', 'Nusampua', '2'),
(790, '9', 'Kota Ternate', 'Kota ', 'Maluku Utara', 'Nusampua', '2'),
(791, '10', 'Kota Tidore Kepulauan', 'Kota ', 'Maluku Utara', 'Nusampua', '2'),
(792, 'XXXIII', 'Provinsi Papua', 'Provinsi', 'Papua', 'Nusampua', '2'),
(793, '1', 'Kabupaten Jayapura', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(794, '2', 'Kabupaten Keerom', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(795, '3', 'Kabupaten Biak Numfor', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(796, '4', 'Kabupaten Supiori', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(797, '5', 'Kabupaten Sarmi', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(798, '6', 'Kabupaten Kepulauan Yapen', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(799, '7', 'Kabupaten Waropen', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(800, '8', 'Kabupaten Mamberamo Raya', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(801, '9', 'Kota Jayapura', 'Kota ', 'Papua', 'Nusampua', '2'),
(802, 'XXXIV', 'Provinsi Papua Pegunungan', 'Provinsi', 'Papua', 'Nusampua', '2'),
(803, '1', 'Kabupaten Jayawijaya', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(804, '2', 'Kabupaten Mamberamo Tengah', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(805, '3', 'Kabupaten Tolikara', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(806, '4', 'Kabupaten Lanny Jaya', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(807, '5', 'Kabupaten Nduga', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(808, '6', 'Kabupaten Yalimo', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(809, '7', 'Kabupaten Yahukimo', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(810, '8', 'Kabupaten Pegunungan Bintang', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(811, 'XXXV', 'Provinsi Papua Selatan', 'Provinsi', 'Papua', 'Nusampua', '2'),
(812, '1', 'Kabupaten Mappi', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(813, '2', 'Kabupaten Merauke', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(814, '3', 'Kabupaten Asmat', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(815, '4', 'Kabupaten Boven Digoel', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(816, 'XXXVI', 'Provinsi Papua Tengah', 'Provinsi', 'Papua', 'Nusampua', '2'),
(817, '1', 'Kabupaten Nabire', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(818, '2', 'Kabupaten Intan Jaya', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(819, '3', 'Kabupaten Paniai', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(820, '4', 'Kabupaten Puncak Jaya', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(821, '5', 'Kabupaten Mimika', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(822, '6', 'Kabupaten Puncak', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(823, '7', 'Kabupaten Deiyai', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(824, '8', 'Kabupaten Dogiyai', 'Kabupaten', 'Papua', 'Nusampua', '2'),
(825, 'XXXVII', 'Provinsi Papua Barat', 'Provinsi', 'Papua', 'Nusampua', '2'),
(826, '1', 'Kabupaten Kaimana', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(827, '2', 'Kabupaten Fakfak', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(828, '3', 'Kabupaten Teluk Wondama', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(829, '4', 'Kabupaten Manokwari', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(830, '5', 'Kabupaten Manokwari Selatan', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(831, '6', 'Kabupaten Teluk Bintuni', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(832, '7', 'Kabupaten Pegunungan Arfak', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(833, 'XXXVIII', 'Provinsi Papua Barat Daya', 'Provinsi', 'Papua Barat', 'Nusampua', '2'),
(834, '1', 'Kabupaten Raja Ampat', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(835, '2', 'Kabupaten Sorong', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(836, '3', 'Kabupaten Sorong Selatan', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(837, '4', 'Kabupaten Tambrauw', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(838, '5', 'Kabupaten Maybrat', 'Kabupaten', 'Papua Barat', 'Nusampua', '2'),
(839, '6', 'Kota Sorong', 'Kota ', 'Papua Barat', 'Nusampua', '2'),
(841, NULL, 'Bank Indonesia Aceh', NULL, 'col_kpwdn', 'Sumatera', '1'),
(842, NULL, 'Bank Indonesia Lhokseumawe', NULL, 'col_kpwdn', 'Sumatera', '1'),
(843, NULL, 'Bank Indonesia Sumatera Utara', NULL, 'col_kpwdn', 'Sumatera', '1'),
(844, NULL, 'Bank Indonesia Pematang Siantar', NULL, 'col_kpwdn', 'Sumatera', '1'),
(845, NULL, 'Bank Indonesia Sibolga', NULL, 'col_kpwdn', 'Sumatera', '1'),
(846, NULL, 'Bank Indonesia Sumatera Barat', NULL, 'col_kpwdn', 'Sumatera', '1'),
(847, NULL, 'Bank Indonesia Sumatera Selatan', NULL, 'col_kpwdn', 'Sumatera', '1'),
(848, NULL, 'Bank Indonesia Jambi', NULL, 'col_kpwdn', 'Sumatera', '1'),
(849, NULL, 'Bank Indonesia Bengkulu', NULL, 'col_kpwdn', 'Sumatera', '1'),
(850, NULL, 'Bank Indonesia Riau', NULL, 'col_kpwdn', 'Sumatera', '1'),
(851, NULL, 'Bank Indonesia Kepulauan Riau', NULL, 'col_kpwdn', 'Sumatera', '1'),
(852, NULL, 'Bank Indonesia Bangka Belitung', NULL, 'col_kpwdn', 'Sumatera', '1'),
(853, NULL, 'Bank Indonesia Lampung', NULL, 'col_kpwdn', 'Sumatera', '1'),
(854, NULL, 'Bank Indonesia Jawa Tengah', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(855, NULL, 'Bank Indonesia Tegal', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(856, NULL, 'Bank Indonesia Solo', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(857, NULL, 'Bank Indonesia Purwokerto', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(858, NULL, 'Bank Indonesia Banten', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(859, NULL, 'Bank Indonesia Cirebon', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(860, NULL, 'Bank Indonesia DI Yogyakarta', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(861, NULL, 'Bank Indonesia DKI Jakarta', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(862, NULL, 'Bank Indonesia Jawa Barat', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(863, NULL, 'Bank Indonesia Tasikmalaya', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(864, NULL, 'Bank Indonesia Jawa Timur', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(865, NULL, 'Bank Indonesia Jember', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(866, NULL, 'Bank Indonesia Kediri', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(867, NULL, 'Bank Indonesia Malang', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(868, NULL, 'Bank Indonesia Bali', NULL, 'col_kpwdn', 'Jawa-Bali', '1'),
(869, NULL, 'Bank Indonesia NTB', NULL, 'col_kpwdn', 'Nusampua', '2'),
(870, NULL, 'Bank Indonesia NTT', NULL, 'col_kpwdn', 'Nusampua', '2'),
(871, NULL, 'Bank Indonesia Balikpapan', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(872, NULL, 'Bank Indonesia Kalimantan Barat', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(873, NULL, 'Bank Indonesia Kalimantan Selatan', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(874, NULL, 'Bank Indonesia Kalimantan Tengah', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(875, NULL, 'Bank Indonesia Kalimantan Timur', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(876, NULL, 'Bank Indonesia Kalimantan Utara', NULL, 'col_kpwdn', 'Kalimantan', '2'),
(877, NULL, 'Bank Indonesia Gorontalo', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(878, NULL, 'Bank Indonesia Maluku', NULL, 'col_kpwdn', 'Nusampua', '2'),
(879, NULL, 'Bank Indonesia Maluku Utara', NULL, 'col_kpwdn', 'Nusampua', '2'),
(880, NULL, 'Bank Indonesia Papua', NULL, 'col_kpwdn', 'Nusampua', '2'),
(881, NULL, 'Bank Indonesia Papua Barat', NULL, 'col_kpwdn', 'Nusampua', '2'),
(882, NULL, 'Bank Indonesia Sulawesi Barat', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(883, NULL, 'Bank Indonesia Sulawesi Selatan', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(884, NULL, 'Bank Indonesia Sulawesi Tengah', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(885, NULL, 'Bank Indonesia Sulawesi Tenggara', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(886, NULL, 'Bank Indonesia Sulawesi Utara', NULL, 'col_kpwdn', 'Sulawesi', '2'),
(887, NULL, 'Bank Aceh', NULL, 'col_bpd', 'Sumatera', '1'),
(888, NULL, 'BPD Bali', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(889, NULL, 'Bank Bengkulu', NULL, 'col_bpd', 'Sumatera', '1'),
(890, NULL, 'BPD DIY', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(891, NULL, 'Bank DKI', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(892, NULL, 'Bank Jambi', NULL, 'col_bpd', 'Sumatera', '1'),
(893, NULL, 'Bank BJB', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(894, NULL, 'Bank Jateng', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(895, NULL, 'Bank Jatim', NULL, 'col_bpd', 'Jawa-Bali', '1'),
(896, NULL, 'Bank Kalbar', NULL, 'col_bpd', 'Kalimantan', '2'),
(897, NULL, 'Bank Kalsel', NULL, 'col_bpd', 'Kalimantan', '2'),
(898, NULL, 'Bank Kalteng', NULL, 'col_bpd', 'Kalimantan', '2'),
(899, NULL, 'Bank Kaltimtara', NULL, 'col_bpd', 'Kalimantan', '2'),
(900, NULL, 'Bank Lampung', NULL, 'col_bpd', 'Sumatera', '1'),
(901, NULL, 'Bank Malukumalut', NULL, 'col_bpd', 'Nusampua', '2'),
(902, NULL, 'Bank NTB Syariah', NULL, 'col_bpd', 'Nusampua', '2'),
(903, NULL, 'Bank NTT', NULL, 'col_bpd', 'Nusampua', '2'),
(904, NULL, 'Bank Papua', NULL, 'col_bpd', 'Nusampua', '2'),
(905, NULL, 'Bank RiauKepri', NULL, 'col_bpd', 'Sumatera', '1'),
(906, NULL, 'Bank Sulselbar', NULL, 'col_bpd', 'Sulawesi', '2'),
(907, NULL, 'Bank Sulteng', NULL, 'col_bpd', 'Sulawesi', '2'),
(908, NULL, 'Bank Sultra', NULL, 'col_bpd', 'Sulawesi', '2'),
(909, NULL, 'Bank SulutGo', NULL, 'col_bpd', 'Sulawesi', '2'),
(910, NULL, 'Bank Nagari', NULL, 'col_bpd', 'Sumatera', '1'),
(911, NULL, 'Bank Sumsel Babel', NULL, 'col_bpd', 'Sumatera', '1'),
(912, NULL, 'Bank Sumut', NULL, 'col_bpd', 'Sumatera', '1'),
(913, NULL, 'Bank Banten', NULL, 'col_bpd', 'Jawa-Bali', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirm`
--
ALTER TABLE `confirm`
  ADD PRIMARY KEY (`id_confirm`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_register`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`type`,`param`);

--
-- Indexes for table `setting_user`
--
ALTER TABLE `setting_user`
  ADD PRIMARY KEY (`id_user`,`type`);

--
-- Indexes for table `sppjb`
--
ALTER TABLE `sppjb`
  ADD PRIMARY KEY (`id_sppjb`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id_wilayah`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirm`
--
ALTER TABLE `confirm`
  MODIFY `id_confirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id_register` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sppjb`
--
ALTER TABLE `sppjb`
  MODIFY `id_sppjb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id_wilayah` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
