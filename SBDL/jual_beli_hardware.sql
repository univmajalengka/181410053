-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 06:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jual_beli_hardware`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `UserID` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No_Telpon` varchar(100) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `JK` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`UserID`, `Nama`, `No_Telpon`, `Alamat`, `JK`) VALUES
('1', 'udin', '088', 'majalengka', 'L'),
('2', 'neng', 'ooo', 'majalengka', 'P'),
('3', 'omar', '001', 'cigasong', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `pemasok`
--

CREATE TABLE `pemasok` (
  `Kode_Pemasok` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No_Telpon` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasok`
--

INSERT INTO `pemasok` (`Kode_Pemasok`, `Nama`, `No_Telpon`, `Nama_Barang`, `Kode_Barang`) VALUES
('1', 'maman', '018', 'monitor 20inc', '2'),
('2', 'uman', '002', 'ram 4gb', '3');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `No_Nota` varchar(50) NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Kode_Pemasok` varchar(50) NOT NULL,
  `Harga_Beli` float NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Nama_Pemasok` varchar(50) NOT NULL,
  `Jumlah_Harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`No_Nota`, `Kode_Barang`, `Nama_Barang`, `Kode_Pemasok`, `Harga_Beli`, `Jumlah`, `Tanggal`, `Nama_Pemasok`, `Jumlah_Harga`) VALUES
('1', '2', 'monitor 20inc', '1', 20000, '10', '2020-05-04', 'maman', 200000),
('2', '3', 'ram 4gb', '2', 10000, '10', '2020-05-02', 'uman', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `No_Nota_Pembelian` varchar(50) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `Nama_pembeli` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jumlah_beli` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Harga` float NOT NULL,
  `Harga_Total` float NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`No_Nota_Pembelian`, `UserID`, `Nama_pembeli`, `Nama_Barang`, `Jumlah_beli`, `Tanggal`, `Harga`, `Harga_Total`, `Kode_Barang`) VALUES
('1', '1', 'udin', 'monitor 20inc', '1', '2020-05-01', 200000, 200000, '2'),
('2', '3', 'omar', 'ram 4gb', '1', '2020-04-30', 100000, 100000, '3');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `Kode_Barang` varchar(50) NOT NULL,
  `Kode_Jenis_Barang` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Harga_Jual` float NOT NULL,
  `Harga_Beli` float NOT NULL,
  `Stok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`Kode_Barang`, `Kode_Jenis_Barang`, `Nama_Barang`, `Harga_Jual`, `Harga_Beli`, `Stok`) VALUES
('1', '1', 'monitor lcd', 100000, 10000, '50'),
('2', '1', 'monitor 20inc', 200000, 20000, '4'),
('3', '2', 'ram 4gb', 100000, 10000, '40');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jenis_barang`
--

CREATE TABLE `tabel_jenis_barang` (
  `Kode_Jenis_Barang` varchar(50) NOT NULL,
  `Nama_Jenis_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_jenis_barang`
--

INSERT INTO `tabel_jenis_barang` (`Kode_Jenis_Barang`, `Nama_Jenis_Barang`) VALUES
('1', 'monitor'),
('2', 'memori');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`Kode_Pemasok`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`No_Nota`),
  ADD KEY `Kode_Barang` (`Kode_Barang`),
  ADD KEY `Kode_Pemasok` (`Kode_Pemasok`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`No_Nota_Pembelian`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`Kode_Barang`),
  ADD KEY `Kode_Jenis_Barang` (`Kode_Jenis_Barang`);

--
-- Indexes for table `tabel_jenis_barang`
--
ALTER TABLE `tabel_jenis_barang`
  ADD PRIMARY KEY (`Kode_Jenis_Barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemasok`
--
ALTER TABLE `pemasok`
  ADD CONSTRAINT `pemasok_ibfk_1` FOREIGN KEY (`Kode_Barang`) REFERENCES `tabel_barang` (`Kode_Barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`Kode_Barang`) REFERENCES `tabel_barang` (`Kode_Barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`Kode_Pemasok`) REFERENCES `pemasok` (`Kode_Pemasok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `member` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`Kode_Barang`) REFERENCES `tabel_barang` (`Kode_Barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD CONSTRAINT `tabel_barang_ibfk_1` FOREIGN KEY (`Kode_Jenis_Barang`) REFERENCES `tabel_jenis_barang` (`Kode_Jenis_Barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
