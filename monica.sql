-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2019 pada 07.05
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monica`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `nm_peminjam` varchar(10) NOT NULL,
  `lm_pengembalian` varchar(10) NOT NULL,
  `hrg_denda` int(10) NOT NULL,
  `uang_bayar` int(10) NOT NULL,
  `uang_kembali` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`nm_peminjam`, `lm_pengembalian`, `hrg_denda`, `uang_bayar`, `uang_kembali`) VALUES
('aldi', '1 Minggu', 10000, 50000, 40000),
('ali', '1 Minggu', 10000, 20000, 10000),
('dian', '2 Minggu', 20000, 50000, 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `nm_buku` varchar(10) NOT NULL,
  `kd_buku` int(10) NOT NULL,
  `nm_pengarang` varchar(10) NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `thn_penerbit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`nm_buku`, `kd_buku`, `nm_pengarang`, `penerbit`, `thn_penerbit`) VALUES
('Manchester', 1, 'Fergusson', 'Manchester', 1999);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nm_peminjam` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `jdl_buku` varchar(20) NOT NULL,
  `kd_buku` int(10) NOT NULL,
  `tgl_peminjaman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`nm_peminjam`, `alamat`, `jdl_buku`, `kd_buku`, `tgl_peminjaman`) VALUES
('aldi', 'grogol', 'ilmu', 1, '21-05-19'),
('ali', 'cemani', 'cerita', 5, '12-12-12'),
('amir', 'semanggi', 'pengetahuan', 3, '17-07-19'),
('dian', 'solo', 'pengetahuan', 3, '03-12-19'),
('elsa', 'klaten', 'ilmu', 1, '17-07-19'),
('salsa', 'tipes', 'masak', 4, '03-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('monica', 12345);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`nm_peminjam`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`nm_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`nm_peminjam`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
