-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2017 at 03:02 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_balitech`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `hak` enum('0','1') NOT NULL,
  `aktiv` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `pass`, `nama_admin`, `email`, `hak`, `aktiv`) VALUES
('admin', 'admin', 'admin', 'rakaagung95@gmail.com', '1', '1'),
('admin', 'admin', 'admin', 'rakaagung95@gmail.com', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jasakirim`
--

CREATE TABLE IF NOT EXISTS `tb_jasakirim` (
  `id_pt` int(5) NOT NULL,
  `perusahaan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jasakirim`
--

INSERT INTO `tb_jasakirim` (`id_pt`, `perusahaan`) VALUES
(2, 'TIKI'),
(1, 'JNE'),
(2, 'TIKI'),
(1, 'JNE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` int(5) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Laptop'),
(2, 'PC'),
(3, 'Mouse'),
(4, 'Headset'),
(5, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `tb_merk`
--

CREATE TABLE IF NOT EXISTS `tb_merk` (
  `id_merk` int(5) NOT NULL,
  `merk_produk` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_merk`
--

INSERT INTO `tb_merk` (`id_merk`, `merk_produk`) VALUES
(2, 'Yamaha'),
(4, 'KYMCO'),
(2, 'Yamaha'),
(4, 'KYMCO');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `kd_order` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `kd_produk` int(5) NOT NULL,
  `id_pt` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `total` int(100) NOT NULL,
  `cek` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`kd_order`, `id_user`, `kd_produk`, `id_pt`, `jumlah`, `harga`, `total`, `cek`) VALUES
(5, 3, 18, 0, 1, 99800000, 99800000, '1'),
(4, 3, 19, 0, 2, 51920000, 103840000, '1'),
(3, 5, 18, 0, 1, 99800000, 99800000, '1'),
(2, 5, 18, 0, 1, 99800000, 99800000, '1'),
(1, 5, 18, 0, 1, 99800000, 99800000, '1'),
(14, 6, 10, 0, 1, 200000, 200000, '1'),
(13, 6, 11, 0, 1, 1000000, 1000000, '1'),
(12, 6, 12, 0, 2, 500000, 1000000, '1'),
(11, 6, 19, 0, 5, 51920000, 259600000, '1'),
(10, 5, 18, 0, 2, 99800000, 199600000, '1'),
(9, 4, 12, 0, 1, 500000, 500000, '1'),
(8, 4, 19, 0, 2, 51920000, 103840000, '1'),
(7, 3, 8, 0, 1, 400000, 400000, '1'),
(6, 3, 14, 0, 2, 21900000, 43800000, '1'),
(5, 3, 18, 0, 1, 99800000, 99800000, '1'),
(4, 3, 19, 0, 2, 51920000, 103840000, '1'),
(3, 5, 18, 0, 1, 99800000, 99800000, '1'),
(2, 5, 18, 0, 1, 99800000, 99800000, '1'),
(1, 5, 18, 0, 1, 99800000, 99800000, '1'),
(14, 6, 10, 0, 1, 200000, 200000, '1'),
(13, 6, 11, 0, 1, 1000000, 1000000, '1'),
(12, 6, 12, 0, 2, 500000, 1000000, '1'),
(11, 6, 19, 0, 5, 51920000, 259600000, '1'),
(10, 5, 18, 0, 2, 99800000, 199600000, '1'),
(9, 4, 12, 0, 1, 500000, 500000, '1'),
(8, 4, 19, 0, 2, 51920000, 103840000, '1'),
(7, 3, 8, 0, 1, 400000, 400000, '1'),
(6, 3, 14, 0, 2, 21900000, 43800000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_temp`
--

CREATE TABLE IF NOT EXISTS `tb_order_temp` (
  `kd_order_temp` varchar(5) NOT NULL,
  `kd_produk` varchar(10) NOT NULL,
  `id_user` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order_temp`
--

INSERT INTO `tb_order_temp` (`kd_order_temp`, `kd_produk`, `id_user`, `jumlah`) VALUES
('2', '19', 7, 2),
('1', '19', 6, 1),
('3', '18', 8, 1),
('2', '19', 7, 2),
('1', '19', 6, 1),
('3', '18', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE IF NOT EXISTS `tb_pesan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subjek` varchar(40) NOT NULL,
  `pesan` text NOT NULL,
  `aktif` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id`, `nama`, `email`, `subjek`, `pesan`, `aktif`) VALUES
(1, 'agung', 'agungraka@gmail.com', 'cakram', 'cakram_downtown', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `kd_produk` int(5) NOT NULL,
  `nama_produk` varchar(60) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `id_merk` int(5) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) NOT NULL DEFAULT '0.00',
  `gambar` varchar(100) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--


-- --------------------------------------------------------

--
-- Table structure for table `tb_upload`
--

CREATE TABLE IF NOT EXISTS `tb_upload` (
  `id` int(3) NOT NULL,
  `data` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_upload`
--


-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `jenis_kelamin`, `alamat`, `email`, `telp`, `username`, `pass`) VALUES
(5, 'Agung Raka Darantika', 'laki-laki', '    Teuku Umar', 'agungrakadr4@yahoo.com', '089605372247', 'agungrk', 'a6a69aec86e808f845f418613a22bcfc'),
(6, 'Tania Wiliam', 'laki-laki', '    Dalung', 'tania@gmail.com', '089763930083', 'tania', '99fedd1e06b9b30fbe17f0e7a0ff91d2'),
(7, 'Darantika Agung', 'laki-laki', '    Teuku Umar', 'rakaagung95@gmail.com', '089763930083', 'agungrakadarantika', '7f061db1d8f99eba2cd7c226177e063b'),
(8, 'Agung Oka', 'laki-laki', 'denpasar', 'oka@gmail.com', '08190976578', 'agungoka', 'b23dec497c19f7d49f030b92acd98347'),
(4, 'Valentino Febrianus', 'laki-laki', '    Nusa Dua', 'vaentino1@yahoo.com', '089677890980', 'valentino1', '683043956f8cd132ab352ad616f15930'),
(3, 'Dahendra Arista', 'laki-laki', '    Sanur, Bali', 'dahnedra1@yahoo.com', '089605372246', 'dahendra1', '93e165a6e8936c3c148b3371b509ab30'),
(5, 'gungrakadarantika', 'laki-laki', '    dps', 'astamotor_perkasa@yahoo.co.id', '089605372247', 'gungraka', '7f061db1d8f99eba2cd7c226177e063b'),
(2, 'Asta motor', 'laki-laki', 'marlboro    ', 'astakymco@gmail.com', '08148696234', 'astamotor', '5663322d8f35915b62634138b1d308c7');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
