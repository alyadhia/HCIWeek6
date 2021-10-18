-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2020 at 03:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(5) NOT NULL,
  `matakul` varchar(32) DEFAULT NULL,
  `judul` varchar(64) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis` int(2) DEFAULT 1 COMMENT '1 = individu, 2 = kelompok',
  `deadline` date DEFAULT NULL,
  `selesai` int(2) DEFAULT 0 COMMENT '0 = belum selesai, 1 = selesai',
  `id_owner` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `matakul`, `judul`, `deskripsi`, `jenis`, `deadline`, `selesai`, `id_owner`) VALUES
(2, 'Pemrograman Berorientasi Objek', 'Membuat program', 'Membuat dua buat program yang mengimplementaasikan:\r\n<ol>\r\n<li><h4>Pilih salah satu:</h4>\r\n<ul>\r\n<li>try - catch</li>\r\n<li>throw - catch</li>\r\n<li>throws - catch</li>\r\n<li>finnaly</li>\r\n</ul>\r\n</li>\r\n<li><h4>Buat exception sendiri</h4></li>\r\n</ol>\r\n<br>\r\nKetentuan:<br>\r\n<ul>\r\n<li>Tugas ini dipesentasikan oleh salah seorang dari anggota kelompok</li>\r\n<li>Programnya bisa jalan</li>\r\n<li>Presentasi bagus</li>\r\n</ul>', 2, '2015-01-01', 1, 0),
(6, 'Statistika', 'Mengerjakan Soal', 'Kerjakan soal masalah R tabel, Z tabel, T tabel, dan Chi Square', 0, '2015-01-02', 0, 0),
(7, 'Pemrograman Web', 'Membuat Web', 'Buatlah web dilengkapi dengan CRUD', 2, '2015-01-10', 1, 0),
(9, 'Teknologi Multimedia', 'Membuat Video', 'Buat video effek menghilang', 0, '2014-12-18', 0, 0),
(10, 'Komputer dan Masyarakat', 'Makalah', 'Membuat makalah tentang dampak positif dan negatif Teknologi informasi', 0, '2014-12-27', 0, 0),
(11, 'Praktikum Multimedia', 'Animasi After Effek', 'Membuat animisai sedehana dengan after effek', 0, '2015-01-06', 1, 0),
(12, 'Statistika', 'Tugas 2', 'Mengerjakan soal untuk tuas 2', 0, '2015-01-16', 1, 0),
(16, 'Pemrograman Web', 'Project Akhir', 'membuat aplikasi berbasis web', 1, '2020-05-15', 0, 21),
(18, 'PSSI', 'Evaluasi', 'VRIO', 0, '2020-05-12', 0, 22),
(20, 'Pemrograman Web', 'Project Akhir', 'Membuat aplikasi berbasis web', 0, '2020-05-15', 0, 24),
(22, 'Administrasi Basis Data', 'UAS', 'Ujian', 1, '2020-05-17', 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` char(60) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'ardi', 'pabw', 'Ardiyansah'),
(12, 'metalzero456', '$2y$10$jhu59sW012Pb2kxooeMFBuSQbtXJS1TYk/tOIUZX.AvEOW/s/szH6', 'Rafif'),
(21, 'ardiy', '$2y$10$o9H5VDT4asHxWPO79jFKNeAPMM4yYMlQLertejV9iK0ETWGd0.tRK', 'arddddd'),
(22, 'lukas', '$2y$10$UWNijkj.jYM1tlmNelQ12OhfmFhabPKsdJvlQ1syhleSrAaX.EAJG', 'lukasss'),
(23, 'rama', '$2y$10$5p16xrMHFJCTii2aet.atei/9dHF.69proylZTYWHHHIwUqzTHu1C', 'ramadhan'),
(24, 'shafa', '$2y$10$LTZES1aaToz8hs2SkDbfoeRiXL0vcYYdNCxYDU1yN/.itDlFeZ35y', 'shafa dindut'),
(25, 'fajar', '$2y$10$7jYrEQpHP1y4PNddKoPmn.7pAl/rHztiRXNmIeE/NI5fhRqraj3f6', 'fajarr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
