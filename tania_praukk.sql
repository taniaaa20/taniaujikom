-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 06:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tania_praukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` int(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
(4444, 'tanianur', 'taniaa', '999', 67890),
(29765, 'shalsa', 'dea', '789', 89765356),
(171819, 'kania', 'novi', '1111', 897865677),
(345678, 'fgh', 'ok', '23', 34567890),
(7654321, 'Tania', 'nur', '456', 2147483647),
(234567890, 'ade', 'ida', '555', 9876543),
(328560024, 'devira', 'calya', '1010', 856448612),
(329087654, 'nur', 'ani', '67890', 2147483647),
(2147483647, 'Fauziah', 'nuraini', '123', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(16) NOT NULL,
  `tgl_pengaduan` date DEFAULT NULL,
  `nik` int(16) DEFAULT NULL,
  `isi_laporan` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('0','proses','selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(22, '2023-02-26', 2147483647, 'pada hari jumat 24 febuari telah terjadi kecelakaan di yg disebabkan oleh kerusakan jalan yg belum di perbaiki ', 'jalan rusak.jpeg', '0'),
(23, '2023-02-26', 7654321, 'telah terjadi banjir dikawasan subang yg menyebabkan ratusan rumah terendam dan membuat masyarakat harus mengungsi dan membutuhkan bantuan ', 'banjir.jpeg', '0'),
(24, '2023-02-26', 29765, 'disini saya akan melapor perihal masalah terjadinya TAWURAN di daerah kami yg menyebabkan kenyamanan masyarakat disini terganggu dan disini kami berharap semoga bisa segera ditindak lanjuti ', 'tawuran.jpg', 'selesai'),
(25, '2023-02-27', 171819, 'telah terjadi pembunuhan 1 keluarga di kota cimahi', 'pembunuhan.jpg', '0'),
(26, '2023-02-27', 328560024, 'masyarakat cimahi sangat resah dengan adanya komplotan geng motor yang membuat warga ketakutan jiga keluar malam ', 'geng motor.jpg', '0'),
(27, '2023-02-27', 329087654, 'telah terjadinya perampokan di kota bandung yg sangat meresahkan warga  ', 'perampokan.jpg', '0'),
(28, '2023-02-27', 234567890, 'lapar', '', 'selesai'),
(29, '2023-02-27', 345678, 'bencana alam', '', 'selesai'),
(30, '2023-02-27', 4444, 'banjir terjadi sangat dalam', 'banjir.jpeg', 'selesai'),
(31, '2023-02-27', 4444, 'terjadinya berbagai masalah', '', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 2147483647, 'admin'),
(9, 'petugas', 'petugas', 'petugas', 2147483647, 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_pengaduan`, `tanggapan`, `id_petugas`) VALUES
(6, 24, '2023-02-27', '\r\nbaik nnti akan segera di tindak lanjuti oleh pihak berwajib', 24),
(7, 28, '2023-02-27', 'iya\r\n            ', 28),
(9, 30, '2023-02-27', '\r\n            nanti saya urus ', 30),
(10, 31, '2023-02-27', '\r\n            saya menanggapi ', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `nik` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
