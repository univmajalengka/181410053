-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2020 pada 11.06
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
-- Database: `sistem_informasi_jual_beli_hardware`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasok`
--

CREATE TABLE `pemasok` (
  `Kode_pemasok` varchar(100) NOT NULL,
  `Nama_Pemasok` varchar(100) NOT NULL,
  `No_Telpon` int(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `pemasok`
--

INSERT INTO `pemasok` (`Kode_pemasok`, `Nama_Pemasok`, `No_Telpon`, `Alamat`) VALUES
('ASD11', 'SAHRONI', 881798665, 'MAJALENGKA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `No_Nota` varchar(100) NOT NULL,
  `Tgl_Beli` date NOT NULL,
  `Kode_Pemasok` varchar(100) NOT NULL,
  `Kode_Barang` varchar(100) NOT NULL,
  `Harga_Beli` int(100) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Sub_Total` int(100) NOT NULL,
  `Total` int(100) NOT NULL,
  `UserID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`No_Nota`, `Tgl_Beli`, `Kode_Pemasok`, `Kode_Barang`, `Harga_Beli`, `Jumlah`, `Sub_Total`, `Total`, `UserID`) VALUES
('0001', '2020-03-02', 'ASD11', '001', 180000, 10, 1800000, 1800000, 'ASD11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguana`
--

CREATE TABLE `pengguana` (
  `UserID` varchar(100) NOT NULL,
  `PassID` varchar(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `pengguana`
--

INSERT INTO `pengguana` (`UserID`, `PassID`, `Nama`, `Jenis_Kelamin`) VALUES
('ADN111', 'MJL123OK', 'UDIN', 'Laki-laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `No_Nota` varchar(100) NOT NULL,
  `Tgl_Nota` date NOT NULL,
  `Kode_Barang` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Sub_Total` int(100) NOT NULL,
  `Total` int(100) NOT NULL,
  `UserID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`No_Nota`, `Tgl_Nota`, `Kode_Barang`, `Harga_Jual`, `Jumlah`, `Sub_Total`, `Total`, `UserID`) VALUES
('0011', '2020-03-05', '001', 200000, 1, 200000, 200000, 'ASD11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `Kode_Barang` varchar(100) NOT NULL,
  `Nama_barang` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Harga_Beli` int(100) NOT NULL,
  `Stok` int(100) NOT NULL,
  `Kode_Jenis_Barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`Kode_Barang`, `Nama_barang`, `Harga_Jual`, `Harga_Beli`, `Stok`, `Kode_Jenis_Barang`) VALUES
('001', 'KEYBORD 001', 200000, 180000, 20, 'KBD1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jenis_barang`
--

CREATE TABLE `tabel_jenis_barang` (
  `Kode_Jenis_Barang` varchar(100) NOT NULL,
  `Nama_Jenis_Barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

--
-- Dumping data untuk tabel `tabel_jenis_barang`
--

INSERT INTO `tabel_jenis_barang` (`Kode_Jenis_Barang`, `Nama_Jenis_Barang`) VALUES
('KBD1', 'KEYBORD');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`Kode_pemasok`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`No_Nota`),
  ADD KEY `Kode_Pemasok` (`Kode_Pemasok`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `pengguana`
--
ALTER TABLE `pengguana`
  ADD PRIMARY KEY (`UserID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`No_Nota`),
  ADD KEY `Kode_Barang` (`Kode_Barang`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`Kode_Barang`),
  ADD KEY `Kode_Jenis_Barang` (`Kode_Jenis_Barang`);

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
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`Kode_Pemasok`) REFERENCES `pemasok` (`Kode_pemasok`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `penjualan` (`UserID`);

--
-- Ketidakleluasaan untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD CONSTRAINT `tabel_barang_ibfk_1` FOREIGN KEY (`Kode_Jenis_Barang`) REFERENCES `tabel_jenis_barang` (`Kode_Jenis_Barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
