-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 03:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `disukai`
--

CREATE TABLE `disukai` (
  `email` varchar(50) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disukai`
--

INSERT INTO `disukai` (`email`, `id_pertanyaan`) VALUES
('allysa@gmail.com', 47),
('amelia20ti@mahasiswa.pcr.ac.id', 104),
('fellychndr@gmail.com', 106),
('fellychndr@gmail.com', 109),
('kartika@gmail.com', 109),
('tasya@yahoo.com', 110);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `jawaban` varchar(1000) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `jumlah_like` int(11) NOT NULL,
  `anonymous` varchar(15) NOT NULL,
  `edit` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `jawaban`, `tanggal`, `jam`, `approved_by`, `jumlah_like`, `anonymous`, `edit`, `id_user`, `id_pertanyaan`) VALUES
(79, 'coba tambahkan ini a = object[\'Plane1\'] b = object[\'Plane2\']  b.parent = a', '2022/07/17', '16:39:29', 0, 0, 'tidak', '', 19, 105),
(80, 'berikan nama pada masing-masing objek lalu tambahkan objects = bpy.data.objects, a = objects[\'Plane1\'], b = objects[\'Plane2\'] b.parent = a', '2022/07/17', '16:50:57', 1, 0, 'iya', '', 20, 105),
(83, 'Jika melalui script, tiap perulangan pada sumbu z nilai x dan y-nya juga ikut diubah', '2022/07/17', '17:41:36', 1, 0, 'tidak', '', 21, 109),
(86, 'Nilai x atau y ditambah setiap perulangan z', '2022/07/17', '17:52:56', 0, 0, 'tidak', '', 18, 109),
(96, 'Sesuaikan di query saja', '2022/07/17', '18:28:11', 1, 0, 'iya', '', 18, 110),
(97, 'Kalau untuk get sesuaikan di query saja', '2022/07/17', '18:30:02', 0, 0, 'tidak', '', 22, 110);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pertanyaan` varchar(1000) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `jumlah_like` int(11) NOT NULL,
  `anonymous` varchar(15) NOT NULL,
  `solved` int(11) NOT NULL,
  `edit` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `judul`, `pertanyaan`, `kategori`, `tanggal`, `jam`, `jumlah_like`, `anonymous`, `solved`, `edit`, `id_user`) VALUES
(105, 'Coding objek animasi', 'Bagaimana cara membuat sebuah objek menjadi parent dari objek lain?', 'Animasi', '17/07/2022', '16:44:03', 8, 'tidak', 1, 'Diedit terakhir pada: 2022/07/17 jam: 16:43:55', 18),
(106, 'Animasi', 'Bagaimana cara membuat keyframe pada animasi yang di coding menggunakan python?', 'Animasi', '17/07/2022', '19:27:26', 2, 'tidak', 0, 'Diedit terakhir pada: 2022/07/17 jam: 19:27:19', 19),
(108, 'Menggerakkan objek pada WPF', ' Bagaimana caranya untuk membuat suatu objek di wpf bergerak secara random?', 'WPF', '2022/07/17', '16:57:09', 6, 'iya', 0, '', 20),
(109, 'Menggerakkan objek pada blender', 'Bagaimana caranya untuk menggerakkan suatu objek secara diagonal dengan script blender?', 'Animasi', '2022/07/17', '16:58:16', 12, 'tidak', 1, '', 20),
(110, 'CRUD Rest API', 'Bagaimana cara membuat rest api untuk tabel yang berelasi?', 'Back-End developer', '2022/07/17', '18:26:48', 9, 'iya', 1, '', 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL DEFAULT '-',
  `gambar` varchar(50) DEFAULT 'images.png',
  `no_telp` varchar(15) NOT NULL DEFAULT '-',
  `info_pribadi` int(11) NOT NULL DEFAULT 0,
  `tanggal_bergabung` varchar(30) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `nama_lengkap`, `jenis_kelamin`, `gambar`, `no_telp`, `info_pribadi`, `tanggal_bergabung`) VALUES
(18, 'kartika@gmail.com', '$2y$10$uCc/Xrv.XmJStvvkUn1fZuugV.SHCGK/UxccrkpGz.3B.OBnguaqG', 'Kartika Amelia Rahmawati', 'Perempuan', 'Tika.jpeg', '082388667574', 1, '2022-07-17 16:18:00'),
(19, 'fellychndr@gmail.com', '$2y$10$mu3oAsy4RvxHlZDfAkCI7.3DxFvsPkuaEGWW8zKOvnh4cxxHnSa.O', 'Felly Chandra', 'Laki-laki', 'Felly.jpeg', '082543556782', 1, '2022-07-17 16:38:09'),
(20, 'embun@gmail.com', '$2y$10$LTPAAUtRIPDytAR/AvPqT.ge5XJPoMYdYiY3jKX3H0UWxiVtQGFYG', 'Embun Duta Laksmana', 'Laki-laki', 'Duta.jpeg', '085564322244', 1, '2022-07-17 16:46:48'),
(21, 'tasya@yahoo.com', '$2y$10$LR1el/pNNuMG0EpfmRG2bup84pMqcQk.w31pIjMyTRFX.b8mrcKUa', 'Tasya Nurul F', 'Perempuan', 'images.png', '', 1, '2022-07-17 17:37:36'),
(22, 'kintan@gmail.com', '$2y$10$L/umL6mDQ/OXjfBYLUxLK.x/IvSx4YWUP.CnOjdvF1yoS6UsqRFlm', 'Kintan Anyndia', 'Perempuan', 'Kintan.jpeg', '', 1, '2022-07-17 18:29:24'),
(23, 'jessen@yahoo.com', '$2y$10$/QmALhnTHCTpE2rtFrgwaeXDLNy9NqYnn6PYecBwr8iG/rc9tiZVW', 'Jessen Wind Lim', 'Laki-laki', 'Jessen.jpeg', '085564322244', 1, '2022-07-17 18:30:41'),
(24, 'dian@gmail.com', '$2y$10$KLyIgHV8PMIFlshnWyfJK.Wwz2LUVSPMqQyRGLMxVpnxzJhk/toMG', 'Diandra', 'Perempuan', 'images.png', '082384426170', 0, '2022-07-17 19:32:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disukai`
--
ALTER TABLE `disukai`
  ADD PRIMARY KEY (`email`,`id_pertanyaan`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `fk_pertanyaan` (`id_pertanyaan`),
  ADD KEY `fk_user2` (`id_user`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `fk_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `fk_pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
