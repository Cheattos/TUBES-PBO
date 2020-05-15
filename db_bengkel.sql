-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 12:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bengkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_biaya`
--

CREATE TABLE `tb_biaya` (
  `kode_montir` varchar(7) DEFAULT NULL,
  `kode_konsumen` varchar(7) DEFAULT NULL,
  `kode_mobil` varchar(7) DEFAULT NULL,
  `kode_transaksi` varchar(7) DEFAULT NULL,
  `tgl_transaksi` varchar(15) DEFAULT NULL,
  `total_transaksi` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `kode_konsumen` varchar(7) DEFAULT NULL,
  `nama_konsumen` varchar(25) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `kode_mobil` varchar(7) DEFAULT NULL,
  `nama_mobil` varchar(25) DEFAULT NULL,
  `kode_konsumen` varchar(7) DEFAULT NULL,
  `plat_mobil` varchar(15) DEFAULT NULL,
  `kerusakan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_montir`
--

CREATE TABLE `tb_montir` (
  `kode_montir` varchar(7) DEFAULT NULL,
  `nama_montir` varchar(25) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_montir`
--

INSERT INTO `tb_montir` (`kode_montir`, `nama_montir`, `no_hp`, `alamat`, `jenis_kelamin`) VALUES
('M007', 'Manarul Hiadayat', '085367891236', 'Saturnus', 'Laki-Laki'),
('M067', 'Arya Daulat', '085712345678', 'Pluto', 'Laki-Laki'),
('M069', 'Fali Al-Farisi', '081398763425', 'Mars', 'Laki-Laki'),
('M076', 'Muhammad Nasrullah', '081234567890', 'Jupiter', 'Laki-Laki');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
