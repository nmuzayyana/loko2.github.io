-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 07:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swarakalibata`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', 'November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.\r\n', 'Sentul International Convention Center', '', '510070sc-elton.jpg', '2012-11-17', '2012-11-17', '2012-08-20', '--', 26, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', '', '209930maroon_live_in_jakarta_2012.jpg', '2012-10-05', '2012-10-05', '2012-08-19', '', 23, 'admin'),
(63, 'Festival Musik Bambu Nusantara 2012', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', '', '85235BambuNusantara2012.jpg', '2012-09-01', '2012-09-02', '2012-08-20', '09.00 - 21.00 Wib', 25, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Event Christmas di The Park Mall', 'event-christmas-di-the-park-mall', 'Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta,\r\nJumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya\r\nsetelah 21 tahun vakum dari dunia musik.\r\n<div style=\"overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none; border: medium none\">\r\n<br />\r\n</div>\r\n', '51248892184_894047037973707_864657149655220567_n.jpg', 'Y', 36, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Festival Pasar di Kabupaten Wonogiri', 'festival-pasar-di-kabupaten-wonogiri', '', '83macam-macam-pasar-berdasarkan-strukturnya-lengkap-beserta-contoh.jpg', 'Y', 37, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah di Pasar Asemka', 'murah-meriah-di-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran. \r\n', '18asemka.jpg', 'N', 170, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Wisata Lampion Imlek di Pasar Gede Solo', 'wisata-lampion-imlek-di-pasar-gede-solo', '', '8906907_720.jpg', 'Y', 25, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(32, 'Festival Makanan di Mall Solo Paragon', 'festival-makanan-di-mall-solo-paragon', '', '9DSCF9398.jpg', 'Y', 1, '2022-01-17', '13:12:18', 'Senin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'bg2.png');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(17, 'Komunitas 80an', 'http://komunitas80an.blogspot.com', '80an.jpg', '2011-06-26'),
(14, 'Beta UFO Indonesia', '', 'betaufo.jpg', '2011-06-22'),
(18, 'Lokomedia', 'http://bukulokomedia.com', 'lokomedia2.jpg', '2011-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(680, 67, 'admin', 'Toko Swalayan B-Mart', 'Alamat: Ruko, Jl. Kates, Pulisen, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57316', '', 'toko-swalayan-bmart', 'N', 'Y', 'Y', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nSalah satu Badan Usaha Milik daerah (BUMD) Kabupaten Boyolali yakni PT Aneka Karya Boyolali, membuka satu unit usaha baru berupa toko swalayan B-Mart pertengahan Maret ini. Diharapkan unit usaha baru tersebut juga bisa dikembangkan ke semua wilayah di Kabupaten Boyolali.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nUnit usaha B-Mart menyediakan berbagai produk kebutuhan rumah tangga dan menempati salah satu ruko di Jl. Kates atau sisi barat monumen susu murni.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\n&nbsp;Bupati Boyolali, M. Said Hidayat, berharap dengan layanan yang dikembangkan, termasuk layanan pesan antar, diharapkan unit usaha tersebut bisa membawa manfaat untuk masyarakat sekitar.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\n&ldquo;Saya kira ini merupakan inovasi menyesuaikan perkembangan situasi zaman saat ini. Semoga dapat berkembang dan sekali lagi dapat memberikan manfaat yang baik, manfaat yang positif bagi masyarakat Kabupaten Boyolali,&rdquo; kata Said, dalam rilis yang diterima&nbsp;<em style=\"box-sizing: border-box\">Solopos.com</em>, belum lama ini.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nDia juga berharap agar B-Mart bisa menjangkau semua daerah di Boyolali. Diketahui saat ini Boyolali memiliki 22 kecamatan.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\n&ldquo;B-Mart semoga nanti dapat dikembangkan untuk melayani masyarakat lebih luas di Kabupaten Boyolali ini. Karena Boyolali mempunyai 22 kecamatan jadi kami dorong minimal separuhnya dulu, atau seperempatnya dulu. Tetapi perlahan lahan ini harus menjadi orientasi pengembangan ke depan,&rdquo; lanjut Said.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\n&nbsp;Sementara itu, Direktur Utama PT Aneka Karya, Eko Suryanto, mengatakan B-Mart merupakan unit usaha PT Aneka Karya yang menyediakan produk-produk dalam negeri.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nKe depan unit usaha tersebut juga akan memasukkan produk lokal di dalam daftar barang dagangannya. Dia juga memastikan harga yang ditawarkan di toko tersebut lebih terjangkau&nbsp;<span style=\"box-sizing: border-box; transition-duration: 0.4s; transition-property: all\">dibandingkan</span>&nbsp;di toko swalayan lainnya.&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nSedangkan mengenai harapan untuk mengembangkan di kecamatan-kecamatan lain, dia mengatakan hal itu akan dilakukan secara bertahap ke depannya. &quot;Rencana akan kami buka di semua kecamatan secara bertahap,&quot; kata dia kepada wartawan.&nbsp;\r\n</p>\r\n', 'Sumber : solopos.com', 'Senin', '2022-01-03', '10:29:00', '54bmart.jpg', 0, 'wisata'),
(679, 66, 'admin', 'Pasar Canggal', 'Alamat: Pasar canggal (Kaliwungu), Boyolali, Jawa Tengah, Indonesia', '', 'pasar-canggal', 'Y', 'Y', 'Y', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSalah satu pasar yang ada di Kabupaten Boyolali. Pasar tradisional ini menjual berbagai produk kebutuhan pokok dan sembako seperti seperti mencari beras Kabupaten Boyolali, terigu, gula, garam, sayur mayur, bawang, cabe, ikan, ayam, dan lainnya. Kelebihan pasar jenis tradisional ini adalah produk-produk yang ada di jual dengan harga rakyat, sehingga harganya murah bagi masyarakat, sebagaimana fungsi pasar pada umumnya.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nDi Pasar canggal ini, penjual / pedagang dan pembeli bisa saling tawar menawar untuk mendapat kesepakatan harga yang menguntungkan bagi kedua belah pihak. Pedagang biasa juga memberikan diskon / promo atau potongan harga pada pelanggannya. Pasar ini juga telah di modern kan oleh pemerintah setempat agar nyaman untuk berbelanja dan jual beli.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\n&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSegera kunjungi pasar terdekat ini (market near you) untuk berbelanja kebutuhan pokok yang murah di Kabupaten Boyolali, atau informasi lainnya. Anda juga dapat menguhubungi pengurus pasar untuk informasi lainnya jika tersedia.&nbsp;\r\n</p>\r\n', 'Sumber : Foursquare', 'Senin', '2022-01-03', '10:22:56', '89Y3M34m7pJCQcMKNtAPLTU87OiQmfmLCU6hl-DfiuPSM.jpg', 2, 'wisata'),
(677, 65, 'admin', 'Sami Laris Swalayan Klaten', 'Alamat: Jl. Rajawali, Tegalmulyo, Kabupaten, Kec. Klaten Tengah, Jawa Tengah', '', 'sami-laris-swalayan-klaten', 'N', 'N', 'N', '<p>\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Pusat swalayan grosir murah di klaten. Toko ini termasuk lengkap untuk belanja kebutuhan sehari-hari maupun belanja untuk dijual kembali. Barang yang dijual harganya cukup murah dibandingkan dengan swalayan lain di klaten. Hanya saja untuk parkir mobil tempat ini kurang lahan, semrawut juga pada tanggal-tanggal tertentu karena para pedagang kelontong sering belanja di sini. Harap bersabar pula untuk antrian kasir dan pelayan yang kadang ngobrol sendiri atau kurang ramah.</span>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Tempatnya mudah dijangkau. Barang yang dijual lengkap dan harganya murah. Bisa beli secara grosir bisa juga eceran. Tempatnya bersih, pelayanannya juga bagus. Kasirnya cekatan sehingga tidak perlu antri lama di kasir. Bisa melakukan pembayaran secara tunai atau dengan debet.</span>&nbsp;\r\n</p>\r\n', 'Sumber : Laris Swalayan', 'Senin', '2022-01-03', '10:18:57', '66446349.jfif', 0, 'wisata'),
(678, 66, 'admin', 'Pasar Simo', 'Alamat: Jalan Singoprono (Simo), Boyolali, Jawa Tengah, Indonesia', '', 'pasar-simo', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSalah satu pasar yang ada di Kabupaten Boyolali. Pasar tradisional ini menjual berbagai produk kebutuhan pokok dan sembako seperti seperti mencari beras Kabupaten Boyolali, terigu, gula, garam, sayur mayur, bawang, cabe, ikan, ayam, dan lainnya. Kelebihan pasar jenis tradisional ini adalah produk-produk yang ada di jual dengan harga rakyat, sehingga harganya murah bagi masyarakat, sebagaimana fungsi pasar pada umumnya.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nDi Pasar Simo ini, penjual / pedagang dan pembeli bisa saling tawar menawar untuk mendapat kesepakatan harga yang menguntungkan bagi kedua belah pihak. Pedagang biasa juga memberikan diskon / promo atau potongan harga pada pelanggannya. Pasar ini juga telah di modern kan oleh pemerintah setempat agar nyaman untuk berbelanja dan jual beli.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\n&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSegera kunjungi pasar terdekat ini (market near you) untuk berbelanja kebutuhan pokok yang murah di Kabupaten Boyolali, atau informasi lainnya. Anda juga dapat menguhubungi pengurus pasar untuk informasi lainnya jika tersedia.&nbsp;\r\n</p>\r\n', 'Sumber : Foursquare', 'Senin', '2022-01-03', '10:21:15', '2846349806_NS5ZYWhQenI35d5GX1SG1UDrXNntBaTCPz--hmBB8Gs.jpg', 0, 'wisata'),
(676, 64, 'admin', 'Pasar Basin Kebonarum', 'Alamat: Jl. Bon Arum-Jogonalan, Kebonarum, Basin, Kebonarum, Kabupaten Klaten, Jawa Tengah 57486', '', 'pasar-basin-kebonarum', 'Y', 'Y', 'Y', '<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nPasar Basin Kebonarum sesuai data yang ada di google map berada di Jl. Bon Arum-Jogonalan, Kebonarum, Basin, Kebonarum, Kabupaten Klaten, Jawa Tengah 57486. Lokasinya sangat strategis karena berada di pertigaan jalan utama.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nSetiap hari pasar akan mulai dipadati oleh para pedagang maupun pembeli mulai pagi hari sekitar jam 5 sampai menjelang siang sekitar jam 11 untuk menjajakan berbagai macam dagangan seperti buah-buahan, sayur-sayuran, makanan ringan, daging ayam, tahu, dll. Jika sudah jam 11 keatas hanya beberapa pedagang saja yang masih berjualan.&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nJika sudah mulai sore sekitar jam 3 sampai malam hari sekitar jam 9 maka akan mulai dipadati pedagang di sekitar pasar yang menjajakan berbagai macam dagangan seperti sate ayam, sate kambing, mie ayam, bubur kacang ijo, roti bakar, bakso, martabak, dll.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nMenurut hemat kami, Pasar Basin sebagai pasar tradisional sebaiknya dilakukan perbaikan dan penambahan beragam fasilitas dari dinas yang terkait mengingat mungkin bisa dibilang &ldquo;kalah&rdquo; dari pasar lainnya seperti pasar puluhwatu, pasar ngupit, dll.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nPada saat pagi hari karena kondisi pasar yang ramai serta jalan yang tidak begitu besar apalagi dengan banyak lalu lintas kendaraan seperti para pekerja yang berangkat ke kantor maupun tempat kerja serta para siswa yang berangkat ke sekolah dan sudah menggunakan sepeda motor diharapkan agar lebih hati-hari saat melintas di pasar basin karena sangat rawan kecelakaan.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nJika ingin ke pasar basinpun cukup mudah untuk ditemukan yakni jika dari arah jogja saat sudah sampai di pertigaan lampu merah pabrik gondang silakan belok kiri lalu ikuti jalan besar, melewati masjid makmur sampai mentok di pertigaan dan disitulah pasar basin berada.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nBerikut kami sampaikan beberapa kelebihan dari pasar tradisional yaitu antara lain :\r\n</p>\r\n<ul style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 0px 0px 1.2em 2em; outline: 0px; padding: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: #212529; font-family: Roboto, sans-serif\">\r\n	<li style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline\">Di pasar tradisional akan terjadi transaksi tawar menawar secara langsung antara Pembeli dan pedagang</li>\r\n	<li style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline\">Di pasar tradisional, Makanan dan minuman yang diperdagangkan pada umumnya tidak mengandung bahan pengawet maupun bahan kimia yang berbahaya.</li>\r\n</ul>\r\n<div>\r\n<font face=\"Roboto, sans-serif\" color=\"#212529\"><span style=\"font-size: 16px\"><br />\r\n</span></font>\r\n</div>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\n&nbsp;<span style=\"font-style: inherit; font-weight: bolder; font-size: 17.6px\">Peta Lokasi Pasar Basin</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\n&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nTerima kasih telah mengunjungi website kami.\r\n</p>\r\n', 'Sumber : visitklaten', 'Senin', '2022-01-03', '10:15:03', '71pasar-basin.jpg', 0, 'wisata'),
(675, 64, 'admin', 'Pasar Puluhwatu', 'Alamat: Lorpasar, Demakijo, Karangnongko, Klaten Regency, Central Java 57483', '', 'pasar-puluhwatu', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nPasar puluhwatu merupakan salah satu pasar tradisional yang ada di Kabupaten klaten yang berlokasi di Desa Demakijo, Kecamatan Karangnongko, Kabupaten Klaten, Provinsi Jawa Tengah, Kodepos 57483.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nPembangunan pasar Puluhwatu dilaksanakan pada tahun anggaran 2013 yang menelan biaya dari dana APBD Kabupaten Klaten sebesar sekitar Rp 5,6 miliar.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nPembangunan tersebut bertujuan agar terjadi peningkatan kapasitas serta kenyamanan aktivitas didalam pasar yang diharapkan bisa meningkatkan retribusi yang merupakan penyokong pendapatan asli daerah.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nTerdapat banyak pedagang yang menjajakan beranekaragam dagangan seperti mi ayam, sate, belut, sayur, pakaian, pakan ternak, beras, sembako dll.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nBiasanya Pasar puluhwatu ramai di waktu pagi hari dan lebih ramai saat pasaran PON dalam kalender jawa yang mungkin bisa dikatakan hari rayanya pasar puluhwatu pada waktu pasaran PON dan banyak pedagang akan menjajakan dagannya seperti jual-beli kambing, jual-beli burung, dll.\r\n</p>\r\n<p style=\"box-sizing: border-box; border: 0px; font-size: 16px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #212529; font-family: Roboto, sans-serif\">\r\nKondisi Jalan di sekitar Pasar puluhwatu sudah bagus dan sudah dibetonisasi serta lebar jadi jika berkendara bisa nyaman dan bisa mengurangi kemacetan dan walaupun sudah bagus jalannya namun jangan ngebut-ngebut ya..karena juga sering dilewati truk pasir juga jadi harap lebih hati-hati.\r\n</p>\r\n', 'Sumber : visitklaten', 'Senin', '2022-01-03', '10:09:29', '30pasar-puluhwatu-karangnongko.jpg', 0, 'wisata'),
(672, 59, 'admin', 'Jumbo Mall Sragen', 'Alamat: Jl. Sukowati, Kebayan 1, Sragen Kulon, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57212', '', 'jumbo-mall-sragen', 'N', 'N', 'N', '<p style=\"margin: 0px 0px 1rem; padding: 0px; box-sizing: border-box; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nPalur Plasa Mall of Karanganyar siap memenuhi kebutuhan masyarakat dalam menjalankan ibadah puasa. Ramadan tahun ini memang dijalani dalam suasana pandemi, sehingga penerapan protokol kesehatan dilakukan demi keamanan pengunjung.\r\n</p>\r\n<p style=\"margin: 0px 0px 1rem; padding: 0px; box-sizing: border-box; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nWajib memakai masker, menjaga jarak, dan mencuci tangan tidak mengurangi kenyamanan pengunjung Palur Plasa untuk memenuhi kebutuhan. Karena mall yang terletak di Jaten, Karanganyar ini buka mulai pukul 10.00 WIB hingga 21.00 WIB. Kecuali foodcourt di lantai 2 yang baru buka pukul 11.00 WIB-20.00 WIB.\r\n</p>\r\n<div class=\"iklan mt-3 mb-3\" align=\"center\" style=\"box-sizing: border-box; margin-top: 3px; font-family: Poppins, sans-serif; font-size: 14px; margin-bottom: 3px !important\">\r\n<ins class=\"adsbygoogle\" style=\"box-sizing: border-box; display: block; height: 0px\"><ins title=\"Advertisement\" id=\"aswift_1_expand\" style=\"box-sizing: border-box; border: none; height: 0px; width: 643px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table\"><ins id=\"aswift_1_anchor\" style=\"box-sizing: border-box; border: none; height: 0px; width: 643px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block; overflow: hidden; opacity: 0\"></ins></ins></ins>\r\n</div>\r\n<p style=\"margin: 0px 0px 1rem; padding: 0px; box-sizing: border-box; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nBuat pengunjung yang mencari kebutuhan pokok sehari-hari, ada tenant Palur Plasa di lantai dasar yakni Giant Express. Di mana tersedia kebutuhan pokok dengan harga murah, produk yang fresh, dan ada diskon setiap weekend atau akhir pekannya.\r\n</p>\r\n<span style=\"margin: 0px; padding: 0px; font-family: Arial, serif; font-size: 12px\"><br />\r\n</span>\r\n', 'Sumber : soloinfo', 'Rabu', '2021-12-29', '20:42:55', '39PhotoGrid_1543983111917.jpg', 3, 'wisata'),
(674, 61, 'admin', 'Baru Toserba', 'Alamat: Jl. Jend. Sudirman Jl. Sanggrahan No.11, Sabggrahan, Giripurwo, Kec. Wonogiri, Kabupaten Won', '', 'baru-toserba', 'N', 'N', 'N', '<p>\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Toserba Baru adalah Supermarket (toko serba ada) yang ada pertama kali di Kota Wonogiri, jauh-jauh hari sebelum adanya Toserba Luwes yang berlokasi di sebelah selatan Pasar Kota Wonogiri.</span><br />\r\n<br />\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Toserba Baru terletak tepat di sebelah utara Pegadaian Wonogiri atau arah timur laut dari Pasar Kota Wonogiri.</span><br />\r\n<br />\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Segela keperluan rumah tangga sehari-hari, mulai dari pakaian, alat-alat dapur, barang-barang elektronik, sampai alat tulis sekolah dan kantor tersedia di toserba ini.</span>\r\n</p>\r\n<p>\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Toserba paling tua di kota Gaplek, Wonogiri. Mungkin tak sekadar toserba tertua. Tidak berlebihan jika disebut toserba yang memiliki sejarah. Perkembangan kota Wonogiri ditandai juga oleh metamorfosis bentuk fisik Toserba Baru. Sebagai toko baru, tempat bisnis ini dulunya sederhana saja. Namun sekarang sudah tampil menjadi salah satu tempat belanja yang representatif di Wonogiri.</span><br />\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Tempatnya sangat strategis. Berada di jalan protokol, Jalan Jenderal Soedirman, yang membelah kota Wonogiri. Sebagai salah satu destinasi pilihan berbelanja, toserba ini menyediakan berbagai kebutuhan sehari-hari, pakaian, alat elektronik, tempat makan, dan berbagai kebutuhan lainnya.</span><br />\r\n<span style=\"color: #292929; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px\">Ada banyajk cerita yang mengikuti perkembangan toko ini. Sebagai salah satu tempat yang juga mengiringi perjalanan kota. Konon kabarnya, orang dari daerah sekitar Wonogiri belum sampai ke Wonogiri kalau belum ke Toserba Baru.</span>\r\n</p>\r\n', 'Sumber : Foursquare', 'Senin', '2022-01-03', '09:37:24', '2312836243_ug6a1OPSSrtBnlD0RrFMRtc3MNpg0tXDJ0XJ3yYdg_0.jpg', 0, 'wisata'),
(673, 60, 'admin', 'Pasar Doplang', 'Alamat: Kembar, Pandan, Slogohimo, Kabupaten Wonogiri, Jawa Tengah 57694', '', 'pasar-doplang', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nPasar Doplang dengan segala keunikannya kini menjadi salah satu objek wisata kuliner jajanan tradisional populer di Kabupaten Wonogiri. Selain unik, pasar itu sangat menjunjung tinggi nilai-nilai kebudayaan Jawa.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nPasar yang hadir mulai 2018 ini berada di wilayah Wonogiri bagian timur, tepatnya di Dusun Kembar, Desa Pandan, Kecamatan Slogohimo.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\n&nbsp;Meski berjarak 36 kilometer dari pusat kota Wonogiri, pencinta makanan dan minuman tradisional khas jawa wajib mengunjungi Pasar Doplang saat berkunjung ke Wonogiri.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nSaat ini, karena masa pandemi Covid-19, pasar kuliner khas Wonogiri ini memang tutup untuk sementara demi menghindari kerumunan yang berpotensi terjadi persebaran virus corona.&nbsp;\r\n</p>\r\n', 'Sumber : solopos.com', 'Rabu', '2021-12-29', '20:52:55', '47pasar-doplang3.jpg', 0, 'wisata'),
(669, 57, 'admin', 'Toserba \"Putra Rahayu\"', 'Alamat: Jl. Jend. Gatot Subroto, Gaum, Kec. Tasikmadu, Kabupaten Karanganyar, Jawa Tengah 57722', '', 'toserba-putra-rahayu', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nSelain itu di lantai dasar ada KFC, Selat Viens, Paparonz Pizza, dan Teras Caf&eacute; yang menyediakan menu kekinian dengan tempat yang Instagramable. Masih di lantai dasar, ada MR DIY yang menyediakan keperluan rumah tangga, olahraga, taman. Juga gadget, anak-anak, pernak pernik, alat masak dan lain-lain. Karena MR DIY brand dari Malaysia di Palur Plasa merupakan terbesar, terlengkap, dan termurah se Jateng-DIY.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nKebutuhan fashion Anda dengan brand Nasional ada Sepatu Fladeo dan pakaian batik produk UMKM. Yang butuh hiburan dan suka karaoke, di lantai dasar Palur Plasa ada Happy Puppy yang nyaman dengan penerapan protokol kesehatan ketat. Tak hanya hiburan, di lantai dasar juga ada pijat refleksi, Tianshen Pijat Refleksi.\r\n</p>\r\n', 'Sumber : facebook', 'Rabu', '2021-12-29', '20:17:04', '52download (3).jfif', 0, 'wisata'),
(670, 58, 'admin', 'Pasar Kota Sragen', 'Alamat: Jl. Sukowati, Magero, Sragen Tengah, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57211', '', 'pasar-kota-sragen', 'N', 'N', 'N', '<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nPedagang Pasar Carikan, Sukoharjo mulai menyiapkan acara boyongan menempati bangunan baru yang dikonsep sebagai pusat kuliner pada malam hari. Slup-slupan akan digelar pada Jumat (20/12) malam.\r\n</p>\r\n<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nKepala Dinas Perdagangan Koperasi dan Usaha Kecil dan Menengah (Disdagkop dan UKM), Sutarmo, membenarkan proyek pembangunan Pasar Carikan telah rampung dikerjakan. Bangunan pasar ini dikonsep sama seperti Pasar Kepuh, Kecamatan Nguter.\r\n</p>\r\n<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nSemua bangunan kios menghadap ke depan atau jalan. Sedangkan bagian tengah dikosongkan untuk menampung pedagang los. Pasar Carikan ini dikonsep menjadi pusat kuliner pada malam hari seperti beberapa pasar di Kabupaten Sukoharjo untuk menghidupkan pasar di malam hari.\r\n</p>\r\n<span style=\"margin: 0px; padding: 0px; font-family: Arial, serif; font-size: 12px\"><br />\r\n</span>\r\n', 'Sumber : joglosemarnews', 'Rabu', '2021-12-29', '20:23:09', '9IMG_20200817_135931.jpg', 0, 'wisata'),
(668, 57, 'admin', 'Palur Plasa Mall of Karanganyar', 'Alamat: Jl. Solo - Sragen No.Km.1, Banaran, Ngringo, Kec. Jaten, Kabupaten Karanganyar, Jawa Tengah ', '', 'palur-plasa-mall-of-karanganyar', 'Y', 'Y', 'Y', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nPalur Plasa Mall of Karanganyar siap memenuhi kebutuhan masyarakat dalam menjalankan ibadah puasa. Ramadan tahun ini memang dijalani dalam suasana pandemi, sehingga penerapan protokol kesehatan dilakukan demi keamanan pengunjung.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nWajib memakai masker, menjaga jarak, dan mencuci tangan tidak mengurangi kenyamanan pengunjung Palur Plasa untuk memenuhi kebutuhan. Karena mall yang terletak di Jaten, Karanganyar ini buka mulai pukul 10.00 WIB hingga 21.00 WIB. Kecuali foodcourt di lantai 2 yang baru buka pukul 11.00 WIB-20.00 WIB.\r\n</p>\r\n<div class=\"iklan mt-3 mb-3\" align=\"center\" style=\"box-sizing: border-box; margin-top: 3px; font-family: Poppins, sans-serif; font-size: 14px; margin-bottom: 3px !important\">\r\n<ins class=\"adsbygoogle\" style=\"box-sizing: border-box; display: block; height: 0px\"><ins title=\"Advertisement\" id=\"aswift_1_expand\" style=\"box-sizing: border-box; border: none; height: 0px; width: 643px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table\"><ins id=\"aswift_1_anchor\" style=\"box-sizing: border-box; border: none; height: 0px; width: 643px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block; overflow: hidden; opacity: 0\"></ins></ins></ins>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Poppins, sans-serif; line-height: 32px; font-size: 17px; text-rendering: optimizelegibility\">\r\nBuat pengunjung yang mencari kebutuhan pokok sehari-hari, ada tenant Palur Plasa di lantai dasar yakni Giant Express. Di mana tersedia kebutuhan pokok dengan harga murah, produk yang fresh, dan ada diskon setiap weekend atau akhir pekannya.\r\n</p>\r\n', '', 'Rabu', '2021-12-29', '20:11:07', '9922Palur-Plaza-Istimewa.jpg', 2, 'wisata'),
(667, 56, 'admin', 'Pasar Tegal Gede', 'Alamat: Tegal gede, Karanganyar, Jawa Tengah, Indonesia', '', 'pasar-tegal-gede', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSalah satu pasar yang ada di Kabupaten Karanganyar. Pasar tradisional ini menjual berbagai produk kebutuhan pokok dan sembako seperti seperti mencari beras Kabupaten Karanganyar, terigu, gula, garam, sayur mayur, bawang, cabe, ikan, ayam, dan lainnya. Kelebihan pasar jenis tradisional ini adalah produk-produk yang ada di jual dengan harga rakyat, sehingga harganya murah bagi masyarakat, sebagaimana fungsi pasar pada umumnya.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nDi Pasar tegal gede ini, penjual / pedagang dan pembeli bisa saling tawar menawar untuk mendapat kesepakatan harga yang menguntungkan bagi kedua belah pihak. Pedagang biasa juga memberikan diskon / promo atau potongan harga pada pelanggannya. Pasar ini juga telah di modern kan oleh pemerintah setempat agar nyaman untuk berbelanja dan jual beli.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\n&nbsp;\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSegera kunjungi pasar terdekat ini (market near you) untuk berbelanja kebutuhan pokok yang murah di Kabupaten Karanganyar, atau informasi lainnya. Anda juga dapat menguhubungi pengurus pasar untuk informasi lainnya jika tersedia.<span style=\"text-align: center\">&nbsp;</span>\r\n</p>\r\n', 'Sumber : Daily Voyagers', 'Rabu', '2021-12-29', '20:08:30', '52download (2).jfif', 0, 'wisata'),
(665, 0, 'admin', 'Pasar Mulur', 'Alamat: Jl. Sukoharjo-Mulur (Bendosari), Sukoharjo, Jawa Tengah, Indonesia', '', 'pasar-mulur', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSalah satu pasar yang ada di Kabupaten Sukoharjo. Pasar tradisional ini menjual berbagai produk kebutuhan pokok dan sembako seperti seperti mencari beras Kabupaten Sukoharjo, terigu, gula, garam, sayur mayur, bawang, cabe, ikan, ayam, dan lainnya. Kelebihan pasar jenis tradisional ini adalah produk-produk yang ada di jual dengan harga rakyat, sehingga harganya murah bagi masyarakat, sebagaimana fungsi pasar pada umumnya.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nDi Pasar Mulur ini, penjual / pedagang dan pembeli bisa saling tawar menawar untuk mendapat kesepakatan harga yang menguntungkan bagi kedua belah pihak. Pedagang biasa juga memberikan diskon / promo atau potongan harga pada pelanggannya. Pasar ini juga telah di modern kan oleh pemerintah setempat agar nyaman untuk berbelanja dan jual beli.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 13px; font-family: Montserrat, sans-serif; line-height: 24px; color: #333333; text-align: justify\">\r\nSegera kunjungi pasar terdekat ini (market near you) untuk berbelanja kebutuhan pokok yang murah di Kabupaten Sukoharjo, atau informasi lainnya. Anda juga dapat menguhubungi pengurus pasar untuk informasi lainnya jika tersedia.\r\n</p>\r\n', 'Sumber : sukoharjonews.com', 'Rabu', '2021-12-29', '19:25:44', '42download (1).jfif', 0, 'wisata'),
(666, 57, 'admin', 'Pasar Jungke Karanganyar', 'Alamat: Jl. Tim. Ps. Jongke No.L-30, Dompon, Karanganyar, Kec. Karanganyar, Kabupaten Karanganyar, J', '', 'pasar-jungke-karanganyar', 'N', 'N', 'N', '<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nPedagang Pasar Carikan, Sukoharjo mulai menyiapkan acara boyongan menempati bangunan baru yang dikonsep sebagai pusat kuliner pada malam hari. Slup-slupan akan digelar pada Jumat (20/12) malam.\r\n</p>\r\n<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nKepala Dinas Perdagangan Koperasi dan Usaha Kecil dan Menengah (Disdagkop dan UKM), Sutarmo, membenarkan proyek pembangunan Pasar Carikan telah rampung dikerjakan. Bangunan pasar ini dikonsep sama seperti Pasar Kepuh, Kecamatan Nguter.\r\n</p>\r\n<p style=\"margin: 17px 0px; padding: 0px; box-sizing: border-box; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nSemua bangunan kios menghadap ke depan atau jalan. Sedangkan bagian tengah dikosongkan untuk menampung pedagang los. Pasar Carikan ini dikonsep menjadi pusat kuliner pada malam hari seperti beberapa pasar di Kabupaten Sukoharjo untuk menghidupkan pasar di malam hari.\r\n</p>\r\n', 'Sumber : solopos.com', 'Rabu', '2021-12-29', '19:51:55', '48IMG-20200206-WA0027.jpg', 0, 'wisata'),
(664, 62, 'admin', 'Pasar Rakyat Carikan', 'Alamat: Jl. Raya Cuplik-Sukoharjo, Carikan, Sukoharjo, Kec. Sukoharjo, Kabupaten Sukoharjo, Jawa Ten', '', 'pasar-rakyat-carikan', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 17px 0px; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nPedagang Pasar Carikan, Sukoharjo mulai menyiapkan acara boyongan menempati bangunan baru yang dikonsep sebagai pusat kuliner pada malam hari. Slup-slupan akan digelar pada Jumat (20/12) malam.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 17px 0px; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nKepala Dinas Perdagangan Koperasi dan Usaha Kecil dan Menengah (Disdagkop dan UKM), Sutarmo, membenarkan proyek pembangunan Pasar Carikan telah rampung dikerjakan. Bangunan pasar ini dikonsep sama seperti Pasar Kepuh, Kecamatan Nguter.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 17px 0px; color: #14142b; font-family: Poppins, sans-serif; font-size: 16px\">\r\nSemua bangunan kios menghadap ke depan atau jalan. Sedangkan bagian tengah dikosongkan untuk menampung pedagang los. Pasar Carikan ini dikonsep menjadi pusat kuliner pada malam hari seperti beberapa pasar di Kabupaten Sukoharjo untuk menghidupkan pasar di malam hari.\r\n</p>\r\n', 'Sumber : solopos.com', 'Rabu', '2021-12-29', '18:59:28', '1download.jfif', 3, 'wisata'),
(663, 0, 'admin', 'Hartono Mall Solo', 'Alamat: Jl. Ir. Soekarno, Dusun II, Madegondo, Kec. Grogol, Kab. Sukoharjo.', '', 'hartono-mall-solo', 'N', 'N', 'N', '<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nDi Jalan Ir. Soekarno, Anda bisa menemukan pusat perbelanjaan bernama Hartono Mall Solo. Mall satu ini dilengkapi dengan outlet yang cukup banyak. Mulai dari perlengkapan olahraga seperti Sports Station, gerai pakaian seperti Poshboy dan Cardinal, hingga gerai sepatu Buccheri dan Fladeo. Bahkan, di dalam area mall juga ada tempat bermain go kart bernama Lamtoro Go Kart.\r\n</p>\r\n<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nSetelah puas berbelanja, Anda bisa memilih berbagai macam tempat makan yang tersedia. Mulai dari makanan tradisional khas nusantara, makanan Jepang, hingga western pun bisa Anda temukan. Tak hanya gerai makanan berat, Anda yang hanya ingin sekedar membeli camilan pun bisa. Terdapat beberapa gerai camilan yang cukup terkenal di sini, seperti Brownies Kukus Amanda, Breadtalk, Asia Waffle, dan Hawaiian Crepes.\r\n</p>\r\n', 'Sumber : Soloevent.id', 'Rabu', '2021-12-29', '18:26:57', '10Hartono-Mall-Solo.jpg', 0, 'wisata'),
(671, 58, 'admin', 'Pasar Bunder Sragen', 'Alamat: Jl. Diponegoro, Magero, Sragen Tengah, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57211', '', 'pasar-bunder-sragen', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Pemerintah Kabupaten (Pemkab) Sragen resmi menerapkan Pasar Bunder menjadi pilot project pasar di Sragen dengan menerapkan physical distancing, Sabtu (9/5/2020) mulai pukul 22.00 - 06.00 WIB.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Penerapan pasar physical distancing guna mencegah potensi persebaran virus corona di lingkungan pasar.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Bupati Sragen dr. Kusdinar Untung Yuni Sukowati mengatakan, Pasar Bunder tidak ditutup oleh Pemkab selama status kegawat daruratan pandemi covid-19 di Sragen. Penerapan physical distancing di Pasar Bunder ini diharapkan efektif dalam menjaga jarak antar pedagang dan antar pembeli.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Lapak pedagang tidak boleh keluar dari garis putih yang dibuat di permukaan paving block. Setiap lapak pedagang oprokan berukuran 1,5 meter x 2 meter.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">&ldquo;Perenggangan posisi lapak menjadi pengalaman baru bagi pedagang di Pasar Bunder Sragen. Alhamdulillah, mereka setuju dan menerima hal tersebut demi kebaikan bersama,&rdquo; terang Bupati.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Ada 365 pedagang sore maupun pedagang malam di kompleks Pasar Bunder Sragen yang mulai berjualan dengan menerapkan physical distancing.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Bupati juga menjelaskan ada 4 lokasi penempatan pedagang yaitu di pelataran sebelah barat Pasar Bunder, pelataran sebelah selatan Pasar Bunder, Jalan Ahmad Yani dari perempatan PG Mojo ke utara sampai perlintasan kereta api dan sebagian bahu jalan RA Kartini di sebelah selatan Pasar Bunder.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Oleh karena itu ada penutupan lalu lintas di Jl. Ahmad Yani dan Jl. RA Kartini guna memperlancar penerapan physical distancing, Jl. Ahmad Yani ditutup total mulai pukul 22.00 WIB hingga 06.00 WIB. Sementara arus lalu lintas di Jl. RA Kartini menggunakan sistem satu arah.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">&ldquo;Jl. RA Kartini hanya dibuka untuk kendaraan dari arah timur. Arus lalu lintas dari timur dialihkan masuk ke kompleks PG Mojo lalu keluar menuju Jl. Ahmad Yani,&rdquo; jelas Bupati.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Untuk lokasi bongkar muat dan parkir pedagang di halaman hanggar eks SDN Mojo dan pelataran tanah kodim di sebelah barat hanggar.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">&ldquo;Pengalihan arus lalu lintas ini karena pedagang diberikan tempat dengan memanfaatkan bahu jalan, dan Pengunjung pasar bisa parkirkan kendaraannya di tempat yang disediakan,&rdquo; ujar Bupati.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Sementara, pasar tradisional lainnya masih diatur jam operasionalnya.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">&ldquo;Insya Allah pasar lainnya menyusul. Tapi masih kita bahas. Intinya kita tetap ingin ekonomi masyarakat kita tetap berjalan dengan baik,&rdquo; lanjutnya.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">Lurah pasar Bunder, Sugino mengatakan selain menerapkan physical distancing, pedagang dan pembeli juga diwajibkan mengenakan masker selama berada di kompleks Pasar Bunder Sragen. Pengelola tidak segan menegur pedagang atau pembeli yang kedapatan tidak memakai masker.</span>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 1.75em; text-align: justify; font-family: Rubik, sans-serif; font-size: 16px\" class=\"p1\">\r\n<span style=\"box-sizing: border-box; margin-bottom: 0px\" class=\"s1\">&ldquo;Kami tidak bosan mengingatkan kepada pedagang dan pembeli. Kalau ada pembeli yang tidak memakai masker, saya minta pedagang mengingatkan. Kalau perlu jangan dilayani pembeli itu,&rdquo; pungkasnya.</span>\r\n</p>\r\n', 'Sumber : solopos.com', 'Rabu', '2021-12-29', '20:39:29', '80pasar-bunder.jpg', 0, 'wisata'),
(662, 63, 'admin', 'Transmart Solo', 'Alamat: Jl. A. Yani No.234, Banaran, Pabelan, Kec. Kartasura, Kab. Sukoharjo.', '', 'transmart-solo', 'N', 'N', 'N', '<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nPada tahun 2017 lalu, di Kawasan kampus UMS telah hadir dan dibuka Transmart Pabelan Sukoharjo Solo. PT Trans Retail Indonesia menghadirkan konsep 4 in 1 untuk Mall satu ini. Yaitu, berbelanja, bermain, bersantap, dan menonton. Gerai yang dihadirkan di dalamnya pun cukup banyak, yaknik mencapai sekitar 30 gerai yang semuanya juga cukup terkenal di Indonesia.\r\n</p>\r\n<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nYang menyenangkan lagi dari mall satu ini yaitu, biasanya Transmart Solo mengadakan Program Hepi Hepi. Dimana program ini akan memberi diskon besar-besaran untuk berbagai produknya. Ditambah lagi tatanan produk atau gerainya yang diletakkan sesuai dengan jenisnya akan memudahkan Anda untuk mencari barang yang Anda butuhkan.\r\n</p>\r\n<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\n<span style=\"letter-spacing: -0.247px\">Di lantai satu mall, adalah kawasan fresh market, bread shop, dan kosmetik. Tempat ini adalah area favorit bagi para wanita Kota Solo. Selanjutnya di lantai dua terdapat supermarket yang berisi kebutuhan sehari-sehari serta peralatan rumah tangga. Kemudian di lantai tiga adalah trans studio mini, yang berisi beberapa wahana permainan seru. Terakhir, di lantai empat Anda akan menemukan CGV Cinemas yang menayangkan film-film terkini.</span>&nbsp;\r\n</p>\r\n', 'Sumber : Asedino.com', 'Rabu', '2021-12-29', '18:25:14', '26Transmart-Solo.jpg', 0, 'wisata'),
(661, 55, 'admin', 'Paragon Mall', 'Alamat: Jl. Yosodipuro No.133, Mangkubumen, Kec. Banjarsari, Kota Surakarta.', '', 'paragon-mall', 'Y', 'Y', 'Y', '<p>\r\n<span style=\"color: #1c2c2d; font-family: montserrat, Helvetica, Arial, sans-serif; font-size: 20px; letter-spacing: -0.247px; background-color: #f6fafc\">Daftar pusat perbelanjaan selanjutnya yang wajib Anda kunjungi, yaitu Paragon Mall. Plaza yang terletak di jalan Yosodipuro ini, biasa menjadi tempat nongkrong para kawula muda Kota Solo. Karena banyak sekali kebutuhan untuk kecantikan kulit serta baju yang bisa didatangi di lantai GF, mulai dari The Face Shop hingga Centro Department Store. Selain itu, Solo Paragon Mall juga menyediakan banyak sekali gerai kuliner yang harus Anda cicipi.</span>\r\n</p>\r\n<p>\r\n \r\n</p>\r\n<p>\r\n<span style=\"background-color: #f6fafc; color: #1c2c2d; font-family: montserrat, Helvetica, Arial, sans-serif; font-size: 20px; letter-spacing: -0.247px\">Kuliner terkenal yang bisa Anda coba di Paragon Mall, antara lain Pempek Nyonya Kamto, Panties Pizza, Kimukatsu, Yoshinoya, KFC, Burger King, Hokben, dan masih banyak lainnya yang juga cukup terkenal. Tak hanya kuliner dan kebutuhan kecantikan yang begitu banyak, Paragon Mall juga menyuguhkan beberapa tempat hiburan seperti Cinema XXI, Gramedia, hingga Inbox Studio.</span> \r\n</p>\r\n', '', 'Rabu', '2021-12-29', '18:23:35', '8Paragon-Mall.jpg', 0, 'wisata');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(659, 55, 'admin', 'Solo Grand Mall', 'Alamat: Slamet Riyadi St No.273, Penumping, Kec. Laweyan, Kota Surakarta.', '', 'solo-grand-mall', 'N', 'N', 'N', '<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nSolo Grand Mall atau dikenal juga dengan SGM, terletak di Jalan Brigjend Slamet Riyadi. Mall yang berdiri sejak tahun 2004 ini memiliki tujuh lantai, dengan area yang cukup luas. Solo Grand Mall termasuk sebagai salah satu pusat perbelanjaan terlengkap dan terbesar di Kota Solo. Di sini, Anda bisa menemukan banyak gerai mulai dari perlengkapan rumah tangga hingga gerai makanan. Ada pula bioskop yang terletak di lantai 4 untuk Anda para pecinta film.\r\n</p>\r\n<p style=\"margin: 0px 0px 2.1875rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">\r\nSelain banyaknya gerai yang disediakan, pada loby mall yang luas sering kali diadakan event. Seperti event fashion show, zumba at mall, hingga acara meet and greet. Di Solo Grand Mall juga selalu ada kegiatan untuk merayakan Imlek, Ramadhan, Natal, Valentine, dan hari-hari besar lainnya. Tak ketinggalan juga pesta diskon yang selalu menyertai rangkaian kegiatan tersebut.\r\n</p>\r\n', 'Sumber : Wisatasurakarta28.wordpress.com', 'Rabu', '2021-12-29', '18:17:46', '60Solo-Grand-Mall.jpg', 0, 'wisata'),
(660, 0, 'admin', 'Solo Square', 'Alamat: Slamet Riyadi St No.451-455, Pajang, Kec. Laweyan, Kota Surakarta.', '', 'solo-square', 'N', 'N', 'N', '<p>\r\n<span style=\"color: #1c2c2d; font-family: montserrat, Helvetica, Arial, sans-serif; font-size: 20px; letter-spacing: -0.247px; background-color: #f6fafc\">Masih di sekitar Jalan Brigjend Slamet Riyadi, terdapat mall sejuta umat masyarakat Solo. Mall satu ini memang menjadi mall yang paling sering dikunjungi oleh warga Kota Solo. Wajar saja jika Solo Square selalu ramai, mall ini memang memiliki fasilitas yang sangat banyak. Tempatnya pun terbilang cukup nyaman dan bersih. Selain menyediakan berbagai gerai untuk tempat Anda berbelanja, Anda juga bisa nonton film di Bioskop XXI atau bermain timezone di sini.</span>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: montserrat, Helvetica, Arial, sans-serif; vertical-align: baseline; color: #1c2c2d; letter-spacing: -0.247px; background-color: #f6fafc\">Anda yang berjalan-jalan membawa anak kecil, bisa mengajak buah hati Anda berkeliling mall dengan sarana permainan kereta yang tersedia. Sehingga anak-anak Anda tidak bosan, ketika Anda sibuk memilih barang belanjaan. Hal menarik lainnya, Anda bisa lebih berhemat ketika memutuskan makan di Solo Square, pasalnya foodcourt di sini terkenal dengan harganya yang murah.</em>&nbsp;\r\n</p>\r\n', 'Sumber : Soloevent.id', 'Rabu', '2021-12-29', '18:20:00', '25Solo-Square.jpg', 0, 'wisata'),
(658, 54, 'admin', 'Pasar Kerajinan Alun-Alun Utara', 'Alamat: Desa Kauman, Kecamatan Pasar Kliwon, Kota Surakarta', '', 'pasar-kerajinan-alunalun-utara', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nTidak jauh dari Pasar Klewer, kamu bisa mengunjungi&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #009f97; text-decoration-line: none; transition: all 0.07s ease 0s\" href=\"https://www.bobobox.co.id/blog/wisata-solo-2020/\">destinasi wisata</a>&nbsp;Solo selanjutnya. Tempat yang dimaksud adalah Pasar Kerajinan Alun-Alun Utara. Seperti namanya, tempat ini berlokasi di sepanjang sisi barat dan timur Alun-Alun Utara Keraton Surakarta.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nBagi kamu yang sedang mencari kerajinan seperti keris atau cinderamata keraton, tempat wisata Solo satu ini akan cocok untuk kamu kunjungi. Pasalnya, pasar ini sudah terkenal karena banyaknya barang antik yang dijajakan.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nPerhiasan batu, kacamata, alat musik tradisional Jawa hingga keris mudah kamu temui selama berjalan-jalan di Pasar Kerajinan Alun-Alun Utara. Tinggal pilih sesuai dengan yang kamu incar sebelumnya.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nJika sudah selesai berbelanja, kamu bisa bepergian ke tempat lainnya yang tidak jauh dari lokasi Pasar Kerajinan Alun-Alun Utara. Beberapa tempat tersebut seperti Benteng Vastenburg, desa batik Kauman, hingga kompleks istana Kasunanan Surakarta.\r\n</p>\r\n', 'Sumber : pegipegi.com', 'Rabu', '2021-12-29', '18:12:29', '49keris-750x430.jpg', 0, 'wisata'),
(657, 54, 'admin', 'Pasar Gede Harjonagoro', 'Alamat: Desa Sudiroprajan, Kecamatan Jebres, Kota Surakarta', '', 'pasar-gede-harjonagoro', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nPasar Gede Hardjonagoro menjadi destinasi wisata Solo selanjutnya. Sama seperti halnya Pasar Klewer, Pasar Gede ini termasuk salah satu pasar tua di Solo. Bahkan, lebih tua dibandingkan Pasar Klewer.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nJika Pasar Klewer dibangun pada tahun 1940, tempat wisata Solo ini sudah dibangun tiga belas tahun sebelumnya tepatnya pada tahun 1927. Arsitek dari Pasar Gede adalah arsitek asal Belanda, Thomas Karsten.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nPasar Gede sendiri tidak hanya terkenal karena menjadi pasar tertua saja. Pasar ini pun merupakan pasar tradisional terbesar sekaligus yang paling terkenal di Solo. Mungkin bisa dibandingkan dengan Pasar Beringharo di Yogyakarta.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nSoal dagangan yang dijajakan, tempat wisata Solo ini secara umum menjual berbagai kebutuhan sehari-hari layaknya pasar tradisional pada umumnya. Mulai dari sayuran, buah-buahan, hingga bumbu-bumbu dapur semua ada di sini.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nSelain menjual kebutuhan sehari-sehari sebagai komoditas utamanya, Pasar Gede pun dikenal sebagai salah satu pusat kuliner untuk mencicipi&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #009f97; text-decoration-line: none; transition: all 0.07s ease 0s\" href=\"https://www.bobobox.co.id/blog/rekomendasi-kuliner-malam-di-solo/\">kuliner khas tradisional</a>&nbsp;yang ada di Solo.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nBeberapa kuliner yang ada di pasar ini di antaranya adalah dawet, getuk lenjongan, brambang asem, dan masih banyak lainnya. Yang wajib kamu coba adalah Dawet Telasih Bu Dermi yang sudah tersohor hingga ke luar kota Solo.\r\n</p>\r\n', '', 'Rabu', '2021-12-29', '18:09:31', '', 2, 'wisata'),
(653, 41, 'admin', 'Ketika \"Ciyus\" Terucap dari Mulut Jokowi', '', '', 'ketika-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>\r\nKata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak \r\nzaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika \r\nbahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas \r\nmeliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena \r\nnadanya yang sedikit medok.\r\n</p>\r\n<p>\r\nTerhitung sudah dua kali Jokowi \r\nmelontarkan kata itu kepada wartawan.    Pertama, saat Jumat (18/1/2013)\r\nmalam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat\r\n(KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu \r\nserius dan tegang karena pengerjaan tanggul yang masih belum selesai, \r\nditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi \r\ntampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.\r\n</p>\r\n<p>\r\nSaat\r\nitu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel \r\nkereta api yang terputus. Lantas para wartawan berniat mencairkan \r\nsuasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, \r\nseperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency\r\n(Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari \r\nJokowi akhirnya muncul kembali.\r\n</p>\r\n<p>\r\nSeraya mengernyitkan dahinya, \r\nJokowi bertanya, &quot;Apa itu Sency?&quot;   Wartawan pun langsung menjelaskan \r\nkalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal \r\ntersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya \r\njangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.\r\n</p>\r\n<p>\r\nPembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai. \r\n</p>\r\n<p>\r\nKata <em>ciyus </em>kembali\r\ndiucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan \r\nwartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia \r\nditanya terkait kinerjanya 100 hari. \r\n</p>\r\n<p>\r\nSaat itu, Jokowi ditanya \r\nmasalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab  tak\r\nada persoalan yang membuatnya pusing karena ia telah menghadapi  \r\nmasalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu\r\nmasa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama \r\npas T. Apa  itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang  tawa para wartawan. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:11:01', '42jokowi.jpg', 0, 'metropolitan'),
(654, 31, 'admin', 'Bahaya Mendiagnosis Penyakit Lewat Internet', '', '', 'bahaya-mendiagnosis-penyakit-lewat-internet', 'N', 'Y', 'N', '<p>\r\nApakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di \r\nklinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika \r\ndiketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di \r\ninternet dan mendiagnosis dirinya sendiri.\r\n</p>\r\n<p>\r\nMasih menurut survei \r\nyang dilakukan The Pew Research Center&#39;s Internet &amp; American Life \r\nProject itu, sekitar 41 responden mengatakan diagnosis sendiri itu \r\nternyata dikonfirmasi kebenarannya oleh dokter. \r\n</p>\r\n<p>\r\nTetapi, sekitar \r\nsatu dari tiga responden mengaku tidak pernah pergi ke dokter untuk \r\nmencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya\r\nmendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter. \r\n</p>\r\n<p>\r\nMeski\r\nsurvei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk \r\nmengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.\r\n</p>\r\n<p>\r\n&quot;Rata-rata\r\ntiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker \r\ndan akan segera meninggal. Padahal, di internet banyak informasi yang \r\nkeliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern\r\nMemorial Hospital.\r\n</p>\r\n<p>\r\nMenurut Khare, ia sering menemukan pasien \r\nyang hidupnya menjadi penuh kecemasan karena mereka merasa menderita \r\npenyakit berat setelah mencocokkan gejala yang dirasakannya dengan \r\ninformasi di internet. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:18:13', '60keluarga.jpg', 1, 'kesehatan'),
(655, 54, 'admin', 'Pasar Klewer', 'Alamat: Jalan DR. Radjiman No.5A, Kecamatan Pasar Kliwon, Kota Surakarta', '', 'pasar-klewer', 'Y', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nTempat wisata solo pertama yang merupakan pasar tradisional adalah Pasar Klewer. Lokasinya yang strategis yakni di antara Istana Kasunanan Surakarta dan Masjid Agung Surakarta menjadikan tempat ini mudah untuk ditemukan.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nTidak hanya mudah ditemukan, lokasi strategis tersebut membuat Pasar Klewer ini menjadi pusat perbelanjaan sejak tahun 1940an. Sehingga, tempat wisata solo ini termasuk salah satu yang cukup tua di daftar Bob kali ini.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nSekarang ini, Pasar Klewer sudah memiliki ‘wajah’ baru yang lebih kekinian dan modern. Bahkan, bisa dibilang yang paling modern untuk pasar yang ada di Solo. Pasalnya, pasar ini pernah luluh lantah akibat si jago merah.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nKejadian tersebut terjadi pada tahun 2014 yang lalu. Sehingga, akhirnya renovasi pun digalakan untuk membangun kembali bagian yang terbakar. Dengan tempat yang lebih kekinian, sekarang berbelanja pun jadi lebih nyaman.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nBagi kamu yang ingin berbelanja di sini, tempat wisata Solo ini menjual beraneka ragam produk tekstil, mulai dari batik hingga baju tren saat ini. Selain itu, ada pula beragam kuliner khas Solo yang bisa kamu santap selama belanja di Pasar Klewer.\r\n</p>\r\n', '', 'Rabu', '2021-12-29', '17:56:23', '44klewer-750x430.jpg', 5, 'wisata'),
(656, 54, 'admin', 'Pasar Antik Triwindu', 'Alamat: Jalan Diponegoro, Kecamatan Banjarsari, Kota Surakarta', '', 'pasar-antik-triwindu', 'N', 'N', 'N', '<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nSelanjutnya, destinasi wisata Solo lainnya adalah Pasar Antik Triwindu. Destinasi wisata Solo ini akan tepat untuk dikunjungi sebagai tempat membeli&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #009f97; text-decoration-line: none; transition: all 0.07s ease 0s\" href=\"https://www.bobobox.co.id/blog/oleh-oleh-khas-bandung-kekinian/\">oleh-oleh</a>&nbsp;bagi sanak famili khususnya yang senang dengan barang-barang antik.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nDi Pasar Antik Triwindu, kamu bisa dengan mudah menemukan para pedagang yang menjual barang-barang jaman dulu (jadul) dan&nbsp;<em style=\"box-sizing: border-box\">vintage.&nbsp;</em>Jadi, jika kamu atau temanmu termasuk kolektor barang langka, siap-siap terpuaskan hasrat belanjamu di sini.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nBarang-barang yang dijual di sini di antaranya adalah pajangan, hiasan rumah, dan berbagai macam koleksi barang-barang lawas lainnya. Banyak di antaranya memiliki nilai seni tinggi.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nHarga yang ditawarkan untuk tiap barangnya sendiri bervariasi. Biasanya yang memiliki nilai tertentu akan jauh lebih mahal. Urusan dapat harga murah, tinggal keluarkan jurus tawar-menawar, kamu bisa mendapatkan harga yang diinginkan.\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 17px; color: #222222; font-family: quicksand; font-size: 15px; letter-spacing: 0.1px\">\r\nYang unik dari tempat wisata Solo ini adalah jika kamu mau, ada cara lain untuk pembayarannya. Caranya adalah kamu bisa membayar barang yang kamu inginkan dengan cara barter dengan barang antik yang kamu bawa.\r\n</p>\r\n', 'Sumber : Grid ID', 'Rabu', '2021-12-29', '18:07:35', '4834791_pasar-triwindu.jpg', 0, 'wisata');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(3, 'Membuat Shopping Cart dengan PHP', 'shopping cart.pdf', '2009-02-17', 16),
(5, 'Skrip Captcha', 'captcha.rar', '2009-02-06', 15),
(1, 'Kalender Tahun 2009', 'kalender2009.rar', '2009-02-06', 19),
(8, 'Wallpaper PHP', 'PHP_weapon.jpg', '2009-10-28', 37),
(9, 'Slide  Pemrograman VBA Excell', 'Excell_VBA.ppt', '2009-11-03', 24);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(240, 30, 'admin', 'Doa Bersama', 'doa-bersama', 'Para personil Kantata tengah melakukan doa bersama sebelum pementasan.\r\n', '38kantata1.jpg'),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '7kantata2.jpg'),
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '7kantata3.jpg'),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '44kantata4.jpg'),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '85kantata5.jpg'),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '95kantata6.jpg'),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '32kantata7.jpg'),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', '', '45bungaraksasa8.jpg'),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '32kantata8.jpg'),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '89bungaraksasa7.jpg'),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '17bungaraksasa6.JPG'),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '74bungaraksasa5.JPG'),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '22bungaraksasa4.JPG'),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '78bungaraksasa3.JPG'),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '17bungaraksasa1.JPG'),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '22bungaraksasa2.JPG'),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', '34asemka10.jpg'),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', '6asemka9.jpg'),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', '2asemka8.jpg'),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', '82asemka4.jpg'),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', '21asemka7.jpeg'),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', '41asemka1.jpg'),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', '7asemka6.jpeg'),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', '22asemka5.jpeg'),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', '84asemka2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(18, 'Tentang Kami', 'tentang-kami', '<p>\r\nIngin mempunyai website seperti SwaraKalibata.com ini? Bingung membuat website?\r\nKami menawarkan jasa pembuatan website berkualitas dengan fitur professional.\r\nKami melayani pembuatan website untuk keperluan website pribadi (personal\r\nwebsite), perusahaan (company profile), website sekolah (web school), photography\r\n(web gallery), toko online (e-commerce) serta website untuk keperluan khusus\r\nbagi perusahan, organisasi, lembaga pemerintah, personal, komunitas,\r\norganisasi, UKM atau lainnya.<br />\r\n<br />\r\n<strong>Kelebihan Kami</strong><br />\r\nKelebihan kami adalah kemampuan untuk menawarkan kepada anda layanan penuh.\r\nMulai dari desain web, script, keamanan sistem, garansi kerusakan, sesuai\r\nstandar dan tren web terkini. Selain itu kami juga telah menggunakan CMS\r\n(Content Management System) sehingga memudahkan anda untuk mengelola website\r\nsemudah mengelola file dokumen Microsoft Word. Cukup dengan keahlian mengetik\r\ndi Microsoft Word anda sudah dapat menjadi webmaster yang powerfull dan\r\nprofesional. \r\n</p>\r\n<p>\r\nBerbekal pengalaman dalam jasa pembuatan website ke berbagai perusahaan dan\r\nlainnya, kami siap membantu untuk menghadirkan website anda di internet melalui\r\nbeberapa produk desain website kami. Segera hubungi kami dan dapatkan website\r\nidaman anda! <br />\r\n<br />\r\n<strong>Berikut beberapa demo/contoh website produk kami:&nbsp;</strong>\r\n</p>\r\n<ul>\r\n	<li><a href=\"http://griya-parfum.co.cc\">GriyaParfum</a> </li>\r\n	<li><a href=\"http://luxindotours.com\">Luxindo Tours</a> </li>\r\n	<li><a href=\"http://iwapi-pusat.org\">Iwapi Pusat</a> </li>\r\n	<li><a href=\"http://kuejajananpasar.com\">Kue Jajanan Pasar</a> </li>\r\n	<li><a href=\"http://kenrizresto.co.cc\">KenrizResto</a> </li>\r\n	<li><a href=\"http://resoar.co.cc\">Reka Solusi Arthamedia</a> </li>\r\n	<li><a href=\"http://eksotika-photography.co.c\">Eksotika Photography</a> </li>\r\n	<li><a href=\"http://griyagaya.co.cc\">Griyagaya</a> </li>\r\n	<li><a href=\"http://rizalonline.morganhosting.co.cc/anekajam\">Aneka Jam</a> </li>\r\n	<li><a href=\"http://rizalonline.morganhosting.co.cc/artfurniture\">Art Furniture</a> </li>\r\n	<li><a href=\"http://rizalonline.morganhosting.co.cc/selarasinterior\">Selaras Interior</a> </li>\r\n</ul>\r\n<p>\r\n<font size=\"3\">Hubungi kami <strong>di 021. 329 72 759</strong> (nurul muzayyana)<br />\r\natau <strong>Email: 202020998@mhs.udb.ac.id</strong></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', '2012-03-08', 'webdesign.jpg', 'admin', 735, '20:08:00', 'Kamis');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(26, 'Rizal Faizal', 'rizal_fzl@yahoo.com', 'test', 'test', '2012-05-10', '00:00:00', 'Y'),
(27, 'Niken', 'azzamrabbanirizaldi@gmail.com', 'tes', 'If you need to buy a premium account to help download of the fast? We recommend that you purchase Account Extabit or I-filez follow the link below to ensure correct service: ', '2012-05-12', '00:00:00', 'Y'),
(29, 'Muhammad', 'hidmuh@gmail.com', 'Assalamu Alaikum', 'Mas. Rizal faisal, Saya berminat memiliki Template seperti http://swarakalibata.com beserta modul\" baru barunya. Mas bisa membuatkan saya template seperti situs ini, namun dengan skema warna yang berbeda ? Dan, Berapa harga yang harus saya bayar?', '2012-06-11', '00:00:00', 'N'),
(30, 'wesiyadi', 'wesiyadi@digiporch.com', 'pasang iklan baris gratis', 'silahkan pasang iklan baris anda di www.digiporch.com gratis pasang tanpa perlu daftar\r\n\r\ntrims.', '2012-06-25', '00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`) VALUES
(1, 'MarketJateng.com - Mempermudah Belanja', 'rizal_fzl@yahoo.com', 'http://localhost/swarakalibata', 'https://www.facebook.com/pages/MarketJateng/239333572825492', 'Bank Mandiri No Rek 126-00-0524471-9 atas nama Niken Sulanjari', '021. 32972759', 'MarketJateng.com adalah Situs Informasi mengenai Pasar yang ada di provinsi Jawa Tengah.', 'marketjateng, informasi, info, pasar, market, jawa tengah, kota surakarta, kabupaten karanganyar, kabupaten sragen, kabupaten wonogiri, kabupaten sukoharjo, kabupaten klaten, kabupaten boyolali', 'favicon.png');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(35, '', 'admin', '#', 'promoiklan.gif', '2012-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(26, 'Lembaga Amil Zakat dan Pemberdayaan  DOMPET SOSIAL INSAN MULIA', '', '#', 'dsim_lbanner.jpg', '2011-06-26'),
(30, 'ingin punya website?', '', 'hal-jasa-pembuatan-website.html', 'webDesignBanner.jpg', '2012-01-08'),
(31, 'Contoh Iklan', '', '#', '179748contoh_iklan002.jpg', '2012-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`) VALUES
(64, 'Pasar Tradisional di Kabupaten Klaten', 'admin', 'pasar-tradisional-di-kabupaten-klaten', 'Y'),
(63, 'Pasar Modern di Kabupaten Sukoharjo', 'admin', 'pasar-modern-di-kabupaten-sukoharjo', 'Y'),
(62, 'Pasar Tradisional di Kabupaten Sukoharjo', 'admin', 'pasar-tradisional-di-kabupaten-sukoharjo', 'Y'),
(61, 'Pasar Modern di Kabupaten Wonogiri', 'admin', 'pasar-modern-di-kabupaten-wonogiri', 'Y'),
(60, 'Pasar Tradisional di Kabupaten Wonogiri', 'admin', 'pasar-tradisional-di-kabupaten-wonogiri', 'Y'),
(54, 'Pasar Tradisional di Kota Surakarta', 'admin', 'pasar-tradisional-di-kota-surakarta', 'Y'),
(55, 'Pasar Modern di Kota Surakarta', 'admin', 'pasar-modern-di-kota-surakarta', 'Y'),
(56, 'Pasar Tradisional di Kabupaten Karanganyar', 'admin', 'pasar-tradisional-di-kabupaten-karanganyar', 'Y'),
(57, 'Pasar Modern di Kabupaten Karanganyar', 'admin', 'pasar-modern-di-kabupaten-karanganyar', 'Y'),
(58, 'Pasar Tradisional di Kabupaten Sragen', 'admin', 'pasar-tradisional-di-kabupaten-sragen', 'Y'),
(59, 'Pasar Modern di Kabupaten Sragen', 'admin', 'pasar-modern-di-kabupaten-sragen', 'Y'),
(65, 'Pasar Modern di Kabupaten Klaten', 'admin', 'pasar-modern-di-kabupaten-klaten', 'Y'),
(66, 'Pasar Tradisional di Kabupaten Boyolali', 'admin', 'pasar-tradisional-di-kabupaten-boyolali', 'Y'),
(67, 'Pasar Modern di Kabupaten Boyolali', 'admin', 'pasar-modern-di-kabupaten-boyolali', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 622, 'asyiqah', '', ' 	nice  story	   ', '2012-01-05', '00:15:45', 'Y', ''),
(88, 633, 'belajarkonseling', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', ''),
(90, 597, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', ''),
(91, 623, 'ridha', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', ''),
(136, 643, 'belajarweb', '', ' cantik  euy   ', '2013-01-19', '18:51:58', 'Y', ''),
(137, 603, 'lukman', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo5.png');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`) VALUES
(7, 0, 'Home', 'index.php', 'Ya'),
(81, 46, 'Modern', 'kategori-65-pasar-modern-di-kabupaten-klaten.html', 'Ya'),
(80, 46, 'Tradisional', 'kategori-64-pasar-tradisional-di-kabupaten-klaten.html', 'Ya'),
(79, 45, 'Modern', 'kategori-63-pasar-modern-di-kabupaten-sukoharjo.html', 'Ya'),
(78, 45, 'Tradisional', 'kategori-62-pasar-tradisional-di-kabupaten-sukoharjo.html', 'Ya'),
(77, 44, 'Modern', 'kategori-61-pasar-modern-di-kabupaten-wonogiri.html', 'Ya'),
(41, 0, 'Kota Surakarta', '', 'Ya'),
(42, 0, 'Kab. Karanganyar', '', 'Ya'),
(43, 0, 'Kab. Sragen', '', 'Ya'),
(44, 0, 'Kab. Wonogiri', '', 'Ya'),
(45, 0, 'Kab. Sukoharjo', '', 'Ya'),
(46, 0, 'Kab. Klaten', '', 'Ya'),
(47, 0, 'Boyolali', '', 'Ya'),
(76, 44, 'Tradisional', 'kategori-60-pasar-tradisional-di-kabupaten-wonogiri.html', 'Ya'),
(75, 43, 'Modern', 'kategori-59-pasar-modern-di-kabupaten-sragen.html', 'Ya'),
(74, 43, 'Tradisional', 'kategori-58-pasar-tradisional-di-kabupaten-sragen.html', 'Ya'),
(73, 42, 'Modern', 'kategori-57-pasar-modern-di-kabupaten-karanganyar.html', 'Ya'),
(72, 42, 'Tradisional', 'kategori-56-pasar-tradisional-di-kabupaten-karanganyar.html', 'Ya'),
(71, 41, 'Modern', 'kategori-55-pasar-modern-di-kota-surakarta.html	', 'Ya'),
(70, 41, 'Tradisional', 'kategori-54-pasar-tradisional-di-kota-surakarta.html', 'Ya'),
(82, 47, 'Tradisional', 'kategori-66-pasar-tradisional-di-kabupaten-boyolali.html', 'Ya'),
(83, 47, 'Modern', 'kategori-67-pasar-modern-di-kabupaten-boyolali.html', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', '', '?module=user', '', '', 'Y', 'user', 'Y', 22, ''),
(18, ' Berita', '', '?module=berita', '', '', 'Y', 'user', 'Y', 5, 'semua-berita.html'),
(19, 'Iklan Utama', '', '?module=banner', '', '', 'N', 'user', 'N', 9, ''),
(10, 'Manajemen Modul', '', '?module=modul', '', '', 'Y', 'user', 'Y', 23, ''),
(31, 'Kategori Berita ', '', '?module=kategori', '', '', 'Y', 'user', 'Y', 6, ''),
(33, 'Jajak Pendapat', '', '?module=poling', '', '', 'Y', 'user', 'Y', 18, ''),
(34, 'Tag Berita', '', '?module=tag', '', '', 'Y', 'user', 'Y', 7, ''),
(35, 'Komentar Berita', '', '?module=komentar', '', '', 'Y', 'user', 'Y', 8, ''),
(41, 'Agenda Jakarta', '', '?module=agenda', '', '', 'Y', 'user', 'Y', 17, 'semua-agenda.html'),
(43, 'Berita Foto', '', '?module=album', '', '', 'Y', 'user', 'Y', 11, ''),
(44, 'Galeri Berita Foto', '', '?module=galerifoto', '', '', 'Y', 'user', 'Y', 12, ''),
(45, 'Template Web', '', '?module=templates', '', '', 'Y', 'user', 'Y', 16, ''),
(46, 'Sensor Kata', '', '?module=katajelek', '', '', 'Y', 'user', 'Y', 10, ''),
(61, 'Identitas Website', '', '?module=identitas', '', '', 'Y', 'user', 'Y', 1, ''),
(57, 'Menu Utama', '', '?module=menuutama', '', '', 'Y', 'user', 'Y', 2, ''),
(58, 'Sub Menu', '', '?module=submenu', '', '', 'Y', 'user', 'Y', 3, ''),
(59, 'Halaman Baru', '', '?module=halamanstatis', '', '', 'Y', 'user', 'Y', 4, ''),
(62, 'Video', '', '?module=video', '', '', 'Y', 'user', 'Y', 13, ''),
(63, 'Playlist Video', '', '?module=playlist', '', '', 'Y', 'user', 'Y', 14, ''),
(64, 'Tag Video', '', '?module=tagvid', '', '', 'Y', 'user', 'Y', 15, ''),
(65, 'Komentar Video', '', '?module=komentarvid', '', '', 'Y', 'user', 'Y', 15, ''),
(66, 'Logo Website', '', '?module=logo', '', '', 'Y', 'user', 'Y', 15, ''),
(67, 'Iklan Layanan', '', '?module=iklanatas', '', '', 'Y', 'user', 'Y', 19, ''),
(68, 'Iklan Depan', '', '?module=iklantengah', '', '', 'Y', 'user', 'Y', 20, ''),
(69, 'Iklan Kiri', '', '?module=pasangiklan', '', '', 'Y', 'user', 'Y', 21, ''),
(70, 'Hubungi Kami', '', '?module=hubungi', '', '', 'Y', 'user', 'Y', 24, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p>\r\nJl. Kalibata Selatan II/2B\r\n</p>\r\n<p>\r\nJakarta 12740 \r\n</p>\r\n<p>\r\nIndonesia \r\n</p>\r\n<p>\r\nTelp. 021.32972759\r\n</p>\r\n<p>\r\nEmail: <a href=\"mailto:rizal_fzl@yahoo.com\">rizal_fzl@yahoo.com</a> \r\n</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'Rizal Faizal', 'rizal_fzl');

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(23, 'Griyaparfum', 'admin', 'http://griya-parfum.co.cc', '345872griyaparfum_logo.jpg', '2011-06-22'),
(26, 'PT. PELANGI SAMUDERA INTERNATIONAL', 'admin', 'http://www.psimt.net', 'psim.jpg', '2011-09-29'),
(28, 'Penerbit Lokomedia', 'admin', 'http://bukulokomedia.com', '58898lokomedia.jpg', '2012-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(50, 'POP', '', 'pop', '299267pop.jpg', 'Y'),
(49, 'OLD SCHOOL', '', 'old-school', '89854oldschool.jpg', 'Y'),
(51, 'JAZZ', '', 'jazz', '935169jazz.jpg', 'Y'),
(52, 'ROCK', '', 'rock', '50347Rock.jpg', 'Y'),
(55, 'DANGDUT', '', 'dangdut', '689891dangdut.jpg', 'Y'),
(54, 'DANCE', '', 'dance', '986101dance.jpg', 'Y'),
(56, 'WISATA INDONESIA', 'admin', 'wisata-indonesia', '575958indonesiana.jpg', 'Y'),
(57, 'Serba Serbi', 'admin', 'serba-serbi', '733489serbaserbi.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Anda lebih tertarik untuk mengunjungi Pasar Tradisional atau Pasar Modern?', 'Pertanyaan', 'admin', 0, 'Y'),
(26, 'Pasar Tradisional', 'Jawaban', 'admin', 9, 'Y'),
(25, 'Pasar Modern', 'Jawaban', 'admin', 4, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '0000-00-00', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2013-01-22', 1, '1358865974'),
('127.0.0.1', '2013-01-23', 14, '1358913313'),
('127.0.0.1', '2013-01-24', 34, '1359046647'),
('127.0.0.1', '2013-01-25', 21, '1359051663'),
('::1', '2021-12-07', 1, '1638811471'),
('::1', '2021-12-14', 2, '1639449233'),
('::1', '2021-12-21', 2, '1640057452'),
('::1', '2021-12-24', 2, '1640345994'),
('::1', '2021-12-27', 25, '1640614766'),
('::1', '2021-12-29', 27, '1640785317'),
('::1', '2022-01-03', 22, '1641180545'),
('::1', '2022-01-14', 33, '1642168447'),
('::1', '2022-01-16', 62, '1642350569'),
('::1', '2022-01-17', 15, '1642400982');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(30, 'Pendidikan', '', 'pendidikan', 7),
(29, 'Ekonomi', '', 'ekonomi', 7),
(22, 'Hiburan', '', 'hiburan', 16),
(28, 'Teknologi', '', 'teknologi', 8),
(27, 'Metropolitan', '', 'metropolitan', 29),
(26, 'Nasional', '', 'nasional', 38),
(25, 'Kesehatan', '', 'kesehatan', 14),
(24, 'Olahraga', '', 'olahraga', 10),
(23, 'Dunia Islam', '', 'dunia-islam', 40),
(21, 'Kuliner', '', 'kuliner', 17),
(20, 'Komunitas', '', 'komunitas', 2),
(31, 'Politik', '', 'politik', 15),
(32, 'Seni & Budaya', '', 'seni--budaya', 4),
(33, 'Sekitar Kita', '', 'sekitar-kita', 9),
(34, 'Wisata', '', 'wisata', 29),
(35, 'Gaya Hidup', '', 'gaya-hidup', 4),
(36, 'Hukum', '', 'hukum', 13),
(37, 'Film', '', 'film', 24),
(38, 'Musik', '', 'musik', 11),
(39, 'Daerah', '', 'daerah', 23),
(40, 'Internasional', '', 'internasional', 22),
(41, 'Bola', '', 'bola', 19),
(42, 'Televisi', '', 'televisi', 2),
(43, 'Selebritis', '', 'selebritis', 5),
(44, 'Tragedi Tugu Tani', '', 'tragedi-tugu-tani', 3),
(45, 'Pilkada DKI', '', 'pilkada-dki', 0),
(46, 'Tokoh', '', 'tokoh', 0),
(47, 'Piala Eropa', '', 'piala-eropa', 23),
(48, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(12, 'Biru', 'admin', 'Rizal Faizal', 'layout/biru', 'Y'),
(13, 'Merah', 'admin', 'Rizal Faizal', 'layout/merah', 'N'),
(16, 'Hijau', 'admin', 'Rizal Faizal', 'layout/hijau', 'N'),
(17, 'Ungu', 'admin', '', 'layout/ungu', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Rizal Faizal', 'rizal_fzl@yahoo.com', '', '15me_rzl.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('Niken', '08bdba24f01f56d1404fb0a0a66f144b', 'Niken Sulanjari', 'she_peck@yahoo.com', '', '52niken.jpg', 'user', 'N', '5bi6b98a7r02hvh15dsog2vfo2');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(88, '5bi6b98a7r02hvh15dsog2vfo2', 44),
(87, '5bi6b98a7r02hvh15dsog2vfo2', 43),
(102, '5bi6b98a7r02hvh15dsog2vfo2', 34),
(80, '5bi6b98a7r02hvh15dsog2vfo2', 18),
(101, '5bi6b98a7r02hvh15dsog2vfo2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(147, 49, 'admin', 'Taylor Dayne-Tell It To My Heart', 'taylor-daynetell-it-to-my-heart', 'I feel the night explode<br />\r\nWhen we&#39;re together<br />\r\nEmotion overload<br />\r\nIn the heat of pleasure<br />\r\n<br />\r\nTake me I&#39;m yours<br />\r\nInto your arms<br />\r\nNever let me go<br />\r\nTonight I really need to know<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nThe passion&#39;s so complete<br />\r\nIt&#39;s never ending<br />\r\nAs long as I receive<br />\r\nThe message you&#39;re sending<br />\r\n<br />\r\nBody to body<br />\r\nSoul to soul<br />\r\nAlways feel you near<br />\r\nSo say the words I long to hear<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nLove, love on the run<br />\r\nBreakin&#39; us down<br />\r\nThough we keep holdin&#39; on<br />\r\nI don&#39;t want to lose<br />\r\nNo, I can&#39;t let you go<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me from the start<br />\r\nTell it to my heart<br />\r\nTell it to my heart<br />\r\nTell me from the start<br />\r\nTell it to my heart<br />\r\nNever make it stop<br />\r\nOh, take it to the heart<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart\r\n', '831329taylor_dayne.jpg', '', 'http://www.youtube.com/embed/Ud6sU3AclT4', 15, 'Sabtu', '2012-02-04', '12:11:28', ''),
(148, 50, 'admin', 'Shania Twain-Youre Still The One ', 'shania-twainyoure-still-the-one-', 'When I first saw you, I saw love<br />\r\nAnd the first time you touched me, I felt love<br />\r\nAnd after all this time, you&#39;re still the one I love<br />\r\n<br />\r\nLooks like we made it<br />\r\nLook how far we&#39;ve come my baby<br />\r\nWe mighta took the long way<br />\r\nWe knew we&#39;d get there someday<br />\r\n<br />\r\nThey said, &quot;I bet they&#39;ll never make it&quot;<br />\r\nBut just look at us holding on<br />\r\nWe&#39;re still together still going strong<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\n<br />\r\nAin&#39;t nothin&#39; better<br />\r\nWe beat the odds together<br />\r\nI&#39;m glad we didn&#39;t listen<br />\r\nLook at what we would be missin&#39;<br />\r\n<br />\r\nThey said, &quot;I bet they&#39;ll never make it&quot;<br />\r\nBut just look at us holding on<br />\r\nWe&#39;re still together still going strong<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\nYou&#39;re still the one<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\n<br />\r\nI&#39;m so glad we made it<br />\r\nLook how far we&#39;ve come my baby\r\n', '854shania_twain.jpg', '', 'http://www.youtube.com/embed/KNZH-emehxA', 26, 'Sabtu', '2012-02-04', '12:31:16', ''),
(146, 49, 'admin', 'New Kids On The Block-Step by Step', 'new-kids-on-the-blockstep-by-step', 'Step by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, girl<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep, hey girl<br />\r\nIn your eyes, I see a picture of me all the time<br />\r\nStep and girl<br />\r\nWhen you smile, you&#39;ve got to know that you drive me wild<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep, hey girl<br />\r\nCan&#39;t you see, I&#39;ve got to have you all just for me<br />\r\nStep and girl<br />\r\nYes, it&#39;s true, no one else will ever do<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\n<br />\r\nStep, step, step, step by step<br />\r\nStep one<br />\r\nWe can have lots of fun<br />\r\nStep two<br />\r\nThere&#39;s so much we can do<br />\r\nStep three<br />\r\nIt&#39;s just you and me<br />\r\nStep four<br />\r\nI can give you more<br />\r\nStep five<br />\r\nDon&#39;t you know that the time is right<br />\r\n<br />\r\nStep by step<br />\r\nDon&#39;t you know I need you<br />\r\nStep by step<br />\r\nYes, I do, girl<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh girl<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\n', '532379nkotb.jpg', '', 'http://www.youtube.com/embed/ES_kxPkgm9U', 12, 'Sabtu', '2012-02-04', '11:39:50', ''),
(145, 49, 'admin', 'Debbie Gibson - Electric Youth ', 'debbie-gibson--electric-youth-', 'Zappin&#39; it to you, the pressure&#39;s everywhere<br />\r\nGoin&#39; right through you<br />\r\nThe fever&#39;s in the air, oh, yeah, it&#39;s there<br />\r\nDon&#39;t underestimate the power of a lifetime ahead<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\n<br />\r\nWe&#39;ve got the most time to make the world go round<br />\r\nOh, can you spare a dime?<br />\r\nPlace your bet on our sound, come back to town<br />\r\nDon&#39;t lose sight of potential mastermind<br />\r\nRemember when you were young<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs in the hands of itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\n<br />\r\nWe do what comes naturally<br />\r\nYou see now, wait for the possibility<br />\r\nDon&#39;t you see a strong resemblance to yourself?<br />\r\nDon&#39;t you think what we say is important?<br />\r\nWhatever it may be, the fun is gonna start with me<br />\r\nI&#39;m bringing it back<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is, electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electrifying<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs in the hands of itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\nIt&#39;s electric, it&#39;s electric<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation<br />\r\n<br />\r\nInflation, flirtation<br />\r\nRelaxation, elation<br />\r\nGeneration of<br />\r\nAn electric youth\r\n', '952941debbie-gibson.jpg', '', 'http://www.youtube.com/embed/QW9-VGcNZ5M', 23, 'Sabtu', '2012-02-04', '11:03:09', ''),
(143, 49, 'admin', 'A Shoulder To Cry On-Tommy Page', 'a-shoulder-to-cry-ontommy-page', 'Life is full of lots of up and downs,<br />\r\nAnd the distance feels further when you&#39;re headed for the ground,<br />\r\nAnd there is nothing more painful than to let you&#39;re feelings take<br />\r\nyou down,<br />\r\nIt&#39;s so hard to know the way you feel inside,<br />\r\nWhen there&#39;s many thoughts and feelings that you hide,<br />\r\nBut you might feel better if you let me walk with you<br />\r\nby your side,<br />\r\n<br />\r\nAnd when you need a shoulder to cry on,<br />\r\nWhen you need a friend to rely on,<br />\r\nWhen the whole world is gone,<br />\r\nYou won&#39;t be alone, cause I&#39;ll be there,<br />\r\nI&#39;ll be your shoulder to cry on,<br />\r\nI&#39;ll be there,<br />\r\nI&#39;ll be a friend to rely on,<br />\r\nWhen the whole world is gone,<br />\r\nyou won&#39;t be alone, cause I&#39;ll be there.<br />\r\n<br />\r\nAll of the times when everything is wrong<br />\r\nAnd you&#39;re feeling like<br />\r\nThere&#39;s no use going on<br />\r\nYou can&#39;t give it up<br />\r\nI hope you work it out and carry on<br />\r\nSide by side,<br />\r\nWith you till the end<br />\r\nI&#39;ll always be the one to firmly hold your hand<br />\r\nno matter what is said or done<br />\r\nour love will always continue on<br />\r\n<br />\r\nEveryone needs a shoulder to cry on<br />\r\neveryone needs a friend to rely on<br />\r\nWhen the whole world is gone<br />\r\nyou won&#39;t be alone cause I&#39;ll be there<br />\r\nI&#39;ll be your shoulder to cry on<br />\r\nI&#39;ll be there<br />\r\nI&#39;ll be the one you rely on<br />\r\nwhen the whole world&#39;s gone<br />\r\nyou won&#39;t be alone<br />\r\ncause I&#39;ll be there!<br />\r\n<br />\r\nAnd when the whole world is gone<br />\r\nYou&#39;ll always have my shoulder to cry on.... \r\n', '437103tommy_page.jpg', '', 'http://www.youtube.com/embed/UgpQ0H7xwkI', 44, 'Sabtu', '2012-02-04', '10:34:29', ''),
(142, 49, 'admin', 'Like A Prayer - Madonna', 'like-a-prayer--madonna', 'Life is a mystery<br />\r\nEveryone must stand alone<br />\r\nI hear you call my name<br />\r\nAnd it feels like home<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nI hear your voice<br />\r\nIt&#39;s like an angel sighing<br />\r\nI have no choice, I hear your voice<br />\r\nFeels like flying<br />\r\n<br />\r\nI close my eyes<br />\r\nOh God I think I&#39;m falling<br />\r\nOut of the sky, I close my eyes<br />\r\nHeaven help me<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nLike a child<br />\r\nYou whisper softly to me<br />\r\nYou&#39;re in control just like a child<br />\r\nNow I&#39;m dancing<br />\r\n<br />\r\nIt&#39;s like a dream<br />\r\nNo end and no beginning<br />\r\nYou&#39;re here with me it&#39;s like a dream<br />\r\nLet the choir sing<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nLife is a mystery<br />\r\nEveryone must stand alone<br />\r\nI hear you call my name<br />\r\nAnd it feels like home<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\n<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\n<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\nYour voice can take me there<br />\r\nLike a prayer<br />\r\n<br />\r\nJust like a prayer<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a prayer<br />\r\nJust like a prayer, your voice can take me there\r\n', '581115madonna-like-a-prayer.jpg', '', 'http://www.youtube.com/embed/cSVbwwsLPqw', 11, 'Sabtu', '2012-02-04', '10:23:49', ''),
(144, 49, 'admin', 'Milli Vanilli-Baby Dont Forget My Number', 'milli-vanillibaby-dont-forget-my-number', 'Babe, don&#39;t be shy<br />\r\nWhen you&#39;re holding my hand<br />\r\n&#39;Cause this time goes back<br />\r\nYou got to understand it&#39;s you<br />\r\n<br />\r\nBa, ba, ba, baby in your eyes<br />\r\nI see it so clearly that our love, it&#39;s so strong<br />\r\nAnd you never go wrong<br />\r\nI got the best for you so I&#39;m waiting down<br />\r\n<br />\r\nIf you need someone<br />\r\nBaby, call my line<br />\r\nCall me anytime<br />\r\nI&#39;ll be there for you, you, you<br />\r\n<br />\r\nI&#39;ve been searching high, high, high<br />\r\nI&#39;ve been searching low<br />\r\n<br />\r\nBa, ba, ba, ba, baby<br />\r\nDon&#39;t forget my number<br />\r\nBaby, don&#39;t be stronger than a thunder<br />\r\nBa, ba, ba, ba, baby<br />\r\nDon&#39;t forget my number<br />\r\nLove will see you through<br />\r\n<br />\r\nI&#39;ve been searching high<br />\r\nI&#39;ve been searching low<br />\r\n<br />\r\nI want to spend spend my life with you<br />\r\nBa, ba, ba, ba, ba, ba, ba, ba<br />\r\nMy desper youth<br />\r\nBa, ba, ba, ba, ba, ba, ba, ba<br />\r\nLove will see you through<br />\r\n<br />\r\nBa, ba, baby in your eyes<br />\r\nI see it so clearly\r\n', '447998milli-vanilli.jpg', '', 'http://www.youtube.com/embed/saPp0jr7Go0', 28, 'Sabtu', '2012-02-04', '10:44:56', ''),
(140, 49, 'admin', 'Forever Young - Alphaville', 'forever-young--alphaville', 'Lets dance in style, lets dance for a while.<br />\r\nHeaven can wait were only watching the skies.<br />\r\nHoping for the best but expecting the worst.<br />\r\nAre you gonna drop the bomb or not?<br />\r\n<br />\r\nLet us die young or let us live forever.<br />\r\nWe dont have the power but we never say never.<br />\r\nSitting in a sandpit, life is a short trip.<br />\r\nThe music&#39;s for the sad men.<br />\r\n<br />\r\nCan you imagine when this race is won.<br />\r\nTurn our golden faces into the sun.<br />\r\nPraising our leaders were getting in tune.<br />\r\nThe musics played by the madmen.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? for ever young.<br />\r\n<br />\r\nSome are like water, some are like the heat.<br />\r\nSome are a melody and some are the beat.<br />\r\nSooner or later they all will be gone.<br />\r\nWhy dont they stay young?<br />\r\n<br />\r\nIts so hard to get old without a cause.<br />\r\nI dont want to perish like a fading horse.<br />\r\nYouth is like diamonds in the sun.<br />\r\nAnd diamonds are forever.<br />\r\n<br />\r\nSo many adventures couldnt happen today.<br />\r\nSo many songs we forgot to play.<br />\r\nSo many dreams are swinging out of the blue.<br />\r\nWe let them come true.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever.\r\n', '976013alphaville-forever-young.jpg', '', 'http://www.youtube.com/embed/t1TcDHrkQYg', 27, 'Sabtu', '2012-02-04', '09:03:23', ''),
(149, 50, 'admin', 'Meja - All About The Money', 'meja--all-about-the-money', 'Some times I find another world inside my mind\r\nWhen I realize all the crazy things we do\r\nIt makes me feel ashamed to be alive\r\nI wanna run away and hide\r\nIt&#39;s all about the money, it&#39;s all about the dum dum\r\nAnd I don&#39;t think it&#39;s funny to see us fade away\r\nIt&#39;s all about the money, it&#39;s all about the\r\nI think we got it all wrong anyway\r\nStrange ways of showing how much we really care\r\nWhen in face we don&#39;t seem to care at all\r\nThis pretty world is getting out of hand\r\nSo how come we fail to understand?\r\nIt&#39;s all about the money, it&#39;s all about the dum dum\r\nAnd I don&#39;t think it&#39;s funny to see us fade away\r\nIt&#39;s all about the money, it&#39;s all about the\r\nI think we got it all wrong anyway\r\n', '793426meja.jpg', '', 'http://www.youtube.com/embed/YcXMhwF4EtQ', 100, 'Sabtu', '2012-02-04', '13:04:19', ''),
(156, 56, 'admin', 'Pasar Gede Solo', 'pasar-gede-solo', '<span style=\"font-family: Arial, serif; font-size: 12px\">Pasar Gede Hardjonagoro menjadi destinasi wisata Solo selanjutnya. Sama seperti halnya Pasar Klewer, Pasar Gede ini termasuk salah satu pasar tua di Solo. Bahkan, lebih tua dibandingkan Pasar Klewer.</span><span style=\"margin: 0px; padding: 0px; font-family: Arial, serif; font-size: 12px\"><br />\r\n</span><span style=\"color: #64166e; font-family: Arial, Helvetica, sans-serif; font-size: 14px\">Alamat: Desa Sudiroprajan, Kecamatan Jebres, Kota Surakarta</span>\r\n', '474468Screenshot (1331).png', '338739videoplayback (7).mp4', 'https://www.youtube.com/embed/-YYgmQ7tiS4', 11, 'Kamis', '2012-11-22', '23:33:29', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
