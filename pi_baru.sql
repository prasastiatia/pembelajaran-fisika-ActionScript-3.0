-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2018 at 04:38 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pi_baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `no_absen` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kelas`, `no_absen`) VALUES
('\r121311456', 'Dwi Prasetyo\r', '', '12'),
('', '', '', ''),
('11115120\r', '', '', ''),
('11115193\r', 'Ayunda Maudiatama\r', '', '13'),
('11115194\r', 'Ayunda Maudiatama\r', '', '12'),
('121310356\r', 'Siti Alifah\r', '81\r', '36'),
('121347211\r', 'Dwi Prasetyo\r', '85\r', '12'),
('12136021\r', 'Prasastiaa\r', '86\r', '34'),
('15102015\r', 'Prasastia Aryani Saliha\r', '86\r', '36'),
('15115364\r', 'Prasastia Aryani\r', '', '36'),
('16115120\r', 'Rizka Andriani\r', '82\r', '35');

-- --------------------------------------------------------

--
-- Table structure for table `skor`
--

CREATE TABLE `skor` (
  `id` int(11) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skor`
--

INSERT INTO `skor` (`id`, `nis`, `nama`, `nilai`) VALUES
(5, '', '', 0),
(6, '12136021\r', 'Prasastiaa\r', 75),
(7, '12136021\r', 'Prasastiaa\r', 80),
(8, '121310356\r', 'Siti Alifah\r', 70),
(9, '', '', 0),
(10, '', '', 0),
(11, '121347211\r', 'Dwi Prasetyo\r', 85),
(12, '15102015\r', 'Prasastia Aryani Saliha\r', 85),
(13, '15102015\r', 'Prasastia Aryani Saliha\r', 75);

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `nomor` int(11) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nilai_siswa` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`nomor`, `nis`, `nama`, `nilai_siswa`) VALUES
(1, '', '', 0),
(2, '', '', 0),
(3, '121310356\r', 'Siti Alifah\r', 84),
(4, '16115120\r', 'Rizka Andriani\r', 88),
(5, '15102015\r', 'Prasastia Aryani Saliha\r', 92);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `skor`
--
ALTER TABLE `skor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`nomor`),
  ADD KEY `nis1` (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skor`
--
ALTER TABLE `skor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skor`
--
ALTER TABLE `skor`
  ADD CONSTRAINT `nis` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `nis1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
