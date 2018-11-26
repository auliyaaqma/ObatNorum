-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 12:37 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `norum`
--

-- --------------------------------------------------------

--
-- Table structure for table `bentuksediaan`
--

CREATE TABLE `bentuksediaan` (
  `kode_bentuksediaan` int(11) NOT NULL,
  `nama_bentuksediaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bentuksediaan`
--

INSERT INTO `bentuksediaan` (`kode_bentuksediaan`, `nama_bentuksediaan`) VALUES
(1, 'Liquid'),
(2, 'Semisolid'),
(3, 'Solid');

-- --------------------------------------------------------

--
-- Table structure for table `dosis`
--

CREATE TABLE `dosis` (
  `kode_dosis` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_dosis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `efeksamping`
--

CREATE TABLE `efeksamping` (
  `kode_efeksamping` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_efeksamping` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` int(11) NOT NULL,
  `nama_golongan` varchar(100) NOT NULL,
  `gambar_golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `nama_golongan`, `gambar_golongan`) VALUES
(1, 'Obat Bebas', 'obat-bebas.png'),
(3, 'Obat Keras', 'obat-keras.png'),
(4, 'Psikotropika', 'narkotika-dan-psikotropika.png'),
(5, 'Narkotika', 'narkotika-dan-psikotropika.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `kode_golongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kegunaan`
--

CREATE TABLE `kegunaan` (
  `kode_kegunaan` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_kegunaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lasa`
--

CREATE TABLE `lasa` (
  `kode_lasa` int(11) NOT NULL,
  `kode_obat1` int(11) NOT NULL,
  `kode_obat2` int(11) NOT NULL,
  `status_lasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kode_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `kandungan_obat` text NOT NULL,
  `carapenggunaan_obat` text NOT NULL,
  `gambar_obat` varchar(100) NOT NULL,
  `indikasiumum_obat` text NOT NULL,
  `deskripsi_obat` text NOT NULL,
  `kemasan_obat` varchar(100) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `kode_bentuksediaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peringatan`
--

CREATE TABLE `peringatan` (
  `kode_peringatan` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_peringatan` text NOT NULL,
  `kontraindikasi_obat` text NOT NULL,
  `interaksi_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bentuksediaan`
--
ALTER TABLE `bentuksediaan`
  ADD PRIMARY KEY (`kode_bentuksediaan`);

--
-- Indexes for table `dosis`
--
ALTER TABLE `dosis`
  ADD PRIMARY KEY (`kode_dosis`),
  ADD KEY `kode_dosis` (`kode_obat`);

--
-- Indexes for table `efeksamping`
--
ALTER TABLE `efeksamping`
  ADD PRIMARY KEY (`kode_efeksamping`),
  ADD KEY `kode_efeksamping` (`kode_obat`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- Indexes for table `kegunaan`
--
ALTER TABLE `kegunaan`
  ADD PRIMARY KEY (`kode_kegunaan`),
  ADD KEY `kode_kegunaan` (`kode_obat`);

--
-- Indexes for table `lasa`
--
ALTER TABLE `lasa`
  ADD PRIMARY KEY (`kode_lasa`),
  ADD KEY `kode_obat1` (`kode_obat1`),
  ADD KEY `kode_obat2` (`kode_obat2`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_bentuksediaan` (`kode_bentuksediaan`);

--
-- Indexes for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD PRIMARY KEY (`kode_peringatan`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bentuksediaan`
--
ALTER TABLE `bentuksediaan`
  MODIFY `kode_bentuksediaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosis`
--
ALTER TABLE `dosis`
  MODIFY `kode_dosis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `efeksamping`
--
ALTER TABLE `efeksamping`
  MODIFY `kode_efeksamping` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `kode_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kode_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegunaan`
--
ALTER TABLE `kegunaan`
  MODIFY `kode_kegunaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lasa`
--
ALTER TABLE `lasa`
  MODIFY `kode_lasa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kode_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peringatan`
--
ALTER TABLE `peringatan`
  MODIFY `kode_peringatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosis`
--
ALTER TABLE `dosis`
  ADD CONSTRAINT `dosis_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `efeksamping`
--
ALTER TABLE `efeksamping`
  ADD CONSTRAINT `efeksamping_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`);

--
-- Constraints for table `kegunaan`
--
ALTER TABLE `kegunaan`
  ADD CONSTRAINT `kegunaan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `lasa`
--
ALTER TABLE `lasa`
  ADD CONSTRAINT `lasa_ibfk_1` FOREIGN KEY (`kode_obat1`) REFERENCES `obat` (`kode_obat`),
  ADD CONSTRAINT `lasa_ibfk_2` FOREIGN KEY (`kode_obat2`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `obat_ibfk_3` FOREIGN KEY (`kode_bentuksediaan`) REFERENCES `bentuksediaan` (`kode_bentuksediaan`);

--
-- Constraints for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD CONSTRAINT `peringatan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
