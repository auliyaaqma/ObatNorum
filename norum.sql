-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Nov 2018 pada 17.45
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `norum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `kandungan_obat` text NOT NULL,
  `carapenggunaan_obat` text NOT NULL,
  `gambar_obat` varchar(100) NOT NULL,
  `indikasiumum_obat` text NOT NULL,
  `deskripsi_obat` text NOT NULL,
  `kemasan_obat` varchar(100) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `kode_bentuksediaan` int(11) NOT NULL,
  `kode_golongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama_obat`, `kandungan_obat`, `carapenggunaan_obat`, `gambar_obat`, `indikasiumum_obat`, `deskripsi_obat`, `kemasan_obat`, `kode_kategori`, `kode_bentuksediaan`, `kode_golongan`) VALUES
(46, 'AMLOdipine', 'Amlodipine 10 mg', 'Sebelum atau sesudah makan', '-', 'Hipertensi, Iskemia Miokardial, Angina.', 'Struktur amlodipine adalah 3-ethil-5-methil-2-(2-aminoethoxymethyl)-4-(2-chlorophenyl)-1,4-dihydro-6-methyl-3,5 pyridinedicarboxylate benzenesulphonate.', 'Tablet 10 Mg X 3 X 10', 1, 3, 1),
(47, 'NIFEdipine', 'Nifedipine', '-', '-', '-', '-', '-', 1, 3, 1),
(48, 'AMINOfusin', 'Amino acids 50 g, vitamins, electrolytes', '-', '-', '-', '-', '-', 1, 1, 1),
(49, 'COMAfusin', 'Asam amino 50 g dengan 50% BCAA, xylitol, vitamin, dan elektrolit.', '-', '-', 'Seluruh kasus-kasus berat insufisiensi hati dengan koma eksogenus atau prekoma hepatikum.', 'Mengandung 50 gram asam amino, xylitol, elektrolit, 50 % BCAA, dan vitamin, Comafusin merupakan cairan infus yang berfungsi sebagai nutrisi dan dikhususkan untuk pasien dengan penyakit hati yang disertai dengan kondisi prekoma hepatikum atau koma eksofagus. Dimasukkan secara intravena dengan dosis antara 15 hingga 20 tetes setiap menitnya. Penggunaan harus berdasarkan resep atau petunjuk dari dokter, terutama untuk ibu hamil dan menyusui untuk mengurangi efek samping dari obat ini. Hindari berkendara apabila merasa pusing danmengantuk setelah menggunakan Comafusin.', 'botol 500 ml', 1, 1, 1),
(50, 'alloPURINol', 'Allopurinol 100 mg', 'Sesudah makan', '-', 'Hiperurisemia primer dan sekunder (gout)', '-', 'Tablet 100 Mg X 10 X 10', 1, 1, 1),
(51, 'haloPERIDol', 'haloperidol', '-', '-', 'untuk mengatasi gejala psikosis pada gangguan mental, seperti skizofrenia.', '-', 'Box, 10 strip x 10 tablet', 1, 1, 1),
(53, 'APTor', 'Acetylsalicylic acid 100 mg', 'Sesudah makan', '-', 'Menurunkan resiko Trombosis Koroner lebih lanjut selama fase pemulihan dari Infark Miokard, mengurangi resiko berulangnya serangan iskemik sepintas & stroke pada pasien, untuk meringankan rasa nyeri, seperti pada sakit kepala, sakit gigi.', '-', 'Dus, 10 Strip @ 10 Tablet Salut Enterik', 1, 1, 1),
(54, 'LIPITor', 'Atorvastatin Calcium Trihydrate 40 mg', 'Diminum sebelum atau sesudah makan', '-', 'Tambahan terhadap diet untuk menurunkan kadar Kolesterol Total, LDL, Apolipoprotein B & Trigliserida yang meningkat pada pasien dengan Hiperkolesterolemia primer, Hiperlipidemia kombinasi atau campuran, Hiperkolesterolemia famili heterozigot & homozigot jika respon diet & tindakan nonfarmakologi tidak adekuat. Pencegahan komplikasi kardiovaskular.', 'Diproduksi oleh Pfizer, obat ini adalah terapi tambahan untuk menurunkan kadar kolesterol tinggi, LDL, Apolipoprotein B, dan Trigliserida pada pasien dengan Hiperkolesterolemia primer, Hiperlipidemia kombinasi atau campuran, Hiperkolesterolemia famili heterozigos dan homozigos. Kandungan atorvastatin dapat bekerja menghambat reaksi beberapa enzim yang dibutuhkan tubuh untuk memproduksi kolesterol. Resiko penyakit jantung dan penyakit pembuluh darah pun dapat ditekan. Agar lebih aman, minta petunjuk dokter saat hendak mengonsumsinya.', 'Dus, 3 Strip @ 10 Tablet Salut', 1, 1, 1),
(55, 'asam TRANEXamat', 'ASAM TRANEKSAMAT', '-', '-', 'fibrinolisis lokal, edema, pendarahan abnormal', '-', 'ampul', 1, 1, 1),
(56, 'asam MEFENamat', 'Asam mefenamat 250 mg', 'diberikan sesudah makan', '-', 'Meredakan nyeri ringan sampai sedang karena sakit kepala, sakit gigi, dismenore primer, karena trauma, nyeri otot dan sesudah operasi', '-', 'Dus, 10 Strip X 10 Tablet', 1, 1, 1),
(57, 'AZIthromycin', 'AZITHROMYCIN', '-', '-', 'Infeksi saluran napas atas & bwh, kulit & struktur kulit, uretritis & servisitis non GO krn Chlamydia trachomatis. Terapi pneumonia komuniti yang disebabkan oleh organisme yang peka.', '-', 'botol infus', 1, 1, 1),
(58, 'ERYthromycin', 'ERYTHROMYCIN', 'Dikonsumsi pada perut kosong (1 atau 2 jam sebelum/sesudah makan)', '-', 'Untuk mencegah infeksi saluran nafas bagian atas terutama yang disebabkan oleh kuman S. pyogenes (streptokokus grup A beta-hemolitik)', '-', 'Tablet 500 X 100 X 1', 1, 1, 1),
(59, 'BISOPRolol', 'Bisoprolol', 'Sesudah makan', '-', 'Untuk hipertensi, bisa digunakan sebagai monoterapi atau dikombinasikan dengan antihipertensi lain.', '-', '1 Dos Isi 10 Strip X 10 Tablet', 1, 1, 1),
(60, 'PROPANolol', 'Propanolol HCl 10 mg', 'Berikan sebelum makan', '-', 'Terapi hipertensi, angina, aritmia, pencegahan migrain', '-', '1 Dos Isi 10 Strip X 10 Tablet', 1, 1, 1),
(61, 'Brainact O-DIS', 'Citicoline 500 mg', 'Diletakkan dalam rongga mulut sampai tab larut', '-', 'Untuk membantu menangani penurunan kognitif pada usia lanjut', 'Brainact O-Dis merupakan obat berupa tablet yang diindikasikan untuk membantu menangani gangguan kesehatan yang disebabkan karena terjadinya penurunan kognitif pada usia lanjut. Diproduksi oleh Kalbe Farma, obat ini mengandung citicoline 500 miligram yang berfungsi untuk mengurangi kerusakan otak yang disebabkan karena stroke, parkinson, cedera kepala yang disebabkan karena kecelakaan, demensia, alzheimer, dan lain sebagainya. Penggunaan obat ini harus dengan resep atau anjuran dari dokter. Waspada penggunaan jangka panjang yang bisa menimbulkan diare, sakit kepala, dan sulit tidur.', '1 Dos Isi 3 Strip X 10 Tablet', 1, 1, 1),
(62, 'Brainact', 'Citicoline 1000 mg', 'Dapat diberikan sebelum atau sesudah makan', '-', 'untuk membantu menangani penurunan kognitif pada usia lanjut', '-', '1 Dos isi 3 Strip x 10 Tablet', 1, 1, 1),
(63, 'CardisAN', 'Amlodipine 10 mg', 'Sebelum atau sesudah makan', '-', 'Hipertensi, Iskemia Miokardial, Angina.', '-', '1 Dos Isi 5 Strip X 10 Tablet', 1, 1, 1),
(64, 'CardisMO', 'Isosorbide 5-mononitrate 20 mg', 'Sebelum atau sesudah makan', '-', 'Terapi jangka panjang Penyakit Jantung Koroner/PJK dan pencegahan Angina Pektoris , terapi tambahan pada Gagal Jantung Kongestif yang tidak respon adekuat terhadap glikosida jantung dan/atau diuretik.', '-', 'Tablet 20 Mg X 10 X 10', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_bentuksediaan` (`kode_bentuksediaan`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kode_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `obat_ibfk_3` FOREIGN KEY (`kode_bentuksediaan`) REFERENCES `bentuksediaan` (`kode_bentuksediaan`),
  ADD CONSTRAINT `obat_ibfk_4` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
