-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 08:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan-sederhana-dwicantik`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `No_Telepon` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Tanggal_Bergabung` date NOT NULL,
  PRIMARY KEY (`ID_Anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` int(11) NOT NULL AUTO_INCREMENT,
  `Judul` varchar(255) NOT NULL,
  `Penulis` varchar(255) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Tahun_Terbit` year NOT NULL,
  `Kategori` varchar(100) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  PRIMARY KEY (`ID_Buku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Anggota` int(11) NOT NULL,
  `ID_Buku` int(11) NOT NULL,
  `Tanggal_Pinjam` date NOT NULL,
  `Tanggal_Kembali` date NOT NULL,
  `Status_Pengembalian` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_Peminjaman`),
  FOREIGN KEY (`ID_Anggota`) REFERENCES `anggota` (`ID_Anggota`),
  FOREIGN KEY (`ID_Buku`) REFERENCES `buku` (`ID_Buku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `ID_Petugas` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  `No_Telepon` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_peminjaman`
--

CREATE TABLE `transaksi_peminjaman` (
  `ID_Transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Peminjaman` int(11) NOT NULL,
  `ID_Petugas` int(11) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  PRIMARY KEY (`ID_Transaksi`),
  FOREIGN KEY (`ID_Peminjaman`) REFERENCES `peminjaman` (`ID_Peminjaman`),
  FOREIGN KEY (`ID_Petugas`) REFERENCES `petugas` (`ID_Petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
