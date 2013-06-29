-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2013 at 05:34 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `gambar`, `judul`, `keterangan`) VALUES
(1, 'shot_000023.png', 'dsddsdsdsdsd', 'dsds'),
(2, 'shot_000031.png', 'ewew', 'sxsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id_contact` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id_contact`, `nama`, `email`, `pesan`) VALUES
(2, 'dsdsds', 'dsd', 'dsdsd'),
(3, 'fdfd', 'fdf', 'fdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Makanan Enak'),
(2, 'Outdor'),
(3, 'Kursi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id_member` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `username`, `password`, `nama`, `jk`, `tgl_lahir`, `email`, `alamat`, `telepon`) VALUES
(9, 'lumbung', 'a88b71d35a8350e1f7aa1b79d91671c3', 'Gede Suma Wijaya', 'Laki-Laki', '2013-06-01', 'gedesumawijaya@gmail.com', 'Jalan. Dewi Madri Gg. V/5, Renon, Denpasar Timur, Bali', '083847395705');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesanan`
--

CREATE TABLE IF NOT EXISTS `tbl_pemesanan` (
  `id_pemesanan` int(5) NOT NULL AUTO_INCREMENT,
  `id_member` int(5) NOT NULL,
  `tgl_pesan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pemesanan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_pemesanan`
--

INSERT INTO `tbl_pemesanan` (`id_pemesanan`, `id_member`, `tgl_pesan`) VALUES
(1, 9, '29/Jun/2013 03:34:45'),
(2, 9, '29/Jun/2013 03:37:07'),
(3, 9, '30/Jun/2013 00:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesanan_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_pemesanan_detail` (
  `id_pemesanan_detail` int(5) NOT NULL AUTO_INCREMENT,
  `id_pemesanan` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`id_pemesanan_detail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pemesanan_detail`
--

INSERT INTO `tbl_pemesanan_detail` (`id_pemesanan_detail`, `id_pemesanan`, `id_produk`, `jumlah`) VALUES
(1, 1, 2, 3),
(2, 2, 1, 3),
(3, 2, 2, 1),
(4, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nama`, `gambar`, `harga`, `keterangan`) VALUES
(1, 3, 'Dekorasi Minimalissss', 'shot_000030.png', 3000000, 'Nangkring di kampus lagi, demi sesuap koneksi inet super duper kenceng untuk update SDK android di laptop kesayangan saya. Setelah sebelumnya saya kelayapan kemana-mana menenangkan pikiran yang mumet gak karuan gara-gara faktor X'),
(2, 1, 'Dekorasi Pengantin', '', 4000000, 'Nangkring di kampus lagi, demi sesuap koneksi inet super duper kenceng untuk update SDK android di laptop kesayangan saya. Setelah sebelumnya saya kelayapan kemana-mana menenangkan pikiran yang mumet gak karuan gara-gara faktor X'),
(3, 1, 'dsdsd', '5911_3200537190124_355926050_n.jpg', 45555, 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'john_cena', 'a13b1ae7e46f0155436cf8bd27b3aac3', 'John Cena');
