-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2020 pada 15.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

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
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `UserID` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No_Telpon` varchar(100) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `JK` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`UserID`, `Nama`, `No_Telpon`, `Alamat`, `JK`) VALUES
('MJK01', 'Nur Rahma', '0881798665', 'Majalengka', 'P'),
('MJK02', 'Udin', '0888635341', 'Rajagaluh', 'L'),
('MJK03', 'Uman', '0877566465', 'Cikijing', 'L'),
('MJK04', 'Asep', '0865254264', 'Majalengka', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasok`
--

CREATE TABLE `pemasok` (
  `Kode_Pemasok` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No_Telpon` varchar(50) NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemasok`
--

INSERT INTO `pemasok` (`Kode_Pemasok`, `Nama`, `No_Telpon`, `Kode_Barang`, `Nama_Barang`) VALUES
('PSK01', 'Firman', '0888565412', 'BR0011', 'Keybord type1'),
('PSK02', 'Abdul', '0883674476', 'BR0021', 'Hard disk 500GB'),
('PSK03', 'Iman', '0886776453', 'BR0031', 'Monitor'),
('PSK04', 'Rizal', '0899975233', 'BR0041', 'Mouse');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
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
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`No_Nota`, `Kode_Barang`, `Nama_Barang`, `Kode_Pemasok`, `Harga_Beli`, `Jumlah`, `Tanggal`, `Nama_Pemasok`, `Jumlah_Harga`) VALUES
('001', 'BR0011', 'Keybord type1', 'PSK01', 180000, '10', '2020-02-11', 'Firman', 18000000),
('002', 'BR0021', 'Hard disk 500GB', 'PSK02', 250000, '5', '2020-02-12', 'Abdul', 1250000),
('003', 'BR0031', 'Monitor', 'PSK03', 150000, '5', '2020-02-14', 'Iman', 750000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `No_Nota` varchar(50) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `Nama_pembeli` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jumlah_beli` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Harga` float NOT NULL,
  `Harga_Total` float NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
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
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`Kode_Barang`, `Kode_Jenis_Barang`, `Nama_Barang`, `Harga_Jual`, `Harga_Beli`, `Stok`) VALUES
('BR0011', 'KJB1', 'Keybord type 1', 200000, 180000, '20'),
('BR0012', 'KJB1', 'Keybord type2', 220000, 190000, '20'),
('BR0021', 'KJB2', 'Hard disk 500GB', 300000, 250000, '10'),
('BR0022', 'KJB2', 'Hard disk 1024GB', 550000, 500000, '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jenis_barang`
--

CREATE TABLE `tabel_jenis_barang` (
  `Kode_Jenis_Barang` varchar(50) NOT NULL,
  `Nama_Jenis_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_jenis_barang`
--

INSERT INTO `tabel_jenis_barang` (`Kode_Jenis_Barang`, `Nama_Jenis_Barang`) VALUES
('KJB1', 'Keybord'),
('KJB2', 'Hard Disk'),
('KJB3', 'Monitor'),
('KJB4', 'Mouse');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`);

--
-- Indeks untuk tabel `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`Kode_Pemasok`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`No_Nota`),
  ADD KEY `Kode_Barang` (`Kode_Barang`),
  ADD KEY `Kode_Pemasok` (`Kode_Pemasok`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`No_Nota`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`Kode_Barang`),
  ADD KEY `Nama_Jenis_Barang` (`Kode_Jenis_Barang`);

--
-- Indeks untuk tabel `tabel_jenis_barang`
--
ALTER TABLE `tabel_jenis_barang`
  ADD PRIMARY KEY (`Kode_Jenis_Barang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`Kode_Pemasok`) REFERENCES `pemasok` (`Kode_Pemasok`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`Kode_Barang`) REFERENCES `pemasok` (`Kode_Barang`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `member` (`UserID`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`Kode_Barang`) REFERENCES `tabel_barang` (`Kode_Barang`);

--
-- Ketidakleluasaan untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD CONSTRAINT `tabel_barang_ibfk_1` FOREIGN KEY (`Kode_Jenis_Barang`) REFERENCES `tabel_jenis_barang` (`Kode_Jenis_Barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
