-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Mei 2019 pada 06.16
-- Versi Server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asrama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_confirm`
--

CREATE TABLE `d_confirm` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_regist` int(11) NOT NULL,
  `c_kamar` int(11) NOT NULL,
  `c_user` int(11) NOT NULL,
  `c_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_kamar`
--

CREATE TABLE `d_kamar` (
  `k_id` int(11) NOT NULL,
  `k_name` varchar(100) NOT NULL,
  `k_allotment` int(11) NOT NULL,
  `k_type` varchar(11) NOT NULL,
  `k_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `k_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_kamar`
--

INSERT INTO `d_kamar` (`k_id`, `k_name`, `k_allotment`, `k_type`, `k_created_at`, `k_updated_at`) VALUES
(1, 'A-1', 5, 'premium', '2019-05-05 05:38:41', '0000-00-00 00:00:00'),
(2, 'A-2', 5, 'premium', '2019-05-05 05:38:41', '0000-00-00 00:00:00'),
(3, 'A-3', 5, 'premium', '2019-05-05 05:39:55', '0000-00-00 00:00:00'),
(5, 'B-1', 10, 'regular', '2019-05-05 05:40:44', '0000-00-00 00:00:00'),
(6, 'B-2', 10, 'regular', '2019-05-05 05:40:44', '0000-00-00 00:00:00'),
(7, 'B-3', 10, 'regular', '2019-05-05 05:42:08', '0000-00-00 00:00:00'),
(8, 'B-4', 10, 'regular', '2019-05-05 05:42:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_prodi`
--

CREATE TABLE `d_prodi` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_prodi`
--

INSERT INTO `d_prodi` (`p_id`, `p_name`) VALUES
(1, 'S1 - Sistem Informasi'),
(2, 'S1 - Teknologi Informasi'),
(3, 'S1 - Pendidikan Teknologi Informasi'),
(4, 'D3 - Manajemen Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_register`
--

CREATE TABLE `d_register` (
  `r_id` int(11) NOT NULL,
  `r_kode` varchar(100) NOT NULL,
  `r_user` int(11) NOT NULL,
  `r_kamar` int(11) NOT NULL,
  `r_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `r_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_user`
--

CREATE TABLE `d_user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_nim` varchar(11) NOT NULL,
  `u_prodi` int(11) NOT NULL,
  `u_jk` enum('P','L') NOT NULL,
  `u_date` date NOT NULL,
  `u_tempat` varchar(100) NOT NULL,
  `u_kamar` int(11) DEFAULT NULL,
  `u_image` varchar(100) DEFAULT NULL,
  `u_alamat` varchar(200) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_notelp` varchar(13) NOT NULL,
  `u_namawali` varchar(100) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_passwd` varchar(100) NOT NULL,
  `u_role` varchar(12) NOT NULL,
  `u_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_user`
--

INSERT INTO `d_user` (`u_id`, `u_name`, `u_nim`, `u_prodi`, `u_jk`, `u_date`, `u_tempat`, `u_kamar`, `u_image`, `u_alamat`, `u_email`, `u_notelp`, `u_namawali`, `u_username`, `u_passwd`, `u_role`, `u_created_at`, `u_updated_at`) VALUES
(1, 'anaaaa', '17050623017', 3, 'L', '1999-05-22', 'Jember', 5, NULL, 'Bulak Lapak', 'ngakbayar@yahoo.com', '082245018521', 'Sucide squad', 'admeen', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-05 03:12:05', '0000-00-00 00:00:00'),
(2, 'alfian tegar putra afandi', '17050623017', 4, 'L', '1999-10-16', 'Surabaya', 2, NULL, 'nginden', 'alfian.17050623015@mhs.unesa.ac.id', '082245015821', 'windarti', 'AS-190514-2', '6aafe272d89f892759dcc429124d9f44a3692b8f', 'admin', '2019-05-14 17:53:46', '2019-05-14 17:53:46'),
(6, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 1, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'AS-190519-6', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(10, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 1, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor1', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(11, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 3, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor2', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(12, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 1, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor3', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(13, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 1, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor4', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(14, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 7, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor5', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05'),
(15, 'yazerred', '15050623015', 3, 'L', '1999-10-15', 'Malang', 8, NULL, 'Kedurus 1 A', 'alfian.17050623015@mhs.unesa.ac.id', '085730406453', 'Faozi', 'yoibor6', 'b91f4ee1950becbf9e6f037d694fa7f1c871a47b', 'user', '2019-05-19 15:57:05', '2019-05-19 15:57:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_confirm`
--
ALTER TABLE `d_confirm`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_user` (`c_user`),
  ADD KEY `c_kamar` (`c_kamar`),
  ADD KEY `c_regist` (`c_regist`);

--
-- Indexes for table `d_kamar`
--
ALTER TABLE `d_kamar`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `d_prodi`
--
ALTER TABLE `d_prodi`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `d_register`
--
ALTER TABLE `d_register`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `r_user` (`r_user`),
  ADD KEY `r_kamar` (`r_kamar`);

--
-- Indexes for table `d_user`
--
ALTER TABLE `d_user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_username` (`u_username`),
  ADD KEY `u_prodi` (`u_prodi`),
  ADD KEY `u_kamar` (`u_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_confirm`
--
ALTER TABLE `d_confirm`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `d_kamar`
--
ALTER TABLE `d_kamar`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `d_prodi`
--
ALTER TABLE `d_prodi`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `d_register`
--
ALTER TABLE `d_register`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `d_user`
--
ALTER TABLE `d_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `d_confirm`
--
ALTER TABLE `d_confirm`
  ADD CONSTRAINT `d_confirm_ibfk_1` FOREIGN KEY (`c_regist`) REFERENCES `d_register` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_confirm_ibfk_2` FOREIGN KEY (`c_user`) REFERENCES `d_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_confirm_ibfk_3` FOREIGN KEY (`c_kamar`) REFERENCES `d_kamar` (`k_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `d_register`
--
ALTER TABLE `d_register`
  ADD CONSTRAINT `d_register_ibfk_1` FOREIGN KEY (`r_user`) REFERENCES `d_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_register_ibfk_2` FOREIGN KEY (`r_kamar`) REFERENCES `d_kamar` (`k_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `d_user`
--
ALTER TABLE `d_user`
  ADD CONSTRAINT `d_user_ibfk_1` FOREIGN KEY (`u_prodi`) REFERENCES `d_prodi` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
