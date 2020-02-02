-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2020 pada 10.56
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cds`
--

CREATE TABLE `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `db_akademik`
--
CREATE DATABASE IF NOT EXISTS `db_akademik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_akademik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(10) NOT NULL,
  `nim` int(14) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `jurusan`, `alamat`) VALUES
(1, 18020082, 'novi', 'tangerang', '22 agustus 1998', 'P', 'sistem informasi', 'kp.kadu rt/rw 003/001 ds.pete'),
(2, 18030021, 'lifia', 'tangerang', '20 desember 2000', 'P', 'sistem informasi', 'cikupa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_cuti`
--
CREATE DATABASE IF NOT EXISTS `db_cuti` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_cuti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cuti`
--

CREATE TABLE `t_cuti` (
  `NIK` int(11) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `JABATAN` varchar(100) NOT NULL,
  `HAKCUTI` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_cuti`
--

INSERT INTO `t_cuti` (`NIK`, `NAMA`, `JABATAN`, `HAKCUTI`) VALUES
(0, '', '', 0),
(18020031, 'novi', 'QC', 2),
(18020032, 'ayu', 'oprator', 1);
--
-- Database: `db_kampus`
--
CREATE DATABASE IF NOT EXISTS `db_kampus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_kampus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(20) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `jenjang_pendidikan` varchar(20) DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `nomer_telpon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`, `alamat`, `jenjang_pendidikan`, `hobby`, `nomer_telpon`) VALUES
('112233', 'achmad fahrudin', 'cikupa tangerang', 's1, ccna', 'mengajar', '0812'),
('112234', 'samsul', 'tigaraksa', 's2', 'ngoding', '0813'),
('112235', 'partono', 'balaraja', 's3', 'membaca', '0813');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nimn` varchar(20) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `jenjang_pendidikan` varchar(20) DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `nomer_telpon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nimn`, `nama`, `alamat`, `jenjang_pendidikan`, `hobby`, `nomer_telpon`) VALUES
('18010001', 'muhammad yusron', 'jasinga bogor', 'stm', 'ngoding', '081242709851'),
('18010002', 'hariri', 'tigaraksa', 'sma', 'menghitung', '081248973322'),
('18010003', 'riski', 'cikupa', 'smk', 'makan', '081248973325');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kodematkul` int(10) DEFAULT NULL,
  `namamatkul` varchar(30) DEFAULT NULL,
  `sks` varchar(20) DEFAULT NULL,
  `jurusan` varchar(40) DEFAULT NULL,
  `nidn` varchar(10) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kodematkul`, `namamatkul`, `sks`, `jurusan`, `nidn`, `nim`) VALUES
(101, 'pemprograman', '3', 'sistem informasi', '112233', NULL),
(102, 'bahasa', '3', 'sastra inggris', '112234', NULL),
(103, 'agama', '3', 'pendidikan', '112235', NULL),
(101, 'pemprograman', '3', 'sistem informasi', '112233', '18010001'),
(102, 'bahasa', '3', 'sastra inggris', '112234', '18010002'),
(103, 'agama', '3', 'pendidikan', '112235', '18010003');
--
-- Database: `db_maha`
--
CREATE DATABASE IF NOT EXISTS `db_maha` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_maha`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_guruku`
--

CREATE TABLE `t_guruku` (
  `nidn` int(15) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_maha`
--

CREATE TABLE `t_maha` (
  `nidn` int(15) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `umur` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_maha`
--

INSERT INTO `t_maha` (`nidn`, `nama`, `umur`) VALUES
(129807, 'novi', '21');
--
-- Database: `db_malam`
--
CREATE DATABASE IF NOT EXISTS `db_malam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_malam`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_dosen1`
--

CREATE TABLE `t_dosen1` (
  `NIDN` int(3) DEFAULT NULL,
  `NAMA` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `JENJANG` varchar(40) DEFAULT NULL,
  `NOTELP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_dosen1`
--

INSERT INTO `t_dosen1` (`NIDN`, `NAMA`, `ALAMAT`, `JENJANG`, `NOTELP`) VALUES
(12003198, 'ACHMAD FAHRUDIN', 'CIKUPA', 'MAGISTER', '082299211162'),
(12003297, 'SUBCHAN', 'MATAGARA', 'MAGISTER', '082342348765');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mahasiswa1`
--

CREATE TABLE `t_mahasiswa1` (
  `NIM` int(3) DEFAULT NULL,
  `NAMA` varchar(35) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mahasiswa1`
--

INSERT INTO `t_mahasiswa1` (`NIM`, `NAMA`, `ALAMAT`) VALUES
(18020031, 'NOVI', 'TIGARAKSA'),
(18020048, 'SISKA', 'BALARAJA'),
(18020042, 'HARIRI', 'LEGOK');
--
-- Database: `db_penjualan`
--
CREATE DATABASE IF NOT EXISTS `db_penjualan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_penjualan`;
--
-- Database: `db_penjualann`
--
CREATE DATABASE IF NOT EXISTS `db_penjualann` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_penjualann`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(15) DEFAULT NULL,
  `jenis_barang` varchar(20) DEFAULT NULL,
  `jumlah_barang` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `jumlah_barang`) VALUES
('126', 'sendal', 'keras', 4),
('123', 'raket', 'keras', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penjualann`
--

CREATE TABLE `t_penjualann` (
  `no_faktur` int(10) DEFAULT NULL,
  `tanggal_penjualan` varchar(15) DEFAULT NULL,
  `bayar` varchar(15) DEFAULT NULL,
  `total_bayar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_penjualann`
--

INSERT INTO `t_penjualann` (`no_faktur`, `tanggal_penjualan`, `bayar`, `total_bayar`) VALUES
(180034, '07-12-2019', '40000', 200000);
--
-- Database: `db_senior`
--
CREATE DATABASE IF NOT EXISTS `db_senior` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_senior`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nidn` int(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `hobby` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nidn`, `nama`, `alamat`, `hobby`) VALUES
(12345, 'andi', 'tigaraksa', 'makan'),
(12365, 'nina', 'cikupa', 'tidur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `nim` int(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `jurusan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`nim`, `nama`, `alamat`, `jurusan`) VALUES
(800983, 'nova', 'cikuya', 'ekonomi'),
(800981, 'anis', 'malimping', 'psikolog'),
(800989, 'andra', 'tigaraksa', 'hukum'),
(800986, 'amel', 'citra', 'bidan');
--
-- Database: `db_shift`
--
CREATE DATABASE IF NOT EXISTS `db_shift` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_shift`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_dosen`
--

CREATE TABLE `t_dosen` (
  `NIDN` int(3) DEFAULT NULL,
  `NAMA` varchar(35) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `JENJANG` varchar(40) DEFAULT NULL,
  `HOBBY` varchar(10) DEFAULT NULL,
  `NOTELP` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_dosen`
--

INSERT INTO `t_dosen` (`NIDN`, `NAMA`, `ALAMAT`, `JENJANG`, `HOBBY`, `NOTELP`) VALUES
(138998, 'ACHMAD FAHRUDIN', 'CIKUPA', 'MAGISTER', 'NGODING', 2147483647),
(139022, 'SAMSULHUDORI', 'TIGARAKSA', 'MAGISTER', 'MEMBACA', 2147483647),
(156789, 'SANTI', 'TIGARAKSA', 'DIPLOMA', 'MEMBACA', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mahasiswa`
--

CREATE TABLE `t_mahasiswa` (
  `NIM` int(3) DEFAULT NULL,
  `NAMA` varchar(35) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `HOBBY` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mahasiswa`
--

INSERT INTO `t_mahasiswa` (`NIM`, `NAMA`, `ALAMAT`, `HOBBY`) VALUES
(18020010, 'NOVI', 'TIGARAKSA', 'MEMBACA'),
(18020011, 'LIFIA', 'CIKUPA', 'MAKAN'),
(18020032, 'ANISA', 'CIKUPA', 'MENULIS'),
(18020087, 'ANDRA', 'TIGARAKSA', 'MAIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_matakuliah`
--

CREATE TABLE `t_matakuliah` (
  `KDmatkul` varchar(10) DEFAULT NULL,
  `NamaMataKuliah` varchar(20) DEFAULT NULL,
  `SKS` int(5) DEFAULT NULL,
  `JURUSAN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_matakuliah`
--

INSERT INTO `t_matakuliah` (`KDmatkul`, `NamaMataKuliah`, `SKS`, `JURUSAN`) VALUES
('122', 'kalkulus', 2, 'pendidikan'),
('123', 'agama', 3, 'pendidikan'),
('124', 'pemprograman', 3, 'sistem informasi');
--
-- Database: `db_toserba`
--
CREATE DATABASE IF NOT EXISTS `db_toserba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_toserba`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategory` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `id_kategory`, `harga_barang`) VALUES
(101, 'pashmina', 'k71', 40000),
(102, 'seragam', 'k72', 50000),
(103, 'legas', 'k73', 300000),
(104, 'dasi', 'k74', 15000),
(105, 'sabuk', 'k75', 15000),
(106, 'pluit', 'k76', 5000),
(107, 'jeans', 'k77', 12000),
(108, 'gamis', 'k78', 170000),
(109, 'peci', 'k79', 80000),
(110, 'sarung', 'k80', 100000),
(111, 'tedy bear', 'k81', 100000),
(112, 'bedcover', 'k82', 150000),
(113, 'mylove', 'k83', 120000),
(114, 'stich', 'k84', 180000),
(115, 'bantal', 'k85', 50000),
(116, 'guling', 'k86', 50000),
(117, 'tali sepatu', 'k87', 3000),
(118, 'pepsodent', 'k88', 10000),
(119, 'tas', 'k89', 230000),
(120, 'topi pramuka', 'k90', 20000),
(121, 'gantungan', 'k91', 20000),
(122, 'herosin', 'k92', 20000),
(123, 'kipas', 'k93', 170000),
(124, 'tv', 'k94', 800000),
(125, 'ac', 'k95', 3000000),
(126, 'kulkas', 'k96', 1700000),
(127, 'mejikom', 'k97', 800000),
(128, 'emina', 'k98', 80000),
(129, 'mark', 'k99', 800000),
(130, 'eskulin', 'k100', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategori`
--

CREATE TABLE `t_kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `nama_kategori`) VALUES
('k71', 'kerudung'),
('k72', 'baju'),
('k73', 'sepatu'),
('k74', 'perlengkapan sekolah'),
('k75', 'perlengkapan sekolah'),
('k76', 'perlengkapan sekolah'),
('k77', 'celana'),
('k78', 'baju'),
('k79', 'perlengkapan solat'),
('k80', 'perlengkapan solat'),
('k81', 'boneka'),
('k82', 'perlengkapan tidur'),
('k83', 'seprai'),
('k84', 'boneka'),
('k85', 'perlengkapan tidur'),
('k86', 'perlengkapan tidur'),
('k87', 'perlengkapan sekolah'),
('k88', 'pasta gigi'),
('k89', 'perlengkapan sekolah'),
('k90', 'perlengkapan sekolah'),
('k91', 'perlengkapan baju'),
('k92', 'bedak '),
('k93', 'elektronik'),
('k94', 'elektronik'),
('k95', 'elektronik'),
('k96', 'elektronik'),
('k97', 'elektronik'),
('k98', 'skincare'),
('k99', 'skincare'),
('k100', 'parfum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_tranksaksi`
--

CREATE TABLE `t_tranksaksi` (
  `id_tranksaksi` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `no_tranksaksi` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `total_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_tranksaksi`
--

INSERT INTO `t_tranksaksi` (`id_tranksaksi`, `id_barang`, `id_user`, `no_tranksaksi`, `tanggal`, `qty`, `harga_barang`, `total_barang`) VALUES
('TRX001', 101, 'AK1', 1, '2010-02-01', 2, 40000, '80000'),
('TRX002', 102, 'AK2', 2, '2010-02-02', 3, 50000, '150000'),
('TRX003', 103, 'AK7', 3, '2010-02-03', 2, 300000, '600000'),
('TRX004', 104, 'AK4', 4, '2010-02-04', 3, 15000, '45000'),
('TRX005', 104, 'AK5', 5, '2010-02-05', 4, 15000, '60000'),
('TRX006', 104, 'AK6', 6, '2010-02-06', 6, 15000, '90000'),
('TRX007', 104, 'AK7', 7, '2010-02-07', 2, 15000, '30000'),
('TRX008', 104, 'AK4', 8, '2010-02-08', 6, 15000, '90000'),
('TRX009', 104, 'AK9', 9, '2010-02-09', 7, 15000, '105000'),
('TRX010', 104, 'AK10', 10, '2010-02-10', 3, 15000, '45000'),
('TRX011', 104, 'AK11', 11, '2010-02-11', 15, 15000, '225000'),
('TRX012', 104, 'AK11', 12, '2010-02-12', 12, 15000, '180000'),
('TRX013', 104, 'AK11', 13, '2010-02-13', 3, 15000, '45000'),
('TRX014', 104, 'AK11', 14, '2010-02-14', 2, 15000, '30000'),
('TRX015', 104, 'AK11', 15, '2010-02-15', 5, 15000, '75000'),
('TRX016', 116, 'AK11', 16, '2010-02-16', 6, 50000, '300000'),
('TRX017', 117, 'AK11', 17, '2010-02-17', 5, 3000, '15000'),
('TRX018', 118, 'AK11', 18, '2010-02-18', 5, 10000, '50000'),
('TRX019', 119, 'AK11', 19, '2010-02-19', 9, 230000, '2070000'),
('TRX020', 120, 'AK11', 20, '2010-02-20', 8, 20000, '160000'),
('TRX021', 121, 'AK11', 21, '2010-02-21', 4, 20000, '80000'),
('TRX022', 122, 'AK22', 22, '2010-02-22', 3, 20000, '60000'),
('TRX023', 123, 'AK23', 23, '2010-02-23', 2, 170000, '340000'),
('TRX024', 124, 'AK24', 24, '2010-02-24', 1, 800000, '800000'),
('TRX025', 125, 'AK25', 25, '2010-02-25', 2, 3000000, '6000000'),
('TRX026', 126, 'AK26', 26, '2010-02-26', 3, 1700000, '5100000'),
('TRX027', 127, 'AK27', 27, '2010-02-27', 4, 800000, '3200000'),
('TRX028', 128, 'AK28', 28, '2010-02-28', 3, 80000, '240000'),
('TRX029', 129, 'AK29', 29, '2010-03-01', 2, 800000, '1600000'),
('TRX030', 130, 'AK30', 30, '2010-03-02', 1, 20000, '20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(20) NOT NULL,
  `nama_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
('AK1', 'novi'),
('AK2', 'itoh'),
('AK3', 'sinta'),
('AK4', 'santi'),
('AK5', 'tata'),
('AK6', 'tini'),
('AK7', 'atun'),
('AK8', 'nisa'),
('AK9', 'anis'),
('AK10', 'sapira'),
('AK11', 'sasa'),
('AK12', 'santo'),
('AK13', 'andra '),
('AK14', 'lifia'),
('AK15', 'niko'),
('AK16', 'racel'),
('AK17', 'biru'),
('AK18', 'nina'),
('AK19', 'nani'),
('AK20', 'yuyun'),
('AK21', 'yuni'),
('AK22', 'yura'),
('AK23', 'yerus'),
('AK24', 'nida'),
('AK25', 'adam'),
('AK26', 'sandi'),
('AK27', 'sandoro'),
('AK28', 'usy'),
('AK29', 'andika'),
('AK30', 'cinta');
--
-- Database: `kuliah`
--
CREATE DATABASE IF NOT EXISTS `kuliah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kuliah`;
--
-- Database: `pemrograman`
--
CREATE DATABASE IF NOT EXISTS `pemrograman` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pemrograman`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(20) DEFAULT NULL,
  `nama_dosen` varchar(20) DEFAULT NULL,
  `alamat_dosen` varchar(50) DEFAULT NULL,
  `jenjang_pendidikan` varchar(20) DEFAULT NULL,
  `hobby` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `nama_matkul` varchar(20) DEFAULT NULL,
  `sks` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_bookmark`
--

CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_column_info`
--

CREATE TABLE `pma_column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_designer_coords`
--

CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_history`
--

CREATE TABLE `pma_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_pdf_pages`
--

CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_relation`
--

CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_table_coords`
--

CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_table_info`
--

CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_toserba\",\"table\":\"t_tranksaksi\"},{\"db\":\"db_toserba\",\"table\":\"t_user\"},{\"db\":\"db_toserba\",\"table\":\"t_barang\"},{\"db\":\"db_toserba\",\"table\":\"t_kategori\"},{\"db\":\"db_akademik\",\"table\":\"mahasiswa\"},{\"db\":\"db_akademik\",\"table\":\"t_user\"},{\"db\":\"db_cuti\",\"table\":\"t_cuti\"},{\"db\":\"uts3\",\"table\":\"t_cuti\"},{\"db\":\"semester3\",\"table\":\"pembayaran\"},{\"db\":\"semester3\",\"table\":\"barang\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-12-05 04:20:54', '{\"lang\":\"id\"}'),
('root', '2020-02-02 09:53:48', '{\"lang\":\"id\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `semester3`
--
CREATE DATABASE IF NOT EXISTS `semester3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `semester3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `merek`, `harga`) VALUES
(1, 'iphone', 5000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`barang_id`, `qty`, `harga`, `id_karyawan`) VALUES
(1232233, 20, 2000000, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`barang_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `t_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `t_mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `t_mahasiswa`;
--
-- Database: `uts3`
--
CREATE DATABASE IF NOT EXISTS `uts3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uts3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cuti`
--

CREATE TABLE `t_cuti` (
  `nik` varchar(15) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `hak_cuti` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_cuti`
--

INSERT INTO `t_cuti` (`nik`, `nama`, `jabatan`, `hak_cuti`) VALUES
('12345', 'novi', 'QC', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_cuti`
--
ALTER TABLE `t_cuti`
  ADD PRIMARY KEY (`nik`);
--
-- Database: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_pwd`
--

CREATE TABLE `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
