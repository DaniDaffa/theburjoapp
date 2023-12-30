-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Des 2023 pada 11.39
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burjo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `kode_menu` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int NOT NULL,
  `kode_pesanan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_menu` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `kode_menu`, `qty`) VALUES
(46, '62ac602fbe40', 'MN52', 5),
(49, '658fd1b1cab3', 'MN52', 1),
(50, '658fd1b1cab3', 'MN51', 1),
(51, '658fd3177ada', 'MN52', 1),
(52, '658fd3177ada', 'MN51', 1),
(53, '658feb5281cb2', 'MN52', 1),
(54, '658feb5281cb2', 'MN51', 1),
(55, '658feb96f0c76', 'MN52', 1),
(56, '658feb96f0c76', 'MN51', 1),
(57, '658feb9e17a1f', 'MN52', 1),
(58, '658feb9e17a1f', 'MN51', 1),
(59, '658febbeb9ec6', 'MN52', 1),
(60, '658febbeb9ec6', 'MN51', 1),
(61, '658febfc537aa', 'MN52', 1),
(62, '658febfc537aa', 'MN51', 1),
(63, '658fec24800e5', 'MN52', 1),
(64, '658fec24800e5', 'MN51', 1),
(65, '658fece322f9e', 'MN52', 1),
(66, '658fece322f9e', 'MN51', 1),
(67, '658fece5348f6', 'MN52', 1),
(68, '658fece5348f6', 'MN51', 1),
(69, '658fece7c1a12', 'MN52', 1),
(70, '658fece7c1a12', 'MN51', 1),
(71, '658fecf06a2c0', 'MN52', 1),
(72, '658fecf06a2c0', 'MN51', 1),
(73, '658fed0ce08ec', 'MN52', 1),
(74, '658fed0ce08ec', 'MN51', 1),
(75, '658fed232f3ce', 'MN52', 1),
(76, '658fed232f3ce', 'MN51', 1),
(77, '658fed55bb648', 'MN52', 1),
(78, '658fed55bb648', 'MN51', 1),
(79, '658fed63b84c5', 'MN52', 1),
(80, '658fed63b84c5', 'MN51', 1),
(81, '658fed6bc7026', 'MN52', 1),
(82, '658fed6bc7026', 'MN51', 1),
(83, '658ff235abb7a', 'MN52', 1),
(84, '658ff235abb7a', 'MN51', 1),
(85, '658ff245c11e8', 'MN52', 1),
(86, '658ff245c11e8', 'MN51', 1),
(87, '658ff245c11e8', 'MN50', 1),
(88, '658ff245c11e8', 'MN47', 1),
(89, '658ff245c11e8', 'MN45', 1),
(90, '658ff245c11e8', 'MN44', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `kode_pesanan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_pelanggan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_pesanan`, `nama_pelanggan`, `waktu`) VALUES
(22, '62ac602fbe40', 'saq', '2022-06-17 18:06:24'),
(24, '658fd1b1cab3', 'cth', '2023-12-30 15:15:45'),
(25, '658fd3177ada', 'erere', '2023-12-30 15:21:45'),
(26, '658ff235abb7a', 'kkk', '2023-12-30 17:34:29'),
(27, '658ff245c11e8', 'adik', '2023-12-30 17:34:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'rendi12', '69c796f5bbd1339f3ba3e18ce54fcc63'),
(3, 'kun12', '81baf44762783600b7ccc255434041e2'),
(4, 'dani', '909d04bb454d2fd8f73735a43c5fe516');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
