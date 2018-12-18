-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 07:14 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5896829_norum`
--

-- --------------------------------------------------------

--
-- Table structure for table `bentuksediaan`
--

CREATE TABLE `bentuksediaan` (
  `kode_bentuksediaan` int(11) NOT NULL,
  `nama_bentuksediaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bentuksediaan`
--

INSERT INTO `bentuksediaan` (`kode_bentuksediaan`, `nama_bentuksediaan`) VALUES
(1, 'Liquid'),
(2, 'Semisolid'),
(3, 'Solid');

-- --------------------------------------------------------

--
-- Table structure for table `dosis`
--

CREATE TABLE `dosis` (
  `kode_dosis` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_dosis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosis`
--

INSERT INTO `dosis` (`kode_dosis`, `kode_obat`, `isi_dosis`) VALUES
(1, 5, 'Dewasa : Awal : 100-300 mg/hari. '),
(2, 5, 'Pemeliharaan : 200-600 mg/hari. Maksimal : 900 mg/hari.'),
(3, 5, 'Kondisi ringan : 2-10 mg/kg BB/hari atau 100-200 mg/hari.'),
(4, 5, 'Kondisi sedang : 300-600 mg/hari.'),
(5, 5, 'Kondisi berat : 700-900 mg/hari. '),
(6, 5, ' Anak : 10-20 mg/kg BB/hari');

-- --------------------------------------------------------

--
-- Table structure for table `efeksamping`
--

CREATE TABLE `efeksamping` (
  `kode_efeksamping` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_efeksamping` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `efeksamping`
--

INSERT INTO `efeksamping` (`kode_efeksamping`, `kode_obat`, `isi_efeksamping`) VALUES
(1, 3, 'Adanya ke tidak seimbangan metabolisme'),
(2, 3, 'Terjadi Hyperammonemia'),
(3, 3, 'Nitrogen tinggi dalam darah'),
(4, 3, 'Stupor'),
(5, 3, 'Terjadi koma pada pasien'),
(6, 3, 'Bisa mengakibatkan keracunan alumunium'),
(7, 5, ' sakit perut, mual, dan diare, ruam pada kulit'),
(8, 6, 'Disfungsi ereksi.'),
(9, 6, 'Gangguan siklus menstruasi.'),
(10, 6, 'Keinginan untuk terus bergerak (akathisia).'),
(11, 6, 'Gangguan pada gerakan otot (distonia).'),
(12, 6, 'Gerakan tidak terkendali pada lidah, wajah, dan bibir.'),
(13, 6, 'Berat badan bertambah.'),
(14, 6, 'Otot kaku.'),
(15, 6, 'Gejala seperti penyakit Parkinson.'),
(16, 6, 'Sakit kepala.'),
(17, 6, 'Sulit tidur.'),
(18, 6, 'Lemas.'),
(19, 9, 'Sakit kepala.'),
(20, 9, 'Nyeri otot dan sendi.'),
(21, 9, 'Hidung tersumbat.'),
(22, 9, 'Nyeri perut.'),
(23, 9, 'Nyeri punggung.'),
(24, 9, 'Mual dan muntah.'),
(25, 9, 'Diare'),
(26, 9, 'Lemas.'),
(27, 9, 'Anemia.'),
(28, 9, 'Migrain.'),
(29, 9, 'Pusing.'),
(30, 10, 'Nyeri ulu hati.'),
(31, 10, 'Gangguan pencernaan.'),
(32, 10, 'Hilang nafsu makan.'),
(33, 10, 'ual dan muntah.'),
(34, 10, 'Sakit kepala.'),
(35, 10, 'Mengantuk dan kelelahan.');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` int(11) NOT NULL,
  `nama_golongan` varchar(100) NOT NULL,
  `gambar_golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `nama_golongan`, `gambar_golongan`) VALUES
(1, 'Obat Bebas', 'obat-bebas.png'),
(3, 'Obat Keras', 'obat-keras.png'),
(4, 'Psikotropika', 'narkotika-dan-psikotropika.png'),
(5, 'Narkotika', 'narkotika-dan-psikotropika.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
(1, 'Alergi & Sistem Imun'),
(2, 'Anestesi Lokal & Umum'),
(3, 'Anti Mual Muntah Selama Kehamilan'),
(4, 'Antianemia'),
(5, 'Antibiotik'),
(6, 'Antidiuretik'),
(7, 'Antidotum & Obat Detoksifikasi'),
(8, 'Antihemoroid'),
(9, 'Antihormon'),
(10, 'Antiinfeksi (Sistemik)'),
(11, 'Antineoplastik'),
(12, 'Antioksidan'),
(13, 'Antipirai'),
(14, 'Antirematik'),
(15, 'Aromaterapi'),
(16, 'Balsem & Minyak Angin'),
(17, 'Balsem, Minyak Urut / Minyak Pijat'),
(18, 'BPJS'),
(19, 'Dental'),
(20, 'Dinas Kesehatan'),
(21, 'DMARD'),
(22, 'Elektrolit'),
(23, 'Family Care'),
(24, 'Farmasi'),
(25, 'Haid / Menstruasi'),
(26, 'Herbal'),
(27, 'Hormon'),
(28, 'Hormon Kortikosteroid'),
(29, 'Jamu'),
(30, 'Kompres Demam'),
(31, 'Kontrasepsi'),
(32, 'Kulit'),
(33, 'Larutan'),
(34, 'Larutan Intravena & Larutan Steril Lain'),
(35, 'Makrolid'),
(36, 'Mata'),
(37, 'Minuman Energi'),
(38, 'Minuman Kesehatan'),
(39, 'Minuman Larutan Penyegar'),
(40, 'Nootropik & Neurotonik/Neurotropik'),
(41, 'Nutrisi'),
(42, 'Obat & Nutrisi Tulang / Sendi'),
(43, 'Obat Alternatif'),
(44, 'Obat cacingan'),
(45, 'Obat Epilepsi'),
(46, 'Obat Gigi dan Mulut'),
(47, 'Obat Gondok'),
(48, 'Obat Kesuburan'),
(49, 'Obat Kumur'),
(50, 'Obat Metabolisme Tulang'),
(51, 'Obat Midriatikum'),
(52, 'Obat Miotikum'),
(53, 'Obat Pelangsing'),
(54, 'Obat Penghambat Neuromuskular'),
(55, 'Obat Sariawan'),
(56, 'Obat Semprot'),
(57, 'Obat Stamina Hubungan Suami Istri'),
(58, 'Obat THT'),
(59, 'Obat untuk Terapi Ketergantungan Zat'),
(60, 'Obat untuk Tukak & Inflamasi Rongga Mulut'),
(61, 'Onkologi'),
(62, 'Pasta Gigi'),
(63, 'Pelancar ASI'),
(64, 'Pelarut Obat/Pemanis Obat'),
(65, 'Pelega Tenggorokan dan Pernafasan'),
(66, 'Pemanis Untuk Penderita Diabetes & Diet'),
(67, 'Pembasmi Kutu Rambut'),
(68, 'Pembersih Tangan'),
(69, 'Pencegah/Penghilang Bau Mulut'),
(70, 'Penumbuh Kumis Jenggot Cambang'),
(71, 'Penyakit'),
(72, 'Perawatan Luka'),
(73, 'Perawatan Suportif'),
(74, 'Plester Luka'),
(75, 'Preparat Psoriasis Seboroik & Iktiosis'),
(76, 'Produk Kewanitaan'),
(77, 'Produk Perawatan Bayi & Anak'),
(78, 'Produk Terapeutik Lain'),
(79, 'Produk utk Organ Intim'),
(80, 'Sistem Endokrin & Metabolik'),
(81, 'Sistem Gastrointestinal & Hepatobilier'),
(82, 'Sistem Kardiovaskular & Hematopoietik'),
(83, 'Sistem Kemih Kelamin'),
(84, 'Sistem Muskuloskeletal'),
(85, 'Sistem Pernapasan'),
(86, 'Sistem Saraf Pusat'),
(87, 'Spray Antinyeri'),
(88, 'Suplemen Diabetes'),
(89, 'Suplemen Energi'),
(90, 'Suplemen Kuku'),
(91, 'Suplemen Prostat dan Saluran Kencing'),
(92, 'Susu'),
(93, 'Telinga & Mulut/Tenggorokan'),
(94, 'Uncategorized'),
(95, 'Vaksin'),
(96, 'Vaksin Antiserum & Imunologikal'),
(97, 'VCO'),
(98, 'Vitamin & Mineral');

-- --------------------------------------------------------

--
-- Table structure for table `kegunaan`
--

CREATE TABLE `kegunaan` (
  `kode_kegunaan` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_kegunaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegunaan`
--

INSERT INTO `kegunaan` (`kode_kegunaan`, `kode_obat`, `isi_kegunaan`) VALUES
(1, 3, 'Nutrisi parenteral pemenuhan energi protein'),
(2, 3, 'Penambah energi pada bayi prematur'),
(3, 3, 'Sumber vitamin dan elektrolit'),
(4, 3, 'Komponen nutrisi parenteral'),
(5, 3, 'Untuk keseimbangan nitrogen negatif'),
(6, 4, 'untuk memenuhi nutrisi melalui selang kedalam pembuluh darah pada semua kasus gangguan hati berat dengan koma eksogen atau prakoma hepatikum, seperti pada pasien dengan sirosis hati, setelah operasi pemasangan shunt, dan kasus keracunan. '),
(7, 5, 'Mencegah gout dan pembentukan batu ginjal tertentu dengan menurunkan kadar asam urat yang tinggi'),
(8, 5, 'Mencegah peningkatan kadar asam urat pada pasien kanker yang menjalani kemoterapi'),
(9, 6, 'untuk mengatasi gejala psikosis pada gangguan mental, seperti skizofrenia. '),
(10, 6, 'membantu mengurangi gejala sindrom Tourette, seperti gerakan otot yang tidak terkontrol.'),
(11, 6, ' Mengatasi gangguan perilaku, seperti gelisah atau perilaku agresif.'),
(12, 7, 'sebagai penurun demam dan pereda nyeri seperti  sakit kepala, sakit gigi dan nyeri ringan lainnya. '),
(13, 7, 'membantu mencegah serangan jantung, stroke'),
(14, 7, 'sebagai antiplatelet (menghambat pembekuan darah)'),
(15, 9, 'untuk mengurangi perdarahan pada wanita dengan menorrhagia'),
(16, 9, 'mencegah perdarahan saat tindakan cabut gigi pada pasien hemofilia.'),
(17, 9, 'untuk mimisan, hifema atau perdarahan pada mata, perdarahan pasca operasi.'),
(18, 9, 'hereditary angioedema, yaitu kelainan genetik yang mengakibatkan pembengkakan di bawah kulit.'),
(19, 10, 'Meredakan rasa sakit dan peradangan'),
(20, 11, 'Mengobati infeksi bakteri'),
(21, 21, 'untuk pengobatan penyakit seperti alergi pada saluran pernafasan, kulit dan mata.\r\n'),
(22, 19, 'mengobati gejala alergi, seperti bersin-bersin, ruam kulit, pilek, hidung tersumbat, dan mata berair akibat paparan alergen\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `lasa`
--

CREATE TABLE `lasa` (
  `kode_lasa` int(11) NOT NULL,
  `kode_obat1` int(11) NOT NULL,
  `kode_obat2` int(11) NOT NULL,
  `status_lasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lasa`
--

INSERT INTO `lasa` (`kode_lasa`, `kode_obat1`, `kode_obat2`, `status_lasa`) VALUES
(1, 1, 2, 1),
(2, 3, 4, 1),
(3, 5, 6, 1),
(4, 7, 8, 1),
(5, 9, 10, 1),
(6, 11, 12, 1),
(7, 13, 14, 1),
(8, 15, 16, 1),
(9, 17, 18, 1),
(10, 19, 21, 0),
(11, 20, 22, 0),
(12, 23, 24, 0),
(13, 25, 26, 0),
(14, 27, 28, 0),
(15, 29, 30, 0),
(16, 31, 32, 0),
(17, 33, 34, 0),
(18, 35, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
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
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama_obat`, `kandungan_obat`, `carapenggunaan_obat`, `gambar_obat`, `indikasiumum_obat`, `deskripsi_obat`, `kemasan_obat`, `kode_kategori`, `kode_bentuksediaan`, `kode_golongan`) VALUES
(1, 'AMLOdipine', 'Amlodipine 10 mg', 'Sebelum atau sesudah makan', 'Amlodipine-10mg-Tablets.png', 'Hipertensi, Iskemia Miokardial, Angina.', 'Struktur amlodipine adalah 3-ethil-5-methil-2-(2-aminoethoxymethyl)-4-(2-chlorophenyl)-1,4-dihydro-6-methyl-3,5 pyridinedicarboxylate benzenesulphonate.', 'Tablet 10 Mg X 3 X 10', 26, 3, 3),
(2, 'NIFEdipine', 'Nifedipine', 'Gunakan obat ini dengan cara diminum sesuai dengan anjuran dokter Anda, biasanya tiga kali sehari pada waktu makan atau tidak, sesuai anjuran dokter Anda. Telan obat ini dalam keadaan utuh, jangan menggerus, mengunyah, atau menghancurkan kapsul.\r\n', 'nifedipine.jpg', '-', 'Nifedipine adalah obat dengan fungsi untuk mencegah beberapa tipe nyeri dada tertentu (angina). Obat ini memungkinkan Anda untuk lebih banyak berolahraga dan mengurangi frekuensi serangan angina. Nifedipine termasuk dalam kelas obat-obatan yang dikenal sebagai calcium channel bloker. Obat ini bekerja dengan melemaskan pembuluh darah agar darah dapat mengalir lebih mudah. Obat ini harus digunakan secara rutin agar efektif. Obat ini tidak boleh digunakan untuk mengobati serangan nyeri dada saat terjadi. \r\n', 'Tablet, ER: 30 mg, 60 mg, 90 mg\r\nKapsul, oral: 10 mg\r\n', 26, 3, 3),
(3, 'AMINOfusin', 'Amino acids 50 g, vitamins, electrolytes', 'Kecepatan infus Aminofusin adalah 2-5 mL/kgBB/jam atau 2-5 tetes/kgBB/menit dengan menggunakan sistem mini-drop.\r\n', '3935.jpg', '-', 'AMINOfusin merupakan jenis obat infus yang digunakan untuk perawatan nutrisi parenteral parsial bagi bayi yang baru lahir dan juga biasa digunakan pada bayi yang lahir prematur,  serta nutrisi dalam pemenuhan protein, energi, vitamin dan elektrolit pada tubuh. Zat aktif yang terkandung didalam jenis obat infus ini berupa asam amino, vitamin dan elektrolit.\r\n', 'Botol kaca atau botol Infus ukuran 500 mL', 1, 1, 3),
(4, 'COMAfusin', 'Asam amino 50 g dengan 50% BCAA, xylitol, vitamin, dan elektrolit.', 'Berikan obat Comafusin Hepar ini sebanyak 0,5 g/kg berat badan per hari dengan pemberian kecepatan infus sebanyak 15-20 tetes per menitnya.\r\n', '15978.jpg', 'Seluruh kasus-kasus berat insufisiensi hati dengan koma eksogenus atau prekoma hepatikum.', 'Mengandung 50 gram asam amino, xylitol, elektrolit, 50 % BCAA, dan vitamin, Comafusin merupakan cairan infus yang berfungsi sebagai nutrisi dan dikhususkan untuk pasien dengan penyakit hati yang disertai dengan kondisi prekoma hepatikum atau koma eksofagus. Dimasukkan secara intravena dengan dosis antara 15 hingga 20 tetes setiap menitnya. Penggunaan harus berdasarkan resep atau petunjuk dari dokter, terutama untuk ibu hamil dan menyusui untuk mengurangi efek samping dari obat ini. Hindari berkendara apabila merasa pusing danmengantuk setelah menggunakan Comafusin.', 'botol 500 ml', 1, 1, 3),
(5, 'alloPURINol', 'Allopurinol 100 mg', 'Sesudah makan', '15085.jpg', 'Hiperurisemia primer dan sekunder (gout)', 'Allopurinol adalah obat yang digunakan untuk menurunkan kadar asam urat di dalam darah. Selain karena pola makan yang kurang sehat, kadar asam urat juga bisa naik akibat pengobatan kemoterapi pada penderita kanker. Kadar asam urat yang tinggi tidak hanya dapat menyebabkan penyakit asam urat atau gout, namun juga bisa menyebabkan pembentukan batu ginjal.\r\n', 'Tablet 100 Mg X 10 X 10', 26, 3, 3),
(6, 'haloPERIDol', 'haloperidol', 'Minumlah obat ini dengan atau tanpa makanan sesuai anjuran dokter. Jika Anda meminum obat ini dalam bentuk liquid, gunakan alat pengukur obat untuk mengukur dosis yang tepat sesuai yang diresepkan. Jika Anda tidak memiliki alat tersebut, mintalah pada apoteker sehingga dosis Anda dapat tepat.\r\n', '18933.jpg', 'untuk mengatasi gejala psikosis pada gangguan mental, seperti skizofrenia.', 'Haloperidol adalah obat kejiwaan (tipe antipsikotik) yang bekerja dengan menjaga keseimbangan substansi kimia otak tertentu (neurotransmiter).\r\n', 'Box, 10 strip x 10 tablet', 86, 3, 4),
(7, 'APTor', 'Acetylsalicylic acid 100 mg', 'Sesudah makan', '8884.jpg', 'Menurunkan resiko Trombosis Koroner lebih lanjut selama fase pemulihan dari Infark Miokard, mengurangi resiko berulangnya serangan iskemik sepintas & stroke pada pasien, untuk meringankan rasa nyeri, seperti pada sakit kepala, sakit gigi.', 'Aptor adalah obat yang digunakan sebagai penurun demam dan pereda nyeri seperti  sakit kepala, sakit gigi dan nyeri ringan lainnya. Aptor juga bisa digunakan untuk membantu mencegah serangan jantung, stroke, dan sebagai antiplatelet (menghambat pembekuan darah). Aptor mengandung acetylsalicylic acid (acetosal), obat yang termasuk golongan NSAID.\r\n', 'Dus, 10 Strip @ 10 Tablet Salut Enterik', 82, 3, 1),
(8, 'LIPITor', 'Atorvastatin Calcium Trihydrate 40 mg', 'Diminum sebelum atau sesudah makan', '15234.jpg', 'Tambahan terhadap diet untuk menurunkan kadar Kolesterol Total, LDL, Apolipoprotein B & Trigliserida yang meningkat pada pasien dengan Hiperkolesterolemia primer, Hiperlipidemia kombinasi atau campuran, Hiperkolesterolemia famili heterozigot & homozigot jika respon diet & tindakan nonfarmakologi tidak adekuat. Pencegahan komplikasi kardiovaskular.', 'Diproduksi oleh Pfizer, obat ini adalah terapi tambahan untuk menurunkan kadar kolesterol tinggi, LDL, Apolipoprotein B, dan Trigliserida pada pasien dengan Hiperkolesterolemia primer, Hiperlipidemia kombinasi atau campuran, Hiperkolesterolemia famili heterozigos dan homozigos. Kandungan atorvastatin dapat bekerja menghambat reaksi beberapa enzim yang dibutuhkan tubuh untuk memproduksi kolesterol. Resiko penyakit jantung dan penyakit pembuluh darah pun dapat ditekan. Agar lebih aman, minta petunjuk dokter saat hendak mengonsumsinya.', 'Dus, 3 Strip @ 10 Tablet Salut', 29, 3, 3),
(9, 'asam TRANEXamat', 'ASAM TRANEKSAMAT', 'Ikutilah anjuran dokter dan bacalah informasi yang tertera pada label kemasan obat sebelum menggunakan asam traneksamat. Jangan menambah atau mengurangi dosis tanpa konsultasi lebih dahulu kepada dokter.\r\n\r\nAsam traneksamat oral dapat dikonsumsi sebelum atau setelah makan. Gunakan air untuk menelan asam traneksamat tablet secara utuh. Jangan menghancurkan, mengunyah, atau membelah tablet karena dapat meningkatkan efek samping obat.\r\n', '19015.jpg', 'fibrinolisis lokal, edema, pendarahan abnormal', 'Asam traneksamat adalah obat yang digunakan untuk mengurangi atau menghentikan perdarahan. Ketika mengalami perdarahan, tubuh otomatis akan membekukan darah untuk menghentikan perdarahan. Namun pada beberapa kondisi, bekuan darah yang sudah terbentuk ini mudah hancur dan perdarahan terus terjadi. Asam traneksamat bekerja dengan cara menghambat hancurnya bekuan darah yang sudah terbentuk, sehingga perdarahan tidak terus terjadi.\r\n', 'ampul', 82, 1, 3),
(10, 'asam MEFENamat', 'Asam mefenamat 250 mg', 'diberikan sesudah makan', '17658.jpg', 'Meredakan nyeri ringan sampai sedang karena sakit kepala, sakit gigi, dismenore primer, karena trauma, nyeri otot dan sesudah operasi', 'Asam mefenamat adalah salah satu jenis obat antiinflamasi nonsteroid (NSAIDs). Obat ini berfungsi meredakan rasa sakit tingkat ringan hingga menengah, serta mengurangi peradangan.\r\n\r\nContoh rasa sakit akibat peradangan yang umumnya dapat diatasi dengan asam mefanamat adalah arthritis, nyeri menstruasi, serta nyeri setelah operasi. Selain mengatasi nyeri menstruasi, obat ini juga dapat digunakan untuk mengurangi volume perdarahan yang parah saat menstruasi.\r\n\r\nAsam mefenamat berfungsi menghambat enzim yang memproduksi prostaglandin. Prostaglandin adalah senyawa yang dilepas tubuh dan menyebabkan rasa sakit serta reaksi peradangan.\r\n\r\n\r\n', 'Dus, 10 Strip X 10 Tablet', 86, 3, 1),
(11, 'AZIthromycin', 'AZITHROMYCIN', 'Gunakan azithromycin sesuai petunjuk dokter. Jika berbentuk oral, obat ini dapat dikonsumsi dengan atau tanpa makanan. Untuk hasil yang lebih efektif, konsumsilah azithromycin setidaknya 1 jam sebelum makan atau dua jam setelah makan.\r\n', '18303.jpg', 'Infeksi saluran napas atas & bwh, kulit & struktur kulit, uretritis & servisitis non GO krn Chlamydia trachomatis. Terapi pneumonia komuniti yang disebabkan oleh organisme yang peka.', 'Azithromycin adalah golongan antibiotik makrolida yang dapat digunakan untuk mengobati infeksi bakteri pada beberapa bagian tubuh, seperti saluran pernapasan, mata, kulit, dan alat kelamin (misalnya klamidia, gonore, atau granuloma inguinale).  Sedangkan untuk infeksi sifilis, obat ini hanya berfungsi menghambat gejala, bukan menyembuhkan infeksi secara keseluruhan. Azithromycin bekerja dengan cara menghentikan dan mencegah perkembangbiakan bakteri yang menjadi penyebab infeksi. Obat ini hanya diberikan berdasarkan resep dokter. Penyalahgunaan atau konsumsi antibiotik yang tidak perlu dapat menurunkan efektivitasnya.\r\n\r\nKarena azithromycin merupakan golongan antibiotik, maka obat ini tidak dapat menyembuhkan infeksi yang disebabkan oleh virus, seperti flu atau pilek.\r\n', 'botol infus', 5, 1, 3),
(12, 'ERYthromycin', 'ERYTHROMYCIN', 'Dikonsumsi pada perut kosong (1 atau 2 jam sebelum/sesudah makan)', '15107.jpg', 'Untuk mencegah infeksi saluran nafas bagian atas terutama yang disebabkan oleh kuman S. pyogenes (streptokokus grup A beta-hemolitik)', 'Erythromycin adalah golongan antibiotik makrolid yang dapat digunakan untuk mengobati berbagai jenis infeksi bakteri, seperti infeksi kulit, mata, telinga, infeksi saluran kemih, dan pernapasan. Obat ini juga dapat digunakan untuk mencegah kambuhnya serangan demam reumatik pada pasien yang memiliki reaksi alergi terhadap antibiotik penisilin atau sulfonamida.', 'Tablet 500 X 100 X 1', 10, 1, 3),
(13, 'BISOPRolol', 'Bisoprolol', 'Sesudah makan', '17683.jpg', 'Untuk hipertensi, bisa digunakan sebagai monoterapi atau dikombinasikan dengan antihipertensi lain.', 'Bisoprolol adalah obat penghambat beta (beta blockers) yang digunakan untuk mengobati beberapa jenis penyakit, seperti hipertensi atau tekanan darah tinggi, angina pektoris, aritmia, dan gagal jantung.\r\n\r\nBisoprolol bekerja dengan cara mengurangi frekuensi detak jantung dan tekanan otot jantung saat berkontraksi. Dengan begitu, beban jantung dalam memompa darah ke seluruh tubuh dapat berkurang. Dengan turunnya tekanan darah, maka stroke dan serangan jantung dapat dicegah.', '1 Dos Isi 10 Strip X 10 Tablet', 82, 3, 3),
(14, 'PROPANolol', 'Propanolol HCl 10 mg', 'Berikan sebelum makan', '17603.jpg', 'Terapi hipertensi, angina, aritmia, pencegahan migrain', 'Propranolol adalah obat yang digunakan untuk menangani sejumlah kondisi yang berhubungan dengan jantung dan pembuluh darah. Propranolol bekerja dengan cara menghambat kerja dari epinefrin atau adrenalin, yaitu zat di dalam tubuh yang dapat menyempitkan pembuluh darah, meningkatkan tekanan darah, dan meningkatkan denyut jantung.', '1 Dos Isi 10 Strip X 10 Tablet', 82, 3, 3),
(15, 'Brainact O-DIS', 'Citicoline 500 mg', 'Diletakkan dalam rongga mulut sampai tab larut', '18318.jpg', 'Untuk membantu menangani penurunan kognitif pada usia lanjut', 'Brainact O-Dis merupakan obat berupa tablet yang diindikasikan untuk membantu menangani gangguan kesehatan yang disebabkan karena terjadinya penurunan kognitif pada usia lanjut. Diproduksi oleh Kalbe Farma, obat ini mengandung citicoline 500 miligram yang berfungsi untuk mengurangi kerusakan otak yang disebabkan karena stroke, parkinson, cedera kepala yang disebabkan karena kecelakaan, demensia, alzheimer, dan lain sebagainya. Penggunaan obat ini harus dengan resep atau anjuran dari dokter. Waspada penggunaan jangka panjang yang bisa menimbulkan diare, sakit kepala, dan sulit tidur.', '1 Dos Isi 3 Strip X 10 Tablet', 85, 3, 3),
(16, 'Brainact', 'Citicoline 1000 mg', 'Dapat diberikan sebelum atau sesudah makan', '18311.jpg', 'untuk membantu menangani penurunan kognitif pada usia lanjut', 'BRAINACT TAB 500 MG mengandung Citicolin juga merupakan senyawa kimia otak yang secara alami ada di dalam tubuh manusia. BRAINACT TAB 500 MG berfungsi untuk mengurangi kerusakan jaringan otak saat otak cedera. Selain itu BRAINACT TAB 500 MG juga berfungsi untuk membantu mengobati Alzhaimer (pikun akut), Parkinson (gemetar tanpa terkendali) dan stroke. Hindari penggunaan BRAINACT TAB 500 MG pada ibu hamil dan menyusui.', '1 Dos isi 3 Strip x 10 Tablet', 82, 3, 3),
(17, 'CardisAN', 'Amlodipine 10 mg', 'Sebelum atau sesudah makan', 'cardisan.jpg', 'Hipertensi, Iskemia Miokardial, Angina.', 'Cardisan  adalah obat yang digunakan untuk pengobatan hipertensi, iskema miokardia dan penyakit arteri koroner. Cardisan Tablet mengandung Amlodipine, obat yang termasuk anti hipertensi golongan calcium channel blockers.', '1 Dos Isi 5 Strip X 10 Tablet', 82, 3, 3),
(18, 'CardisMO', 'Isosorbide 5-mononitrate 20 mg', 'Sebelum atau sesudah makan', 'cardismo.jpg', 'Terapi jangka panjang Penyakit Jantung Koroner/PJK dan pencegahan Angina Pektoris , terapi tambahan pada Gagal Jantung Kongestif yang tidak respon adekuat terhadap glikosida jantung dan/atau diuretik.', 'CARDISMO mengandung Isosorbid dinitrat merupakan obat untuk membantu mencegah nyeri dada (angina) pada pasien dengan kondisi jantung tertentu (penyakit arteri koroner). CARDISMO bekerja dengan merelaksasikan pembuluh darah sehingga darah dapat mengalir lebih mudah ke jantung.\r\nCARDISMO tidak akan langsung menghilangkan rasa sakit dada setelah terjadi oleh karena itu CARDISMO sebaiknya diminum sebelum aktivitas fisik (seperti olahraga, aktivitas seksual) untuk mencegah nyeri dada.', 'Tablet 20 Mg X 10 X 10', 82, 3, 3),
(19, 'CLARITIN SIRUP', 'Per-5 mL : Loratadine 5 mg', 'Berikan sesudah makan', '3543.jpg', 'Meredakan gejala2 yang berhubungan dengan Rinitis alergi, mata gatal dan panas, meredakan gejala2 Urtikaria Khronis & gangguan Alergi dermatologis/kulit lainnya.', 'Claritin Syrup adalah obat yang digunakan untuk mengobati berbagai jenis kondisi alergi. Claritin Syrup mengandung Loratadine, obat yang termasuk long acting antihistamin, yang bertindak sebagai inverse agonist selektif histamin perifer H1-reseptor.', 'Botol 60 ml', 1, 1, 1),
(20, 'CODIPRONT CUM EXPECTORANT ', 'Per 5 mL : Codeine 11.11 mg, phenyltoloxamine 3.67 mg, guaifenesin 55.55 mg, thyme liquid extr 55.55 mg', '-', '15934.jpg', 'Meredakan batuk & membantu pengeluaran dahak dr sal napas pd kondisi alergi, paroksismal, bronkitis akut & kronik.', 'Codipront Cum Expectorant Syrup 60 ml merupakan obat untuk meredakan batuk dan membantu pengeluaran dahak dari saluran pernapasan pada keadaan alergi, paroksismal, serta bronkitis akut dan kronik. Komposisinya terdiri dari Kodein, Feniltoloksamin (nasal dekongestan), Guaifenesin, dan ekstrak thyme cair. Kombinasi tersebut bekerja dengan cara mengurangi batuk dengan penekanan sentral pada pusat batuk, serta mengencerkan dahak pada saluran napas agar mudah dikeluarkan dan bisa melegakan jalur napas.', '-', 1, 1, 1),
(21, 'CELESTAMINE SIRUP', 'Per 5 mL : Betamethasone 0.25 mg, dexchlorpheniramine maleate 2 mg', 'Sesudah makan', '4828.jpg', 'Alergi pada saluran pernapasan, kulit dan mata', 'Celestamine adalah obat kombinasi yang mengandung kortikosteroid dan antihistamin. Betamethasone mempunyai efek antiinflamasi (antiperadangan) dan antialergi. Sedangkan Dexchlorpheniramine maleate mempunyai efek antihistamin, sebagai obat antialergi dan gatal.\r\n', 'Sirup 0.25 Mg/ 5 ml X 60 ml X 1', 1, 1, 1),
(22, 'CODIPRONT SIRUP ', 'Codeine 11.11 mg, phenyltoloxamine 3.67 mg.', 'Diberikan bersama makanan', '19045.jpg', 'untuk batuk iritatif (batuk kering/non produktif) yang disebabkan alergi.', '-', 'Botol, 60 ml', 1, 1, 1),
(23, 'ELKANA SIRUP', 'Per-5 mL : Vit.A 2400 iu, vit.B1 4 mg, vit.B2 1.2 mg, vit.B6 1.2 mg, vit.B12 4 mcg, vit.C 60 mg, vit.D 400 IU, Nicotinamide 16 mg, Choline 12 mg, Inositol 12 mg, Ca 33.1 mg, Na 5.2 mg, L-Lysine HCl 200 mg.', 'Sebelum atau sesudah makan, dapat bersama makanan untuk absorpsi yang lebih baik atau jika timbul ketidak-nyamanan pada saluran cerna.', '1334.jpg', 'Defisiensi vitamin dan mineral', '-', 'Botol 60 ml Dalam Dus', 1, 1, 1),
(24, 'ELKANA CL SIRUP', 'Vitamin A 2400 IU, vitamin D 400 IU, cod liver oil 8 mg, DHA 10 mg, arachidonic acid (AA) 15 mg, curcuma extrak 12 mg, vitamin B1 4 mg, vitamin B2 1.2 mg, vitamin B6 1.2 mg, vitamin B12 4 mcg, nicotinamide 16 mg, choline 12 mg, inositol 12 mg, L-lysine HCl 100 mg, Ca 33.1 mg, Na 5.2 mg, GOS 500 mg', 'Dapat diberikan bersama makanan agar diabsorpsi lebih baik atau jika timbul rasa tidak nyaman pada GI', '9785.jpg', 'Defisiensi vitamin dan mineral', '-', 'Sirup 120 ml X 1', 1, 1, 1),
(25, 'HEPTASAN TABLET', 'Cyproheptadine / Siproheptadine Hcl', '-', '18581.jpg', 'Pengobatan terhadap penyakit alergi seperti : rinitis vasomotor, pruritus, cold urticaria, dermatografisme.', '-', '1 Dos Isi 10 Strip X 10 Tablet', 1, 1, 1),
(26, 'HISTAPAN TABLET', 'Mebhidrolin Napadisilat 50 Mg', '-', '14204.jpg', 'Histapan digunakan untuk pengobatan terhadap penyakit alergi.', '-', '1 Dos Isi 10 Strip X 10 Tablet', 1, 1, 1),
(27, 'ILIADIN MOIST DROPS ', 'NaCl', '-', '16210.jpg', 'Membersihkan & melegakan hidung tersumbat akibat flu dan alergi; melembabkan & meringankan hidung yang kering dan berkerak; membersihkan hidung sblm pemberian obat pada hidung.', '-', 'Botol 30 ml', 1, 1, 1),
(28, 'ILIADIN NASAL SPRAY', 'Oxymetazoline HCl 0.05%', 'Disemprotkan kedalam lubang hidung, pagi & malam hari', '4789.jpg', 'Meredakan sumbatan hidung akibat Rinitis akut, Sinusitis akut & khronis, Rinitis alergi', '-', 'Botol 10 ml Dalam Dus', 1, 1, 1),
(29, 'RETIVIT KAPLET', 'Beta-carotene 0.6 mg, vit.C 200 mg, vit.E 60 mg, Zn 10 mg, Copper 1.5 mg, Selenium 55 mcg, Lutein 2 mg', 'Sebelum / sesudah makan', '8938.jpg', 'Memelihara kesehatan Mata', '-', 'Dos Isi 10 Strip X 10 Tablet', 1, 1, 1),
(30, 'RETIVIT PLUS KAPLET', 'Beta-carotene 5 mg, vit.C 100 mg, vit.E 60 mg,Zn 10 mg, Copper 1.5 mg, Selenium 55 mcg, Lutein ester 30 mg, Lycopene 2 mg, Zeaxanthin 0.67 mg', 'Sesudah makan', '8939.jpg', 'Memelihara kesehatan dan fungsi mata, sebagai antioksidan', '-', 'Kaplet Salut Selaput 10 X 10', 1, 1, 1),
(31, 'SANMOL DROPS ', 'Per 0.6 mL : Paracetamol 60 mg', 'Sesudah makan', '1876.jpg', 'Meredakan nyeri termasuk sakit Kepala & sakit Gigi, meredakan Demam yang disebabkan oleh Flu dan paska Imunisasi', '-', 'Botol 15 ml Dalam Dus', 1, 1, 1),
(32, 'SANMOL SIRUP', 'Tiap 5 ml sirup mengandung: Paracetamol 120 mg', 'Sesudah makan', '1834.jpg', 'Menurunkan demam, meredakan nyeri ringan seperti sakit kepala dan sakit gigi.', '-', 'Botol 60 ml', 1, 1, 1),
(33, 'SPIRIVA KAPSUL', 'Tiotropium Bromida.', 'Dihirup/inhalasi', '1965.jpg', 'Terapi pemeliharaan untuk PPOK (termasuk Bronkhitis Khronis & Emfisema), terapi pemeliharaan terkait dengan Dispnea & mencegah exaserbasi.', '-', 'Kapsul 18 Mcg X 1 X 10', 1, 1, 1),
(34, 'SPIRIVA REFILL', 'Tiotropium bromida 18 mcg', 'Dihirup/inhalasi', '17668.jpg', 'Terapi rumat untuk PPOK (termasuk bronkitis kronis dan emfisema), dispnea, dan mencegah eksaserbasi', '-', 'Kapsul 18 Mcg X 1 X 10', 1, 1, 1),
(35, 'VOMETA DROPS', 'Per mL : Domperidone 5 mg', '15-30 menit sebelum makan dan menjelang tidur malam', '218.jpg', 'Dispepsia/gangguan pencernaan dengan pengosongan lambung lambat, GERD & Esofagitis, Rasa penuh di uluhati & perut, rasa Panas pada uluhati dan kerongkongan, Mual dan Muntah', '-', 'Botol 10 ml Dalam Dus', 1, 1, 1),
(36, 'VOMETA SIRUP', 'Per ML : Domperidone 5 mg', '15-30 menit sebelum makan dan menjelang tidur malam', '217.jpg', 'Dispepsia/gangguan pencernaan dengan pengosongan lambung lambat, GERD & Esofagitis, Rasa penuh di uluhati & perut, rasa Panas pada uluhati dan kerongkongan, Mual dan Muntah', '-', 'Botol 60 ml Dalam Dus', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peringatan`
--

CREATE TABLE `peringatan` (
  `kode_peringatan` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `isi_peringatan` text NOT NULL,
  `kontraindikasi_obat` text NOT NULL,
  `interaksi_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bentuksediaan`
--
ALTER TABLE `bentuksediaan`
  ADD PRIMARY KEY (`kode_bentuksediaan`);

--
-- Indexes for table `dosis`
--
ALTER TABLE `dosis`
  ADD PRIMARY KEY (`kode_dosis`),
  ADD KEY `kode_dosis` (`kode_obat`);

--
-- Indexes for table `efeksamping`
--
ALTER TABLE `efeksamping`
  ADD PRIMARY KEY (`kode_efeksamping`),
  ADD KEY `kode_efeksamping` (`kode_obat`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `kegunaan`
--
ALTER TABLE `kegunaan`
  ADD PRIMARY KEY (`kode_kegunaan`),
  ADD KEY `kode_kegunaan` (`kode_obat`);

--
-- Indexes for table `lasa`
--
ALTER TABLE `lasa`
  ADD PRIMARY KEY (`kode_lasa`),
  ADD KEY `kode_obat1` (`kode_obat1`),
  ADD KEY `kode_obat2` (`kode_obat2`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_bentuksediaan` (`kode_bentuksediaan`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- Indexes for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD PRIMARY KEY (`kode_peringatan`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bentuksediaan`
--
ALTER TABLE `bentuksediaan`
  MODIFY `kode_bentuksediaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosis`
--
ALTER TABLE `dosis`
  MODIFY `kode_dosis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `efeksamping`
--
ALTER TABLE `efeksamping`
  MODIFY `kode_efeksamping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `kode_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kode_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `kegunaan`
--
ALTER TABLE `kegunaan`
  MODIFY `kode_kegunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lasa`
--
ALTER TABLE `lasa`
  MODIFY `kode_lasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kode_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `peringatan`
--
ALTER TABLE `peringatan`
  MODIFY `kode_peringatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosis`
--
ALTER TABLE `dosis`
  ADD CONSTRAINT `dosis_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `efeksamping`
--
ALTER TABLE `efeksamping`
  ADD CONSTRAINT `efeksamping_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `kegunaan`
--
ALTER TABLE `kegunaan`
  ADD CONSTRAINT `kegunaan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `lasa`
--
ALTER TABLE `lasa`
  ADD CONSTRAINT `lasa_ibfk_1` FOREIGN KEY (`kode_obat1`) REFERENCES `obat` (`kode_obat`),
  ADD CONSTRAINT `lasa_ibfk_2` FOREIGN KEY (`kode_obat2`) REFERENCES `obat` (`kode_obat`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `obat_ibfk_3` FOREIGN KEY (`kode_bentuksediaan`) REFERENCES `bentuksediaan` (`kode_bentuksediaan`),
  ADD CONSTRAINT `obat_ibfk_4` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`);

--
-- Constraints for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD CONSTRAINT `peringatan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
