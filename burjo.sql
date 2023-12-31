-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Des 2023 pada 06.15
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

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `kode_menu`, `nama`, `harga`, `gambar`, `kategori`, `status`) VALUES
(2, 'MN2', 'Milk Shake Vanilla', 20000, '6590eafac7eb7.jpeg', 'Minuman', 'tersedia'),
(3, 'MN3', 'Milk Shake Cappucino', 20000, '6590eb10d11fa.jpeg', 'Minuman', 'tersedia'),
(4, 'MN4', 'Es Kopi Gula Aren', 20000, '6590eb2bb611a.jpeg', 'Minuman', 'tersedia'),
(5, 'MN5', 'Es Teh', 4000, '6590eb39d35a3.png', 'Minuman', 'tersedia'),
(6, 'MN6', 'Dory Cabe Garam + Nasi', 25000, '6590eb6c0d613.jpeg', 'Makanan', 'tersedia'),
(7, 'MN7', 'Beef Sosis Grill', 25000, '6590eb94cb038.jpeg', 'Makanan', 'tersedia'),
(8, 'MN8', 'Chicken Grill Fire', 25000, '6590ebadeb7d7.jpg', 'Makanan', 'tersedia'),
(9, 'MN9', 'Chicken Karage Fire', 25000, '6590ebcaf40d7.jpeg', 'Makanan', 'tersedia'),
(10, 'MN10', 'Milk Shake Chocolate', 20000, '6590ebe692244.jpeg', 'Minuman', 'tersedia'),
(11, 'MN10', 'Chicken Crispy Double', 25000, '65910189e5a35.jpg', 'Makanan', 'tersedia'),
(12, 'MN10', 'Es Jeruk', 6000, '659101e92ea35.jpg', 'Minuman', 'tersedia'),
(13, 'MN10', 'Jus Mangga', 15000, '6591028e03ba2.jpg', 'Minuman', 'tersedia'),
(14, 'MN10', 'Shawarma Chicken', 25000, '659103ff3dc63.jpg', 'Snack', 'tersedia'),
(15, 'MN10', 'Grill Beef Burger', 17500, '6591042d971a7.jpg', 'Snack', 'tersedia'),
(16, 'MN10', 'Chicken Katsu Burger', 15000, '65910457ba665.jpg', 'Snack', 'tersedia'),
(17, 'MN10', 'Karage Chicken', 22500, '65910488596e0.jpg', 'Snack', 'tersedia'),
(18, 'MN10', 'Kentang Goreng', 15000, '659104b0952f4.jpg', 'Snack', 'tersedia'),
(19, 'MN10', 'Mie Goreng', 16000, '659104e01e093.jpg', 'Fast Food', 'tersedia'),
(20, 'MN10', 'Spaghetti Bolognese Chicken', 17500, '659105265c8c5.jpg', 'Fast Food', 'tersedia'),
(21, 'MN10', 'Spaghetti Bolognese Beef', 20000, '6591054803754.jpg', 'Fast Food', 'tersedia'),
(22, 'MN10', 'Fettucini Carbonara Smoked Beef', 25000, '6591057e890b7.jpg', 'Fast Food', 'tersedia'),
(23, 'MN10', 'Pizza Mince Chicken', 35000, '659105e909cd5.jpg', 'Dessert', 'tersedia'),
(24, 'MN10', 'Pizza Beef Sausages', 35000, '6591060d3cd0f.jpg', 'Dessert', 'tersedia'),
(25, 'MN10', 'Pizza Smoked Beef', 40000, '6591063bf066e.jpg', 'Dessert', 'tersedia'),
(26, 'MN10', 'Pizza Mince Beef', 40000, '6591065ef408d.jpg', 'Dessert', 'tersedia'),
(27, 'MN10', 'Beef Tenderloin Grill', 40000, '659106a3b918c.jpg', 'Makanan', 'tersedia'),
(28, 'MN10', 'Chicken Cordon Bleu', 32500, '659106db6f28f.jpg', 'Makanan', 'tersedia');

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
(91, '6590f68eb4b98', 'MN9', 2),
(92, '6590f68eb4b98', 'MN8', 1);

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
(28, '6590f68eb4b98', 'Dani', '2023-12-31 12:05:18');

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
(4, 'dani', '909d04bb454d2fd8f73735a43c5fe516'),
(5, 'dani12', '909d04bb454d2fd8f73735a43c5fe516');

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
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
