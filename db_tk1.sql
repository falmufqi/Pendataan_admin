-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 03:15 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tk1`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `nik` varchar(16) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`nik`, `nama_user`, `posisi`, `username`, `password`) VALUES
('18022001', 'Fabiano Milan Almufqi', 'owner', 'admin', '$2y$10$zg9f4wq8NYpxYCLpLGrEj.T10yfX4S2hJe6895/EqMBwBoQvGDZV.');

-- --------------------------------------------------------

--
-- Table structure for table `login_siswa`
--

CREATE TABLE `login_siswa` (
  `nisn_siswa` varchar(10) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `jk_siswa` enum('Laki-Laki','Perempuan') NOT NULL,
  `username_siswa` varchar(20) NOT NULL,
  `password_siswa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_umum`
--

CREATE TABLE `login_umum` (
  `nik_umum` varchar(16) NOT NULL,
  `nama_umum` varchar(255) NOT NULL,
  `jk_umum` enum('Pria','Wanita') NOT NULL,
  `posisi_umum` varchar(30) NOT NULL,
  `username_umum` varchar(20) NOT NULL,
  `password_umum` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_beasiswa`
--

CREATE TABLE `siswa_beasiswa` (
  `nisn_bea` varchar(10) NOT NULL,
  `nama_siswa_bea` varchar(50) NOT NULL,
  `tempat_bea` varchar(30) NOT NULL,
  `tgl_lahir_bea` date NOT NULL,
  `jenis_kel_bea` enum('Pria','Wanita') NOT NULL,
  `agama_bea` enum('Islam','Kristen','Hindu','Konghuch','Hindu') NOT NULL,
  `nm_ayah_bea` varchar(50) NOT NULL,
  `nm_ibu_bea` varchar(50) NOT NULL,
  `job_ayah_bea` enum('Wiraswasta','PNS/TNI/POLRI','Buruh','Petani','IRT','Tidak Bekerja') NOT NULL,
  `job_ibu_bea` enum('Wiraswasta','PNS/TNI/POLRI','Buruh','Petani','IRT','Tidak Bekerja') NOT NULL,
  `kampung_bea` varchar(255) NOT NULL,
  `rtrw_bea` varchar(255) NOT NULL,
  `desa_bea` varchar(255) NOT NULL,
  `kecamatan_bea` varchar(255) NOT NULL,
  `kabupaten_bea` varchar(255) NOT NULL,
  `dr_sltp_bea` varchar(50) NOT NULL,
  `jurusan_bea` enum('Mekanik Industri','Pengelasan','Desain Grafis','Belum Menentukan') NOT NULL,
  `no_siswa_bea` varchar(13) NOT NULL,
  `no_ortu_bea` varchar(13) NOT NULL,
  `program_bea` enum('Beasiswa') NOT NULL,
  `keterangan` enum('MOU','Belum MOU','Mengundurkan Diri') NOT NULL,
  `refrensi_bea` varchar(50) NOT NULL,
  `formulir_bea` enum('Sudah','Belum') NOT NULL,
  `skl_bea` enum('Sudah','Belum') NOT NULL,
  `ktp_ortu_bea` enum('Sudah','Belum') NOT NULL,
  `kk_bea` enum('Sudah','Belum') NOT NULL,
  `akte_bea` enum('Sudah','Belum') NOT NULL,
  `skkb_bea` enum('Sudah','Belum') NOT NULL,
  `kip_bea` enum('Sudah','Belum') NOT NULL,
  `pkh_bea` enum('Sudah','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_reguler`
--

CREATE TABLE `siswa_reguler` (
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kel` enum('Pria','Wanita') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Konghuch','Budha') NOT NULL,
  `nm_ayah` varchar(50) NOT NULL,
  `nm_ibu` varchar(50) NOT NULL,
  `job_ayah` enum('Wiraswasta','PNS/TNI/POLRI/','Buruh','Petani','IRT','Tidak Bekerja') NOT NULL,
  `job_ibu` enum('Wiraswasta','PNS/TNI/POLRI','Buruh','Petani','IRT','Tidak Bekerja') NOT NULL,
  `kampung` varchar(255) NOT NULL,
  `rtrw` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `dr_sltp` varchar(50) NOT NULL,
  `jurusan` enum('Mekanik Industri','Pengelasan','Desain Grafis','Belum Menentukan') NOT NULL,
  `no_siswa` varchar(13) NOT NULL,
  `no_ortu` varchar(13) NOT NULL,
  `program` enum('Reguler') NOT NULL,
  `refrensi` varchar(50) NOT NULL,
  `formulir` enum('Sudah','Belum') NOT NULL,
  `skl` enum('Sudah','Belum') NOT NULL,
  `ktp_ortu` enum('Sudah','Belum') NOT NULL,
  `kk` enum('Sudah','Belum') NOT NULL,
  `akte` enum('Sudah','Belum') NOT NULL,
  `skkb` enum('Sudah','Belum') NOT NULL,
  `kip` enum('Sudah','Belum') NOT NULL,
  `pkh` enum('Sudah','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `login_siswa`
--
ALTER TABLE `login_siswa`
  ADD PRIMARY KEY (`nisn_siswa`),
  ADD UNIQUE KEY `username_siswa` (`username_siswa`);

--
-- Indexes for table `login_umum`
--
ALTER TABLE `login_umum`
  ADD PRIMARY KEY (`nik_umum`),
  ADD UNIQUE KEY `username_umum` (`username_umum`);

--
-- Indexes for table `siswa_beasiswa`
--
ALTER TABLE `siswa_beasiswa`
  ADD PRIMARY KEY (`nisn_bea`);

--
-- Indexes for table `siswa_reguler`
--
ALTER TABLE `siswa_reguler`
  ADD PRIMARY KEY (`nisn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
