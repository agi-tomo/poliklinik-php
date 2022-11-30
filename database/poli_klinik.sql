-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 Apr 2008 pada 10.05
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poli_klinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `kode_dokter` varchar(6) NOT NULL,
  `kode_poli` varchar(6) NOT NULL,
  `tgl_kunjungan` date NOT NULL,
  `kode_user` int(11) NOT NULL,
  `nama_dokter` varchar(35) NOT NULL,
  `SIP` int(4) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan`
--

CREATE TABLE `kunjungan` (
  `tgl_kunjungan` date NOT NULL,
  `no_pasien` int(6) NOT NULL,
  `kode_poli` varchar(6) NOT NULL,
  `jam_kunjungan` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laboraturium`
--

CREATE TABLE `laboraturium` (
  `kode_lab` varchar(6) NOT NULL,
  `no_rm` int(6) NOT NULL,
  `hasil_lab` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `kode_user` varchar(6) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('admin','dokter','pegawai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`kode_user`, `username`, `password`, `level`) VALUES
('N00001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('N00002', 'dokter', 'd22af4180eee4bd95072eb90f94930e5', 'dokter'),
('N00003', 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a', 'pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` varchar(6) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jumlah_obat` int(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `no_pasien` int(6) NOT NULL,
  `nm_pasien` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` enum('islam','kristen protestan','katolik','hindu','buddha') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` varchar(3) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `no_kartukeluarga` varchar(20) NOT NULL,
  `hubungan_keluarga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `polikrinik`
--

CREATE TABLE `polikrinik` (
  `kode_poli` varchar(6) NOT NULL,
  `nama_poliklinik` varchar(35) NOT NULL,
  `lantai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `no_rm` int(6) NOT NULL,
  `kode_tindakan` varchar(6) NOT NULL,
  `kode_obat` varchar(6) NOT NULL,
  `kode_user` varchar(6) NOT NULL,
  `no_pasien` int(6) NOT NULL,
  `diagnosa` varchar(200) NOT NULL,
  `resep` varchar(200) NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `tgl_pemeriksaan` date NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan`
--

CREATE TABLE `tindakan` (
  `kode_tindakan` varchar(6) NOT NULL,
  `no_tindakan` int(3) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`tgl_kunjungan`);

--
-- Indexes for table `laboraturium`
--
ALTER TABLE `laboraturium`
  ADD PRIMARY KEY (`kode_lab`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_pasien`);

--
-- Indexes for table `polikrinik`
--
ALTER TABLE `polikrinik`
  ADD PRIMARY KEY (`kode_poli`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`no_rm`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`kode_tindakan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
