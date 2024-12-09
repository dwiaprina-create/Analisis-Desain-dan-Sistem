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
-- Table structure for table `amggota`
--

CREATE TABLE `amggota` (
  `ID Anggota` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Alamat` int(11) NOT NULL,
  `No telepon` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Tanggal bergabung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID buku` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Penulis` varchar(255) NOT NULL,
  `Penerbit` year(4) NOT NULL,
  `Tahun terbit` int(11) NOT NULL,
  `Kategori` varchar(100) NOT NULL,
  `Jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID Peminjam` int(11) NOT NULL,
  `ID Anggota` int(11) NOT NULL,
  `ID Buku` int(11) NOT NULL,
  `Tanggal Pinjam` date NOT NULL,
  `Tanggal Kembali` date NOT NULL,
  `Status Pengembalian` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `ID Petugas` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `No telepon` varchar(15) NOT NULL,
  `Email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi peminjaman`
--

CREATE TABLE `transaksi peminjaman` (
  `ID Transaksi` int(11) NOT NULL,
  `ID Peminjam` int(11) NOT NULL,
  `ID Petugas` int(11) NOT NULL,
  `Tanggal transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amggota`
--
ALTER TABLE `amggota`
  ADD PRIMARY KEY (`ID Anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID Peminjam`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`ID Petugas`);

--
-- Indexes for table `transaksi peminjaman`
--
ALTER TABLE `transaksi peminjaman`
  ADD PRIMARY KEY (`ID Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
