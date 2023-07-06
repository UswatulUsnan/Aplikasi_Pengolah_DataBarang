-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 03:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `about us`
--

CREATE TABLE `about us` (
  `nama` varchar(50) NOT NULL,
  `nim` int(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hobi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about us`
--

INSERT INTO `about us` (`nama`, `nim`, `prodi`, `hobi`) VALUES
('Kirana', 21103002, 'Teknik Informatika', 'Mendengarkan Musik');

-- --------------------------------------------------------

--
-- Table structure for table `mst_barang`
--

CREATE TABLE `mst_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `merek` varchar(50) DEFAULT NULL,
  `ukuran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_barang`
--

INSERT INTO `mst_barang` (`kd_barang`, `nama_barang`, `kategori_barang`, `merek`, `ukuran`) VALUES
('123', 'pintu', 'Alat Kebersihan', 'peralatan ', '16x60'),
('12314', 'hp', 'Barang Electronik', 'samsung', '20 X 10 cm'),
('123456', 'Meja bundar segitu', 'Barang Furniture', 'xxxxx', '50X50 cm'),
('1456', 'Kuris Tamu VIP', 'Barang Furniture', 'Tasmina', '12 x 20 m');

-- --------------------------------------------------------

--
-- Table structure for table `mst_lokasi`
--

CREATE TABLE `mst_lokasi` (
  `kd_lokasi` varchar(10) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_lokasi`
--

INSERT INTO `mst_lokasi` (`kd_lokasi`, `nama_lokasi`) VALUES
('1234', 'Gudang OB'),
('G00011', 'Gudang berangkas'),
('GD001', 'Ruang Direksi');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id_user`, `username`, `password`, `nama`, `jenis_kelamin`, `alamat`) VALUES
('123', 'uswatul', '1234', 'Uswatul', 'Perempuan', 'Bima'),
('1234', 'kirana', '12345', 'Kirana', 'Perempuan', 'Denpasar'),
('12345', 'Intari', '123456', 'Intari', 'Perempuan', 'Denpasar'),
('1291', 'Tirta', '1234567', 'Tirta', 'Perempuan', 'Denpasar'),
('145', 'Dian', '12345678', 'Dian', 'Perempuan', 'Denpasar');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_aboutus`
--

CREATE TABLE `tabel_aboutus` (
  `nama` varchar(50) NOT NULL,
  `nim` int(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hobi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_aboutus`
--

INSERT INTO `tabel_aboutus` (`nama`, `nim`, `prodi`, `hobi`) VALUES
('Kirana', 21103002, 'Teknik Informatika', 'Mendengarkan Musik'),
('Ni Komang Tri Apriyani', 21103003, 'Teknik Informatika', 'Masak'),
('Uswatul Usnan', 21103032, 'Teknik Informatika', 'Bulu Tangkis'),
('Made Dwi Intari', 21103034, 'Teknik Informatika', 'Shopping'),
('Ni Nyoman Dian Tri Aprilia', 21103037, 'Teknik Informatika', 'Travelling');

-- --------------------------------------------------------

--
-- Table structure for table `trx_inventaris_keluar`
--

CREATE TABLE `trx_inventaris_keluar` (
  `kd_inventaris_keluar` char(15) NOT NULL,
  `kd_inventaris_masuk` char(15) NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_inventaris_keluar`
--

INSERT INTO `trx_inventaris_keluar` (`kd_inventaris_keluar`, `kd_inventaris_masuk`, `jumlah`, `tanggal_keluar`, `keterangan`, `id_user`) VALUES
('OUT0001', 'IN0001', 10, '2023-06-26', 'coba ket', '123'),
('OUT0002', 'IN0001', 1, '2023-06-26', 'rusak', '123'),
('OUT0003', 'IN0003', 1, '2023-06-26', '-', '123'),
('OUT0004', 'IN0003', 1, '2023-06-26', 'rusak terbanting', '123');

-- --------------------------------------------------------

--
-- Table structure for table `trx_inventaris_masuk`
--

CREATE TABLE `trx_inventaris_masuk` (
  `kd_inventaris_masuk` char(15) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah` float NOT NULL,
  `nilai_barang` float NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `id_user` varchar(10) NOT NULL,
  `kd_lokasi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_inventaris_masuk`
--

INSERT INTO `trx_inventaris_masuk` (`kd_inventaris_masuk`, `kd_barang`, `jumlah`, `nilai_barang`, `tanggal_masuk`, `id_user`, `kd_lokasi`) VALUES
('IN0001', '12314', 20, 1000, '2023-06-26', '123', 'G00011'),
('IN0002', '1456', 1, 10000, '2023-06-26', '123', 'G00011'),
('IN0003', '1456', 1, 10000, '2023-06-26', '123', 'GD001'),
('IN0004', '123', 2, 100, '2023-06-29', '123', 'GD001'),
('IN0005', '123456', 12, 20000, '2023-06-30', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about us`
--
ALTER TABLE `about us`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `mst_barang`
--
ALTER TABLE `mst_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `mst_lokasi`
--
ALTER TABLE `mst_lokasi`
  ADD PRIMARY KEY (`kd_lokasi`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `trx_inventaris_keluar`
--
ALTER TABLE `trx_inventaris_keluar`
  ADD PRIMARY KEY (`kd_inventaris_keluar`);

--
-- Indexes for table `trx_inventaris_masuk`
--
ALTER TABLE `trx_inventaris_masuk`
  ADD PRIMARY KEY (`kd_inventaris_masuk`,`kd_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
