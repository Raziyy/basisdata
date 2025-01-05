-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 03:24 PM
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
-- Database: `toko_pulsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` int(11) NOT NULL,
  `Nama_Barang` varchar(100) NOT NULL,
  `Harga_Barang` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Harga_Barang`) VALUES
(1, 'Telkomsel 5000', 5700),
(2, 'Telkomsel 10000', 10700),
(3, 'Telkomsel 20000', 20700),
(4, 'Telkomsel 30000', 30700),
(5, 'Telkomsel 50000', 50700),
(6, 'Indosat 5000', 5500),
(7, 'Indosat 10000', 10500),
(8, 'Indosat 20000', 20500),
(9, 'Indosat 30000', 30500),
(10, 'Indosat 50000', 50500),
(11, 'Three 5000', 5500),
(12, 'Three 10000', 10500),
(13, 'Three 20000', 20500),
(14, 'Three 30000', 30500),
(15, 'Three 50000', 50500),
(16, 'XL 5000', 5800),
(17, 'XL 10000', 10800),
(18, 'XL 20000', 20800),
(19, 'XL 30000', 30800),
(20, 'XL 50000', 50800);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `NoTelp_Pembeli` bigint(20) NOT NULL,
  `Nama_Pembeli` varchar(100) DEFAULT NULL,
  `Jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`NoTelp_Pembeli`, `Nama_Pembeli`, `Jumlah`) VALUES
(6281382221356, 'Lisa', 30000),
(6281735592882, 'Dinda', 10000),
(6282724050662, 'Asri', 30000),
(6282878907512, 'Keiza', 20000),
(6283357332189, 'Yeri', 10000),
(6283579023422, 'Wendi', 20000),
(6283818206034, 'Rose', 20000),
(6285259877688, 'Billi', 30000),
(6285710750840, 'Krisna', 20000),
(6285743675445, 'Ziva', 5000),
(6285766246376, 'Pita', 20000),
(6285782277592, 'Bruno', 50000),
(6285813520402, NULL, 10000),
(6285899862153, 'Bisma', 10000),
(6286692675902, 'Eki', 50000),
(6289509099421, NULL, 15000),
(6289562997231, 'Reza', 5000),
(62895403278340, 'Andini', 5000),
(62896453382911, NULL, 50000),
(62897030583829, 'Audie', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE `penjual` (
  `ID_Penjual` int(11) NOT NULL,
  `Nama_Penjual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`ID_Penjual`, `Nama_Penjual`) VALUES
(1, 'Al Fatih'),
(2, 'Raziy'),
(3, 'Fazril'),
(4, 'Andi Ode'),
(5, 'Andhika'),
(6, 'Bambang'),
(7, 'Bima'),
(8, 'Chika'),
(9, 'Dimas'),
(10, 'Ernanda'),
(11, 'Fauzi'),
(12, 'Firman'),
(13, 'Kenan'),
(14, 'Lina'),
(15, 'Mirna'),
(16, 'Nabila'),
(17, 'Priska'),
(18, 'Rita Ora'),
(19, 'Sinta Uya'),
(20, 'Tiara');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(11) NOT NULL,
  `Tanggal_Transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_Barang` int(11) DEFAULT NULL,
  `ID_Penjual` int(11) DEFAULT NULL,
  `NoTelp_Pembeli` bigint(20) DEFAULT NULL,
  `Status_Transaksi` enum('Berhasil','Proses','Gagal') DEFAULT NULL,
  `Total_Bayar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `Tanggal_Transaksi`, `ID_Barang`, `ID_Penjual`, `NoTelp_Pembeli`, `Status_Transaksi`, `Total_Bayar`) VALUES
(1, '2024-12-31 10:44:24', 4, 1, 6281382221356, 'Berhasil', 32000),
(2, '2024-12-31 10:44:24', 17, 1, 6281735592882, 'Berhasil', 12000),
(3, '2024-12-31 10:59:41', 4, 2, 6282724050662, 'Gagal', 32000),
(4, '2024-12-31 10:59:41', 3, 2, 6282878907512, 'Berhasil', 22000),
(5, '2024-12-31 11:05:59', 17, 3, 6283357332189, 'Berhasil', 12000),
(6, '2024-12-31 11:05:59', 18, 3, 6283579023422, 'Berhasil', 22000),
(7, '2024-12-31 11:10:43', 9, 3, 6285259877688, 'Berhasil', 32000),
(8, '2024-12-31 11:10:43', 8, 3, 6285710750840, 'Berhasil', 22000),
(9, '2024-12-31 11:10:43', 6, 3, 6285743675445, 'Berhasil', 7000),
(10, '2024-12-31 11:18:42', 8, 4, 6285766246376, 'Berhasil', 22000),
(11, '2024-12-31 11:18:42', 10, 4, 6285782277592, 'Berhasil', 52000),
(12, '2024-12-31 11:18:42', 7, 4, 6285813520402, 'Gagal', 12000),
(13, '2024-12-31 11:18:42', 7, 4, 6285899862153, 'Berhasil', 12000),
(33, '2024-12-31 11:43:13', 10, 6, 6286692675902, 'Berhasil', 52000),
(34, '2024-12-31 11:43:13', 12, 6, 6289509099421, 'Gagal', 12000),
(35, '2024-12-31 11:43:13', 11, 7, 6289562997231, 'Berhasil', 7000),
(41, '2024-12-31 11:48:06', 11, 10, 62895403278340, 'Berhasil', 7000),
(42, '2024-12-31 11:48:06', 15, 10, 62896453382911, 'Berhasil', 52000),
(43, '2024-12-31 11:48:06', 14, 11, 62897030583829, 'Berhasil', 32000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`NoTelp_Pembeli`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`ID_Penjual`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Barang` (`ID_Barang`),
  ADD KEY `ID_Penjual` (`ID_Penjual`),
  ADD KEY `NoTelp_Pembeli` (`NoTelp_Pembeli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ID_Barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penjual`
--
ALTER TABLE `penjual`
  MODIFY `ID_Penjual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Barang`) REFERENCES `barang` (`ID_Barang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Penjual`) REFERENCES `penjual` (`ID_Penjual`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`NoTelp_Pembeli`) REFERENCES `pembeli` (`NoTelp_Pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
