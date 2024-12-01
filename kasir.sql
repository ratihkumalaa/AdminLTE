-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 06:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `rating` tinyint(1) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `tanggal` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_komentar`
--

INSERT INTO `tb_komentar` (`id`, `komentar`, `rating`, `tanggal`) VALUES
(1, 'Produk ini sangat bagus, pakaian jadi lebih bersih!', 5, '2024-12-01 13:03:19'),
(2, 'Pewangi ini cukup tahan lama, tapi agak mahal.', 4, '2024-12-01 13:03:19'),
(3, 'Tidak terlalu efektif untuk noda yang membandel.', 3, '2024-12-01 13:03:19'),
(6, 'afsddgfsdg', 2, '2024-12-01 22:01:29'),
(7, 'sdsasdf', 1, '2024-12-01 22:01:37'),
(8, 'sddsa', 1, '2024-12-01 22:05:31'),
(9, 'asdasd', 1, '2024-12-01 22:05:43'),
(10, '', 1, '2024-12-01 23:11:00'),
(11, 'ratih', 1, '2024-12-01 23:14:08'),
(12, 'fwefwefw', 1, '2024-12-01 23:33:51'),
(13, 'luar biasa', 5, '2024-12-02 00:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`id`, `jenis`, `nama_paket`, `harga`) VALUES
(1, 'kiloan', 'Cuci Kiloan', 7000),
(2, 'selimut', 'Cuci Selimut', 20000),
(3, 'kaos', 'Cuci Kaos', 7000),
(4, 'bed_cover', 'Cuci Bed Cover', 30000),
(5, 'kiloan', 'Cuci Kilat', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `stok`) VALUES
(1, 'Detergen Premium', 'Detergen berkualitas tinggi untuk pakaian Anda.', 25000, 'detergen_premium.jpg', 100),
(2, 'Pewangi Laundry', 'Pewangi tahan lama untuk pakaian Anda.', 15000, 'pewangi_laundry.jpg', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode_invoice` varchar(50) DEFAULT NULL,
  `status` enum('Baru','Proses','Selesai','Diambil') DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `tanggal_dibayar` datetime DEFAULT NULL,
  `dibayar` enum('Sudah','Belum') DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `nama`, `kode_invoice`, `status`, `pelanggan`, `tanggal`, `batas_waktu`, `tanggal_dibayar`, `dibayar`, `total`) VALUES
(29, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00),
(30, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00),
(31, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00),
(32, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00),
(33, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00),
(34, '', '2024/10/20-01', 'Proses', 'Rahma', '2024-10-21 13:21:00', '2024-10-23 13:21:00', '2024-10-27 23:47:00', 'Sudah', 24000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
