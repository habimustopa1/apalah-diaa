-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2024 pada 03.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(51, 'fqwwqdd', 'safwg', '2024-02-16', 14),
(56, '', '', '2024-02-19', 14),
(57, 'a', 'a', '2024-02-19', 14),
(58, 'habi', 'er34t', '2024-02-22', 12),
(59, 'poto 1', 'kenangan', '2024-02-22', 16),
(60, 'tes', 'tes', '2024-02-23', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(17, 'c', 'csccsc', '2024-02-19', '980993429-foto kayla.jpg', 51, 14),
(19, 'f', 'f', '2024-02-22', '1431426359-download.jpg', 58, 12),
(20, 'F-1', 'wety34y', '2024-02-22', '192706366-RANY.png', 58, 12),
(21, 'F-1-2', 'fsjkfyg', '2024-02-22', '2029424296-foto kayla.jpg', 59, 16),
(24, 'tes', 'tes', '2024-02-23', '584145060-download (2).jpg', 60, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(15, 17, 14, 'awdadaw🤣🤣🤣', '2024-02-23'),
(16, 17, 14, '', '2024-02-23'),
(17, 19, 14, 't45y🌹', '2024-02-23'),
(18, 19, 14, 'dew35r235t', '2024-02-23'),
(19, 19, 14, '🤞\r\n', '2024-02-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(35, 17, 14, '2024-02-22'),
(36, 17, 14, '2024-02-22'),
(37, 17, 14, '2024-02-22'),
(67, 19, 12, '2024-02-22'),
(69, 19, 16, '2024-02-22'),
(70, 20, 16, '2024-02-22'),
(71, 21, 16, '2024-02-22'),
(72, 17, 16, '2024-02-22'),
(73, 17, 14, '2024-02-23'),
(74, 17, 14, '2024-02-23'),
(75, 17, 14, '2024-02-23'),
(76, 17, 14, '2024-02-23'),
(77, 17, 14, '2024-02-23'),
(78, 17, 14, '2024-02-23'),
(79, 17, 14, '2024-02-23'),
(80, 17, 14, '2024-02-23'),
(81, 19, 14, '2024-02-23'),
(82, 17, 14, '2024-02-23'),
(83, 17, 14, '2024-02-23'),
(84, 17, 14, '2024-02-23'),
(85, 17, 14, '2024-02-23'),
(86, 17, 14, '2024-02-23'),
(87, 17, 14, '2024-02-23'),
(88, 21, 14, '2024-02-23'),
(89, 17, 14, '2024-02-23'),
(90, 17, 14, '2024-02-23'),
(91, 17, 14, '2024-02-23'),
(92, 17, 14, '2024-02-23'),
(93, 17, 14, '2024-02-23'),
(94, 17, 14, '2024-02-23'),
(95, 17, 14, '2024-02-23'),
(96, 17, 14, '2024-02-23'),
(97, 17, 14, '2024-02-23'),
(98, 17, 14, '2024-02-23'),
(99, 17, 14, '2024-02-23'),
(100, 17, 14, '2024-02-23'),
(101, 17, 14, '2024-02-23'),
(102, 17, 14, '2024-02-23'),
(103, 17, 14, '2024-02-23'),
(104, 17, 14, '2024-02-23'),
(108, 17, 14, '2024-02-23'),
(109, 17, 14, '2024-02-23'),
(110, 17, 14, '2024-02-23'),
(111, 17, 14, '2024-02-23'),
(112, 17, 14, '2024-02-23'),
(113, 17, 14, '2024-02-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(5, 'tes1', '123', 'r0895361157520@gmail.com', 'topa', 'gfdgggg'),
(6, 'abel', '12', 'abelr@gmail.com', 'abelrattna', 'kp.cikukuk'),
(7, 'tes1', '123', 'erwin@gmail.com', 'habi mustopa', 'kp.cikendal hilir'),
(8, 'habi', 'habi123', 'erwin@gmail.com', 'habi mustopa', 'kp.cikendal hilir'),
(9, 'raeni', 'raeni', 'user@gmail.com', 'user1', 'gfdgggg'),
(10, '', '', '', '', ''),
(11, 'raeni', 'raeni', 'raeni@gamil.com', 'raeni', 'kajen'),
(12, 'habi', '202cb962ac59075b964b07152d234b70', 'raeni@gamil.com', 'habi mustopa', 'kp.cikendal hilir'),
(13, 'admin', '123', 'erwin@gmail.com', 'user1', 'ciberem'),
(14, 'admin', '202cb962ac59075b964b07152d234b70', 'raeni@gamil.com', 'abelrattna', 'kp.kubang'),
(15, 'habi', '202cb962ac59075b964b07152d234b70', 'erwin@gmail.com', 'fajar sad boy', 'kajen'),
(16, 'erwin', '202cb962ac59075b964b07152d234b70', 'erwin@gmail.com', '123', 've');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
