-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 05:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `balita`
--

CREATE TABLE `balita` (
  `id` int(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bmi`
--

CREATE TABLE `bmi` (
  `id` int(11) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tengah` float NOT NULL,
  `bawah` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmi`
--

INSERT INTO `bmi` (`id`, `usia`, `jenis_kelamin`, `tengah`, `bawah`) VALUES
(1, 0, 'L', 3.5, 2.5),
(2, 1, 'L', 4.4, 3.3),
(3, 2, 'L', 5.4, 4.2),
(4, 3, 'L', 6.4, 5),
(5, 4, 'L', 7, 5.6),
(6, 5, 'L', 7.5, 6),
(7, 6, 'L', 7.9, 6.4),
(8, 7, 'L', 8.3, 6.7),
(9, 8, 'L', 8.7, 6.9),
(10, 9, 'L', 8.9, 7.3),
(11, 10, 'L', 9.3, 7.6),
(12, 11, 'L', 9.4, 7.6),
(13, 12, 'L', 9.7, 7.8),
(14, 0, 'P', 3.3, 2.4),
(15, 1, 'P', 4.2, 3.1),
(16, 2, 'P', 5, 4.8),
(17, 3, 'P', 5.8, 4.5),
(18, 4, 'P', 6.4, 5),
(19, 5, 'P', 6.9, 5.4),
(20, 6, 'P', 7.3, 5.8),
(21, 7, 'P', 7.3, 6),
(22, 8, 'P', 8, 6.3),
(23, 9, 'P', 8.3, 6.5),
(24, 10, 'P', 8.5, 6.7),
(25, 11, 'P', 8.8, 6.9),
(26, 12, 'P', 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(3) NOT NULL,
  `id_bayi` int(3) NOT NULL,
  `tanggal_periksa` date DEFAULT NULL,
  `berat_badan` float DEFAULT NULL,
  `pola_makan` varchar(255) DEFAULT NULL,
  `gangguan_pencernaan` varchar(255) DEFAULT NULL,
  `nutrisi_ibu` varchar(255) DEFAULT NULL,
  `ekonomi_ibu` varchar(255) DEFAULT NULL,
  `status_kesehatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balita`
--
ALTER TABLE `balita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmi`
--
ALTER TABLE `bmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bayi` (`id_bayi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balita`
--
ALTER TABLE `balita`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bmi`
--
ALTER TABLE `bmi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`id_bayi`) REFERENCES `balita` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
