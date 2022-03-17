-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 09:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi-pemesanan-hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitashotel`
--

CREATE TABLE `fasilitashotel` (
  `id_fasilitas_hotel` int(11) NOT NULL,
  `nama_fasilitas_hotel` varchar(50) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitashotel`
--

INSERT INTO `fasilitashotel` (`id_fasilitas_hotel`, `nama_fasilitas_hotel`, `gambar`, `keterangan`) VALUES
(9, 'Kamar Mandi Dalam', './assets/img/asda.jpg', 'Kamar Mandi Yang di lengkapi dengan segala macam kebutuhan'),
(10, 'Free Laptopnya Rizky Cahya', './assets/img/kamar1.jpg', 'Spek High End Dijual Mahal');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `id_kamar_tipe` int(11) DEFAULT NULL,
  `nomor_kamar` int(11) DEFAULT NULL,
  `max_dewasa` int(11) DEFAULT NULL,
  `max_anak` int(11) DEFAULT NULL,
  `status_kamar` enum('Kosong','Terisi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_kamar_tipe`, `nomor_kamar`, `max_dewasa`, `max_anak`, `status_kamar`) VALUES
(1, 2, 19, 2, 1, 'Kosong'),
(2, 4, 5, 2, 1, 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `kode_booking` varchar(50) DEFAULT NULL,
  `tanggal_in` date DEFAULT NULL,
  `jam_in` time DEFAULT NULL,
  `tanggal_out` date DEFAULT NULL,
  `jam_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `nik`, `kode_booking`, `tanggal_in`, `jam_in`, `tanggal_out`, `jam_out`) VALUES
(17, '6643171159010024', 'WCYICWPMV3OHMZ07', '2022-03-12', '13:36:00', '2022-03-20', '11:35:00'),
(18, '6611423110021002', 'SGGAU7O7SO3HYAGL', '2022-03-13', '14:46:00', '2022-03-17', '13:45:00'),
(19, '647113224556167', 'VIM8TZR7CUDDXO8C', '2022-03-13', '13:47:00', '2022-03-18', '13:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `tipe_identitas` enum('KTP','SIM','Passport') DEFAULT NULL,
  `nomor_identitas` varchar(20) DEFAULT NULL,
  `kewarganegaraan` enum('WNI','WNA') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nik`, `nama_depan`, `nama_belakang`, `tipe_identitas`, `nomor_identitas`, `kewarganegaraan`, `alamat`, `no_hp`, `email`) VALUES
(138, '6643171159010024', 'Joko', 'Kariyan', 'KTP', '4173386292', 'WNI', 'Kebon Jeruk Jakarta Barat', '087771592871', 'lipinus123@gmail.com'),
(139, '6643171159010024', 'Joko', 'Kariyan', 'KTP', '4173386292', 'WNI', 'Kebon Jeruk Jakarta Barat', '087771592871', 'lipinus123@gmail.com'),
(140, '6611423110021002', 'radian', 'tadina', 'KTP', '82761782', 'WNI', 'Kebun Raya', '0855142311224', 'radianto@gmail.com'),
(141, '647113224556167', 'Stepan', 'stpanus', 'KTP', '1142141241', 'WNI', 'Kebun Raya', '087771592871', 'stepanus@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tipekamar`
--

CREATE TABLE `tipekamar` (
  `id_kamar_tipe` int(11) NOT NULL,
  `nama_kamar_tipe` varchar(50) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipekamar`
--

INSERT INTO `tipekamar` (`id_kamar_tipe`, `nama_kamar_tipe`, `fasilitas`, `gambar`, `harga`) VALUES
(20, 'Executive Suite', 'FREEEE', './assets/img/kamar1.jpg', '100000000'),
(21, 'Family', 'Free laptop', './assets/img/kamar2.jpg', '325000000000'),
(22, 'Standard Room', 'Free Minuman Dingin', './assets/img/Kamar4.jpg', '2500000'),
(23, 'Standard Room', '2 Tempat Tidur', './assets/img/roberto-nickson-emqnSQwQQDo-unsplash.jpg', '15000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` enum('Administrator','Resepsionis') NOT NULL,
  `akses_terakhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`, `akses_terakhir`) VALUES
(15, 'naga', 'b1bd5d407c76e58bb22b340548816c3d', 'bonarnaga', 'Administrator', '2020-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitashotel`
--
ALTER TABLE `fasilitashotel`
  ADD PRIMARY KEY (`id_fasilitas_hotel`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`) USING BTREE;

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`) USING BTREE;

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`) USING BTREE;

--
-- Indexes for table `tipekamar`
--
ALTER TABLE `tipekamar`
  ADD PRIMARY KEY (`id_kamar_tipe`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitashotel`
--
ALTER TABLE `fasilitashotel`
  MODIFY `id_fasilitas_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12516;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `id_kamar_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
