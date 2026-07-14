-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2026 at 02:39 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `email`) VALUES
('202300101', 'Ahmad Fauzi', 'Jl. Mawar No. 12, Bandung', 'ahmad.fauzi@email.com'),
('202300102', 'Siti Nurhaliza', 'Jl. Melati No. 8, Jakarta', 'siti.nurhaliza@email.com'),
('202300103', 'Budi Prasetyo', 'Jl. Anggrek No. 23, Surabaya', 'budi.prasetyo@email.com'),
('202300104', 'Dewi Sartika', 'Jl. Kenanga No. 5, Yogyakarta', 'dewi.sartika@email.com'),
('202300105', 'Rizki Ramadhan', 'Jl. Dahlia No. 17, Semarang', 'rizki.ramadhan@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `email` (`email`);
--
-- Database: `db_latihan_pbo_trpl1b_faizaailanifadhila`
--
CREATE DATABASE IF NOT EXISTS `db_latihan_pbo_trpl1b_faizaailanifadhila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_latihan_pbo_trpl1b_faizaailanifadhila`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` varchar(20) DEFAULT NULL,
  `layanan_butler` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avengers: Endgame', '2026-06-20 14:00:00', 2, 45000.00, 'Regular', 'Stereo', 'A5', NULL, NULL, NULL, NULL),
(2, 'Spider-Man: No Way Home', '2026-06-20 16:30:00', 3, 45000.00, 'Regular', 'Dolby', 'B7', NULL, NULL, NULL, NULL),
(3, 'The Batman', '2026-06-21 10:00:00', 1, 45000.00, 'Regular', 'Stereo', 'C3', NULL, NULL, NULL, NULL),
(4, 'Joker', '2026-06-21 13:00:00', 4, 45000.00, 'Regular', 'Dolby', 'A2', NULL, NULL, NULL, NULL),
(5, 'Inception', '2026-06-22 15:00:00', 2, 45000.00, 'Regular', 'Stereo', 'D8', NULL, NULL, NULL, NULL),
(6, 'Interstellar', '2026-06-22 19:00:00', 3, 45000.00, 'Regular', 'Dolby', 'B4', NULL, NULL, NULL, NULL),
(7, 'The Dark Knight', '2026-06-23 11:00:00', 2, 45000.00, 'Regular', 'Stereo', 'C6', NULL, NULL, NULL, NULL),
(8, 'Avatar: The Way of Water', '2026-06-20 15:00:00', 2, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-001', 'Motion Seat', NULL, NULL),
(9, 'Dune: Part Two', '2026-06-20 18:30:00', 3, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-002', 'Wind Effect', NULL, NULL),
(10, 'Oppenheimer', '2026-06-21 12:00:00', 1, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-003', 'Vibration', NULL, NULL),
(11, 'Tenet', '2026-06-21 16:00:00', 4, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-004', 'Motion Seat', NULL, NULL),
(12, 'The Matrix Resurrections', '2026-06-22 14:00:00', 2, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-005', 'Wind Effect', NULL, NULL),
(13, 'Top Gun: Maverick', '2026-06-22 20:00:00', 3, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-006', 'Vibration', NULL, NULL),
(14, 'John Wick: Chapter 4', '2026-06-23 13:00:00', 2, 75000.00, 'IMAX', NULL, NULL, 'IMAX-3D-007', 'Motion Seat', NULL, NULL),
(15, 'The Lion King', '2026-06-20 19:00:00', 2, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Full Service'),
(16, 'Frozen II', '2026-06-21 10:30:00', 3, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Pack', 'Drinks Only'),
(17, 'Moana', '2026-06-21 14:00:00', 1, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Full Service'),
(18, 'Encanto', '2026-06-22 11:00:00', 4, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Pack', 'Snacks Only'),
(19, 'Toy Story 4', '2026-06-22 16:00:00', 2, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Full Service'),
(20, 'Inside Out 2', '2026-06-23 15:00:00', 3, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Pack', 'Drinks Only');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `db_remedi_pbo_trpl1b_faizaailanifadhila`
--
CREATE DATABASE IF NOT EXISTS `db_remedi_pbo_trpl1b_faizaailanifadhila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_remedi_pbo_trpl1b_faizaailanifadhila`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_reservasi`
--

CREATE TABLE `tabel_reservasi` (
  `id_reservasi` int NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `tanggal_booking` date NOT NULL,
  `durasi_jam` int NOT NULL,
  `tarif_dasar_per_jam` decimal(10,2) NOT NULL,
  `jenis_paket` enum('Reguler','Premium','Event') NOT NULL,
  `tipe_backgroud` varchar(50) DEFAULT NULL,
  `cetak_foto_lembar` int DEFAULT NULL,
  `kuota_talent_orang` int DEFAULT NULL,
  `layanan_makeup` varchar(100) DEFAULT NULL,
  `nama_lokasi_luar` varchar(100) DEFAULT NULL,
  `biaya_transportasi_tim` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_reservasi`
--

INSERT INTO `tabel_reservasi` (`id_reservasi`, `nama_pelanggan`, `tanggal_booking`, `durasi_jam`, `tarif_dasar_per_jam`, `jenis_paket`, `tipe_backgroud`, `cetak_foto_lembar`, `kuota_talent_orang`, `layanan_makeup`, `nama_lokasi_luar`, `biaya_transportasi_tim`) VALUES
(1, 'Andi Pratama', '2026-01-15', 3, 150000.00, 'Reguler', 'Putih', 10, NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', '2026-01-16', 2, 150000.00, 'Reguler', 'Hitam', 5, NULL, NULL, NULL, NULL),
(3, 'Citra Dewi', '2026-01-17', 4, 150000.00, 'Reguler', 'Abu-abu', 15, NULL, NULL, NULL, NULL),
(4, 'Dian Sastro', '2026-01-18', 3, 150000.00, 'Reguler', 'Biru', 8, NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', '2026-01-19', 5, 150000.00, 'Reguler', 'Hijau', 12, NULL, NULL, NULL, NULL),
(6, 'Fitriani', '2026-01-20', 2, 150000.00, 'Reguler', 'Merah', 6, NULL, NULL, NULL, NULL),
(7, 'Gilang Ramadan', '2026-01-21', 3, 150000.00, 'Reguler', 'Kuning', 10, NULL, NULL, NULL, NULL),
(8, 'Hendra Wijaya', '2026-01-22', 4, 200000.00, 'Premium', NULL, NULL, 3, 'Makeup Artist Profesional', NULL, NULL),
(9, 'Indah Permata', '2026-01-23', 3, 200000.00, 'Premium', NULL, NULL, 2, 'Makeup Artist Senior', NULL, NULL),
(10, 'Joko Susilo', '2026-01-24', 5, 200000.00, 'Premium', NULL, NULL, 4, 'Makeup Artist Profesional', NULL, NULL),
(11, 'Kartika Sari', '2026-01-25', 4, 200000.00, 'Premium', NULL, NULL, 3, 'Makeup Artist Senior', NULL, NULL),
(12, 'Lukman Hakim', '2026-01-26', 6, 200000.00, 'Premium', NULL, NULL, 5, 'Makeup Artist Profesional', NULL, NULL),
(13, 'Maya Anggraini', '2026-01-27', 3, 200000.00, 'Premium', NULL, NULL, 2, 'Makeup Artist Senior', NULL, NULL),
(14, 'Nugroho Dwi', '2026-01-28', 4, 200000.00, 'Premium', NULL, NULL, 3, 'Makeup Artist Profesional', NULL, NULL),
(15, 'Oktaviani Putri', '2026-01-29', 8, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Gedung Serbaguna Jakarta', 500000.00),
(16, 'Purnomo Hadi', '2026-01-30', 6, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Hotel Grand Indonesia', 350000.00),
(17, 'Rina Melati', '2026-01-31', 10, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Balai Kota Bandung', 450000.00),
(18, 'Surya Dharma', '2026-02-01', 7, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Convention Hall Surabaya', 400000.00),
(19, 'Tina Febriani', '2026-02-02', 5, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Gedung Sate Bandung', 300000.00),
(20, 'Umar Bakri', '2026-02-03', 9, 250000.00, 'Event', NULL, NULL, NULL, NULL, 'Mall Kota Kasablanka', 550000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_reservasi`
--
ALTER TABLE `tabel_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_reservasi`
--
ALTER TABLE `tabel_reservasi`
  MODIFY `id_reservasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `db_siakad`
--
CREATE DATABASE IF NOT EXISTS `db_siakad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_siakad`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jabatan_fungsional` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `email`, `jabatan_fungsional`, `no_telp`, `prodi`) VALUES
('D001', 'Dr. Andi Prasetyo', 'andi@univ.ac.id', 'Lektor Kepala', '081234567890', 'Sistem Informasi'),
('D002', 'Maya Lestari, M.Kom.', 'maya@univ.ac.id', 'Lektor', '081234567891', 'Informatika'),
('D003', 'Rudi Santoso, M.T.', 'rudi@univ.ac.id', 'Asisten Ahli', '081234567892', 'Teknik Komputer'),
('D004', 'Nur Aini, M.Kom.', 'nuraini@univ.ac.id', 'Lektor', '081234567893', 'Sistem Informasi'),
('D005', 'Hendra Wijaya, Ph.D.', 'hendra@univ.ac.id', 'Guru Besar', '081234567894', 'Informatika'),
('D006', 'Desi Rahmawati, M.Kom.', 'desi@univ.ac.id', 'Asisten Ahli', '081234567895', 'Manajemen Informatika'),
('D007', 'Rizal Fadli, M.T.', 'rizal@univ.ac.id', 'Lektor', '081234567896', 'Sistem Informasi'),
('D008', 'Tina Marlina, M.Kom.', 'tina@univ.ac.id', 'Asisten Ahli', '081234567897', 'Teknik Komputer'),
('D009', 'Bayu Saputra, M.Kom.', 'bayu@univ.ac.id', 'Lektor Kepala', '081234567898', 'Informatika'),
('D010', 'Rina Kusuma, M.Kom.', 'rina@univ.ac.id', 'Lektor', '081234567899', 'Sistem Informasi'),
('D011', 'Dr. Siti Rahmah, M.Kom.', 'siti@univ.ac.id', 'Lektor Kepala', '081234567900', 'Sistem Informasi'),
('D012', 'Arif Nugroho, M.T.', 'arif@univ.ac.id', 'Asisten Ahli', '081234567901', 'Teknik Komputer'),
('D013', 'Lestari Widodo, M.Kom.', 'lestari@univ.ac.id', 'Lektor', '081234567902', 'Informatika'),
('D014', 'Dr. Bambang Setiawan', 'bambang@univ.ac.id', 'Guru Besar', '081234567903', 'Manajemen Informatika'),
('D015', 'Nia Kurniawati, M.T.', 'nia@univ.ac.id', 'Lektor', '081234567904', 'Sistem Informasi'),
('D016', 'Zindi Moniica, M.Kom.', 'zindi@univ.ac.id', 'Asisten Ahli', '081234567905', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `angkatan` year NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `jenis_kelamin`, `angkatan`, `alamat`, `email`) VALUES
('M001', 'Ahmad Fauzi', 'Laki-laki', '2022', 'Jl. Melati No. 12', 'ahmad@si.ac.id'),
('M002', 'Budi Hartono', 'Laki-laki', '2021', 'Jl. Mawar No. 9', 'budi@si.ac.id'),
('M003', 'Citra Dewi', 'Perempuan', '2023', 'Jl. Kenanga No. 8', 'citra@si.ac.id'),
('M004', 'Dina Puspita', 'Perempuan', '2020', 'Jl. Dahlia No. 10', 'dina@si.ac.id'),
('M005', 'Eko Prasetya', 'Laki-laki', '2022', 'Jl. Anggrek No. 14', 'eko@si.ac.id'),
('M006', 'Fajar Hidayat', 'Laki-laki', '2021', 'Jl. Teratai No. 7', 'fajar@si.ac.id'),
('M007', 'Gina Marlina', 'Perempuan', '2023', 'Jl. Melur No. 3', 'gina@si.ac.id'),
('M008', 'Hendra Saputra', 'Laki-laki', '2022', 'Jl. Flamboyan No. 20', 'hendra@si.ac.id'),
('M009', 'Intan Sari', 'Perempuan', '2020', 'Jl. Cempaka No. 5', 'intan@si.ac.id'),
('M010', 'Joko Santoso', 'Laki-laki', '2023', 'Jl. Kamboja No. 15', 'joko@si.ac.id'),
('M011', 'Karina Putri', 'Perempuan', '2024', 'Jl. Sakura No. 11', 'kirana@si.ac.id'),
('M012', 'Luki Ramadhan', 'Laki-laki', '2022', 'Jl. Cemara No. 17', 'luki@si.ac.id'),
('M013', 'Nabila Azzahra', 'Perempuan', '2021', 'Jl. Flamboyan No. 19', 'nabila@si.ac.id'),
('M014', 'Oka Pratama', 'Laki-laki', '2023', 'Jl. Tanjung No. 6', 'oka@si.ac.id'),
('M015', 'Prita Wulandari', 'Perempuan', '2024', 'Jl. Kemuning No. 13', 'prita@si.ac.id'),
('M016', 'Rangga Setiawan', 'Laki-laki', '2024', 'Jl. Pinus No.21', 'rangga@si.ac.id'),
('M017', 'Zaydan', 'Laki-laki', '2022', 'Jl. Pucuk Merah No.85', 'zaydan@si.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(10) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `sks` int NOT NULL,
  `semester` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`kode_matkul`, `nama_matkul`, `sks`, `semester`) VALUES
('MK001', 'Pemrograman Dasar', 3, 1),
('MK002', 'Struktur Data', 3, 2),
('MK003', 'Basis Data', 3, 3),
('MK004', 'Sistem Operasi', 3, 4),
('MK005', 'Jaringan Komputer', 3, 4),
('MK006', 'Pemrograman Web', 3, 5),
('MK007', 'Analisis dan Desain Sistem', 3, 5),
('MK008', 'Kecerdasan Buatan', 3, 6),
('MK009', 'Keamanan Informasi', 3, 6),
('MK010', 'Manajemen Proyek TI', 3, 7),
('MK011', 'Data Mining', 3, 7),
('MK012', 'Internet of Things (IoT)', 3, 6),
('MK013', 'Cloud Computing', 3, 7),
('MK014', 'Manajemen Basis Data Lanjut', 3, 5),
('MK015', 'Etika Profesi Teknologi Informasi', 2, 1),
('MK016', 'Sistem Berkas', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan`
--

CREATE TABLE `perkuliahan` (
  `id_perkuliahan` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `semester` int NOT NULL,
  `nilai` char(2) NOT NULL,
  `tahun_akademik` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `perkuliahan`
--

INSERT INTO `perkuliahan` (`id_perkuliahan`, `nim`, `kode_matkul`, `nidn`, `semester`, `nilai`, `tahun_akademik`) VALUES
(1, 'M001', 'MK001', 'D002', 1, 'A', '2022/2023'),
(2, 'M001', 'MK003', 'D004', 3, 'B', '2023/2024'),
(3, 'M002', 'MK002', 'D003', 2, 'A', '2022/2023'),
(4, 'M003', 'MK006', 'D001', 5, 'A', '2024/2025'),
(5, 'M004', 'MK004', 'D007', 4, 'C', '2022/2023'),
(6, 'M005', 'MK007', 'D010', 5, 'A', '2023/2024'),
(7, 'M006', 'MK005', 'D005', 4, 'B', '2023/2024'),
(8, 'M007', 'MK008', 'D009', 6, 'A', '2024/2025'),
(9, 'M008', 'MK009', 'D006', 6, 'B', '2024/2025'),
(10, 'M009', 'MK010', 'D008', 7, 'A', '2024/2025'),
(11, 'M017', 'MK016', 'D016', 2, 'A', '2024/2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD PRIMARY KEY (`id_perkuliahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perkuliahan`
--
ALTER TABLE `perkuliahan`
  MODIFY `id_perkuliahan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
--
-- Database: `db_uas_pbo_trpl1b_faizaailanifadhila`
--
CREATE DATABASE IF NOT EXISTS `db_uas_pbo_trpl1b_faizaailanifadhila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_uas_pbo_trpl1b_faizaailanifadhila`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `id_karyawan` int NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `hari_kerja_masuk` date NOT NULL,
  `gaji_dasar_per_hari` decimal(15,2) NOT NULL,
  `jenis_karyawan` enum('Kontrak','Tetap','Magang') NOT NULL,
  `durasi_kontrak_bulan` int DEFAULT NULL,
  `agensi_penyalur` varchar(100) DEFAULT NULL,
  `tunjangan_kesehatan` decimal(15,2) DEFAULT NULL,
  `opsi_saham_id` varchar(50) DEFAULT NULL,
  `uang_saku_bulanan` decimal(15,2) DEFAULT NULL,
  `sertifikat_kampus_merdeka` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`id_karyawan`, `nama_karyawan`, `departement`, `hari_kerja_masuk`, `gaji_dasar_per_hari`, `jenis_karyawan`, `durasi_kontrak_bulan`, `agensi_penyalur`, `tunjangan_kesehatan`, `opsi_saham_id`, `uang_saku_bulanan`, `sertifikat_kampus_merdeka`) VALUES
(1, 'Budi Santoso', 'IT', '2025-01-15', 150000.00, 'Kontrak', 12, 'PT Tech Solution', 500000.00, NULL, NULL, NULL),
(2, 'Siti Rahayu', 'HRD', '2025-02-01', 120000.00, 'Kontrak', 6, 'PT Sumber Daya Manusia', 300000.00, NULL, NULL, NULL),
(3, 'Agus Wijaya', 'Marketing', '2025-03-10', 130000.00, 'Kontrak', 12, 'PT Kreatif Media', 400000.00, NULL, NULL, NULL),
(4, 'Dewi Lestari', 'Finance', '2025-04-05', 140000.00, 'Kontrak', 9, 'PT Solusi Keuangan', 450000.00, NULL, NULL, NULL),
(5, 'Rudi Hermawan', 'IT', '2025-05-20', 160000.00, 'Kontrak', 6, 'PT Tech Solution', 500000.00, NULL, NULL, NULL),
(6, 'Anita Marlina', 'Sales', '2025-06-01', 125000.00, 'Kontrak', 12, 'PT Mitra Niaga', 350000.00, NULL, NULL, NULL),
(7, 'Fajar Prasetyo', 'Operasional', '2025-07-15', 135000.00, 'Kontrak', 9, 'PT Logistik Cepat', 400000.00, NULL, NULL, NULL),
(8, 'Eko Prabowo', 'IT', '2024-01-10', 200000.00, 'Tetap', NULL, NULL, 1000000.00, 'SAHAM001', NULL, NULL),
(9, 'Rina Anggraeni', 'HRD', '2024-02-15', 180000.00, 'Tetap', NULL, NULL, 800000.00, 'SAHAM002', NULL, NULL),
(10, 'Bambang Supriyadi', 'Marketing', '2024-03-20', 190000.00, 'Tetap', NULL, NULL, 900000.00, 'SAHAM003', NULL, NULL),
(11, 'Sri Mulyani', 'Finance', '2024-04-01', 210000.00, 'Tetap', NULL, NULL, 1100000.00, 'SAHAM004', NULL, NULL),
(12, 'Hendra Gunawan', 'IT', '2024-05-05', 220000.00, 'Tetap', NULL, NULL, 1200000.00, 'SAHAM005', NULL, NULL),
(13, 'Indah Permata', 'Sales', '2024-06-10', 175000.00, 'Tetap', NULL, NULL, 750000.00, 'SAHAM006', NULL, NULL),
(14, 'Yudi Setiawan', 'Operasional', '2024-07-15', 170000.00, 'Tetap', NULL, NULL, 700000.00, 'SAHAM007', NULL, NULL),
(15, 'Maya Putri', 'IT', '2025-08-01', 80000.00, 'Magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-001'),
(16, 'Rizky Fadillah', 'HRD', '2025-08-15', 75000.00, 'Magang', NULL, NULL, NULL, NULL, 1400000.00, 'MSIB-2025-002'),
(17, 'Dinda Puspita', 'Marketing', '2025-09-01', 70000.00, 'Magang', NULL, NULL, NULL, NULL, 1300000.00, 'MSIB-2025-003'),
(18, 'Andre Pratama', 'IT', '2025-09-15', 85000.00, 'Magang', NULL, NULL, NULL, NULL, 1600000.00, 'MSIB-2025-004'),
(19, 'Nadia Safira', 'Finance', '2025-10-01', 78000.00, 'Magang', NULL, NULL, NULL, NULL, 1450000.00, 'MSIB-2025-005'),
(20, 'Gilang Ramadhan', 'Sales', '2025-10-15', 72000.00, 'Magang', NULL, NULL, NULL, NULL, 1350000.00, 'MSIB-2025-006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  MODIFY `id_karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `penjualan_faiza`
--
CREATE DATABASE IF NOT EXISTS `penjualan_faiza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `penjualan_faiza`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_brg` int NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_brg`, `nama_brg`, `satuan`, `harga`) VALUES
(5001, 'Sabun Lux', 'Buah', 3000),
(5002, 'Pepsodent 25g', 'Buah', 1000),
(5003, 'Sabun Cuci', 'Plastik', 3000),
(5004, 'Pengharum Ruangan', 'Kaleng', 10000),
(5005, 'Obat Nyamuk', 'Bungkus', 3000),
(5006, 'Lilin', 'Bungkus', 4000),
(5007, 'Korek Api', 'Bungkus', 500),
(5008, 'Penyedap Rasa', 'Bungkus', 1000),
(5009, 'Ikan Kaleng', 'Kaleng', 4500),
(5010, 'Pepsi', 'Botol', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `barang_faiza`
--

CREATE TABLE `barang_faiza` (
  `kode_brg` varchar(10) NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `supplier` varchar(50) DEFAULT NULL,
  `tahun_produksi` int NOT NULL DEFAULT '0',
  `diskon(%)` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang_faiza`
--

INSERT INTO `barang_faiza` (`kode_brg`, `nama_brg`, `satuan`, `harga`, `stok`, `supplier`, `tahun_produksi`, `diskon(%)`) VALUES
('BR001', 'Sabun Lux', 'Buah', 3000, 50, 'Unilever', 2023, 0.05),
('BR002', 'Pepsodent 25g', 'Buah', 1000, 100, 'P&G', 2024, 0.10),
('BR003', 'Sabun Cuci', 'Plastik', 3000, 75, 'Wings', 2023, 0.03),
('BR004', 'Pengharum Ruangan', 'Kaleng', 10000, 30, 'Glade', 2024, 0.07),
('BR005', 'Obat Nyamuk', 'Bungkus', 3000, 80, 'Baygon', 2023, 0.04),
('BR006', 'Lilin', 'Bungkus', 4000, 60, 'Sosro', 2023, 0.05),
('BR007', 'Korek Api', 'Bungkus', 500, 200, 'Tokai', 2025, 0.00),
('BR008', 'Penyedap Rasa', 'Bungkus', 1000, 150, 'Masako', 2024, 0.08),
('BR009', 'Ikan Kaleng', 'Kaleng', 4500, 40, 'ABC', 2023, 0.06),
('BR010', 'Pepsi', 'Botol', 2500, 90, 'PepsiCo', 2025, 0.10);

-- --------------------------------------------------------

--
-- Table structure for table `baru`
--

CREATE TABLE `baru` (
  `kode_brg` int NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `copybarang_faiza`
--

CREATE TABLE `copybarang_faiza` (
  `kode_brg` int NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `copybarang_faiza`
--

INSERT INTO `copybarang_faiza` (`kode_brg`, `nama_brg`, `satuan`, `harga`) VALUES
(5001, 'Sabun Lux', 'Buah', 3000),
(5002, 'Pepsodent 25g', 'Buah', 1000),
(5003, 'Sabun Cuci', 'Plastik', 3000),
(5004, 'Pengharum Ruangan', 'Kaleng', 10000),
(5005, 'Obat Nyamuk', 'Bungkus', 3000),
(5006, 'Lilin', 'Bungkus', 4000),
(5007, 'Korek Api', 'Bungkus', 500),
(5008, 'Penyedap Rasa', 'Bungkus', 1000),
(5009, 'Ikan Kaleng', 'Kaleng', 4500),
(5010, 'Pepsi', 'Botol', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `kode_brg` int NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`kode_brg`, `nama_brg`, `satuan`, `harga`) VALUES
(5001, 'Sabun Lux', 'Buah', 3000),
(5002, 'Pepsodent 25g', 'Buah', 1000),
(5003, 'Sabun Cuci', 'Plastik', 3000),
(5004, 'Pengharum Ruangan', 'Kaleng', 10000),
(5005, 'Obat Nyamuk', 'Bungkus', 3000),
(5006, 'Lilin', 'Bungkus', 4000),
(5007, 'Korek Api', 'Bungkus', 500),
(5008, 'Penyedap Rasa', 'Bungkus', 1000),
(5009, 'Ikan Kaleng', 'Kaleng', 4500),
(5010, 'Pepsi', 'Botol', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_brg` int NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int NOT NULL,
  `id_transaksi` int DEFAULT NULL,
  `jumlah_terjual` int DEFAULT NULL,
  `tanggal_jual` date DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode_brg`, `nama_brg`, `satuan`, `harga`, `id_transaksi`, `jumlah_terjual`, `tanggal_jual`, `total_harga`) VALUES
(5001, 'Sabun Lux', 'Buah', 3000, 1001, 10, '2024-01-10', 30000.00),
(5002, 'Pepsodent 25g', 'Buah', 1000, 1002, 20, '2024-01-11', 20000.00),
(5003, 'Sabun Cuci', 'Plastik', 3000, 1003, 15, '2024-01-12', 45000.00),
(5004, 'Pengharum Ruangan', 'Kaleng', 10000, 1004, 5, '2024-01-13', 50000.00),
(5005, 'Obat Nyamuk', 'Bungkus', 3000, 1005, 12, '2024-01-14', 36000.00),
(5006, 'Lilin', 'Bungkus', 4000, 1006, 8, '2024-01-15', 32000.00),
(5007, 'Korek Api', 'Bungkus', 500, 1007, 30, '2024-01-16', 15000.00),
(5008, 'Penyedap Rasa', 'Bungkus', 1000, 1008, 25, '2024-01-17', 25000.00),
(5009, 'Ikan Kaleng', 'Kaleng', 4500, 1009, 10, '2024-01-18', 45000.00),
(5010, 'Pepsi', 'Botol', 2500, 1010, 18, '2024-01-19', 45000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `barang_faiza`
--
ALTER TABLE `barang_faiza`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `baru`
--
ALTER TABLE `baru`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `copybarang_faiza`
--
ALTER TABLE `copybarang_faiza`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_brg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_brg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5014;

--
-- AUTO_INCREMENT for table `baru`
--
ALTER TABLE `baru`
  MODIFY `kode_brg` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `copybarang_faiza`
--
ALTER TABLE `copybarang_faiza`
  MODIFY `kode_brg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5011;

--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `kode_brg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5011;
--
-- Database: `perpustakaan_faiza`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan_faiza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `perpustakaan_faiza`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `book_id` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`book_id`, `judul`, `penulis`) VALUES
('10001', 'sistem basis data', 'andi offset'),
('10002', 'pengantar teknologi informasi', 'get press'),
('10003', 'kriptografi', 'wahana media');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`book_id`);
--
-- Database: `sr_kendaraan`
--
CREATE DATABASE IF NOT EXISTS `sr_kendaraan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sr_kendaraan`;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year NOT NULL,
  `harga_dasar` int NOT NULL,
  `kategori_kendaraan` enum('Mobil Konvesional','Mobil Listrik','Motor Besar') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `brand`, `model`, `tahun`, `harga_dasar`, `kategori_kendaraan`) VALUES
('B 1001 TS', 'Tesla', 'Model 3 Highland', '2024', 1200000000, 'Mobil Listrik'),
('B 1234 FRC', 'Honda', 'Civic Type R', '2023', 1400000000, 'Mobil Konvesional'),
('B 1625 Leaf', 'Nissan', 'Leaf', '2022', 738000000, 'Mobil Listrik'),
('B 1903 HD', 'Harley-Davidson', 'Sportster S', '2023', 615000000, 'Motor Besar'),
('B 2026 BMW', 'BMW', 'i4 eDrive40', '2024', 2100000000, 'Mobil Listrik'),
('B 2048 ZKT', 'Suzuki', 'Ertiga Hybrid', '2023', 270000000, 'Mobil Konvesional'),
('B 2189 EV', 'Wuling', 'Air EV Long Range', '2023', 275000000, 'Mobil Listrik'),
('B 2331 AW', 'Honda', 'Brio Satya', '2024', 200000000, 'Mobil Konvesional'),
('B 300 VSP', 'Vespa', 'GTS Super Tech 300', '2024', 165000000, 'Motor Besar'),
('B 3333 DUC', 'Ducati', 'Panigale V4', '2024', 840000000, 'Motor Besar'),
('B 3810 KLP', 'Mazda', 'CX-5', '2023', 630000000, 'Mobil Konvesional'),
('B 6000 ZX', 'Kawasaki', 'Ninja ZX-25R', '2023', 110000000, 'Motor Besar'),
('B 777 GA', 'Kia', 'EV6 GT-Line', '2023', 1300000000, 'Mobil Listrik'),
('D 1250 GS', 'BMW Motorrad', 'R 1250 GS', '2023', 850000000, 'Motor Besar'),
('D 404 EL', 'BYD', 'Atto 3', '2024', 515000000, 'Mobil Listrik'),
('D 4444 RRR', 'Yamaha', 'YZF-R6', '2021', 270000000, 'Motor Besar'),
('D 9999 SXX', 'Mitsubishi', 'Pajero Sport', '2022', 580000000, 'Mobil Konvesional'),
('F 1123 MR', 'BMW', '330i M Sport', '2024', 1080000000, 'Mobil Konvesional'),
('H 8472 YY', 'Daihatsu', 'Rocky Turbo', '2022', 245000000, 'Mobil Konvesional'),
('L 1562 AB', 'Toyota', 'Avanza Veloz', '2024', 305000000, 'Mobil Konvesional'),
('L 333 EV', 'MG', '4 EV', '2023', 430000000, 'Mobil Listrik'),
('R 5765 WF', 'Lexus', 'Lexus RZ', '2025', 300000000, 'Mobil Listrik'),
('R 7654 SK', 'Vario', 'Vario123', '2020', 25000000, 'Motor Besar');

-- --------------------------------------------------------

--
-- Table structure for table `mobil_konvesional`
--

CREATE TABLE `mobil_konvesional` (
  `id_kendaraan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_mesin` int NOT NULL,
  `jenis_bbm` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobil_konvesional`
--

INSERT INTO `mobil_konvesional` (`id_kendaraan`, `kapasitas_mesin`, `jenis_bbm`) VALUES
('B 1234 FRC', 2000, 'Pertamax Turbo'),
('B 2048 ZKT', 1500, 'Pertamax'),
('B 2331 AW', 1200, 'Pertamax'),
('B 3810 KLP', 2500, 'Pertamax'),
('D 9999 SXX', 2400, 'Solar/Diesel'),
('F 1123 MR', 2000, 'Pertamax Turbo'),
('H 8472 YY', 1000, 'Pertamax'),
('L 1562 AB', 1500, 'Pertalite');

-- --------------------------------------------------------

--
-- Table structure for table `mobil_listrik`
--

CREATE TABLE `mobil_listrik` (
  `id_kendaraan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_baterai` int NOT NULL,
  `jarak_tempuh` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobil_listrik`
--

INSERT INTO `mobil_listrik` (`id_kendaraan`, `kapasitas_baterai`, `jarak_tempuh`) VALUES
('B 1001 TS', 75, 513),
('B 1625 Leaf', 40, 311),
('B 2026 BMW', 84, 590),
('B 2189 EV', 27, 300),
('B 777 GA', 77, 506),
('D 404 EL', 60, 480),
('L 333 EV', 51, 425),
('R 5765 WF', 50, 240);

-- --------------------------------------------------------

--
-- Table structure for table `motor_besar`
--

CREATE TABLE `motor_besar` (
  `id_kendaraan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_rantai` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode_berkendara` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motor_besar`
--

INSERT INTO `motor_besar` (`id_kendaraan`, `tipe_rantai`, `mode_berkendara`) VALUES
('B 1903 HD', 'Belt Drive', 'Road, Sport, Rain, Custom'),
('B 300 VSP', 'V-Belt Automatic', 'Standard, ASR Sport'),
('B 3333 DUC', 'Race-Chain 520', 'Street, Sport, Race, Dynamic'),
('B 6000 ZX', 'X-Ring Sealed', 'Eco, Full Power'),
('D 1250 GS', 'Shaft Drive', 'Rain, Road, Eco, Enduro Pro'),
('D 4444 RRR', 'O-Ring Sealed', 'Standard, Track'),
('R 7654 SK', 'O-Ring', 'Economic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `mobil_konvesional`
--
ALTER TABLE `mobil_konvesional`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `mobil_listrik`
--
ALTER TABLE `mobil_listrik`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `motor_besar`
--
ALTER TABLE `motor_besar`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobil_konvesional`
--
ALTER TABLE `mobil_konvesional`
  ADD CONSTRAINT `mobil_konvesional_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;

--
-- Constraints for table `mobil_listrik`
--
ALTER TABLE `mobil_listrik`
  ADD CONSTRAINT `mobil_listrik_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;

--
-- Constraints for table `motor_besar`
--
ALTER TABLE `motor_besar`
  ADD CONSTRAINT `motor_besar_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
