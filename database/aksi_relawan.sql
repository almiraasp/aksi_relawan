-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2026 at 05:49 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksi_relawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alasan` text NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `id_user`, `nama`, `email`, `alasan`, `tanggal_daftar`) VALUES
(1, 7, 'arneu raysa', 'arneuraysa@gmail.com', 'qawsedhjwerty', '2025-06-12 16:42:32'),
(2, 7, 'arneu raysa', 'arneuraysa@gmail.com', 'bsbbjquj', '2025-06-14 03:48:51'),
(3, 8, 'raisa', 'raisa@gmail.com', 'halo', '2026-01-07 05:37:46'),
(4, 8, 'raisa', 'raisa@gmail.com', 'asdfghnjm', '2026-01-07 05:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `donasi`
--

CREATE TABLE `donasi` (
  `id` int NOT NULL,
  `id_user` int UNSIGNED DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nominal` int NOT NULL,
  `metode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donasi`
--

INSERT INTO `donasi` (`id`, `id_user`, `nama`, `email`, `nominal`, `metode`) VALUES
(1, NULL, 'arneu raysa', 'arneuraysa@gmail.com', 50000, 'transfer_bank'),
(2, NULL, 'arneu raysa', 'arneuraysa@gmail.com', 60000, 'e-wallet'),
(3, NULL, 'arneu raysa', 'arneuraysa@gmail.com', 6757688, 'kartu_kredit'),
(4, NULL, 'arneu raysa', 'arneuraysa@gmail.com', 345678, 'transfer_bank'),
(5, NULL, 'arneu raysa', 'arneuraysa@gmail.com', 500000, 'transfer_bank'),
(6, NULL, 'raisa', 'raisa@gmail.com', 5000000, 'transfer_bank'),
(7, NULL, 'raisa', 'raisa@gmail.com', 567890, 'transfer_bank');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `judul`, `tanggal`, `lokasi`, `gambar`) VALUES
(6, 'MOMBEE', '2025-07-03', 'Kota palembang', '8462990dbc2be789ed33420a32356ac9.jpeg'),
(7, 'Gabung Menjadi BBSquad', '2025-07-01', 'Kota Bandung', '45b570ac1a0cc8f98f3a8d9b2238c2c2.jpg'),
(8, 'Kampanye Bebaskan Anak dari Masalah Kesehatan Jiwa', '2025-07-10', 'Yogyakarta', '9719fcbe13c2ec2e0d8f506bc6bc368c.jpg'),
(9, 'Clean up Trash Hero Jakarta ke-195', '2025-06-15', 'Jakarta Pusat', '05a59eff99f456d5df4754b7866fc9a1.jpg'),
(10, 'coba', '2025-06-14', 'bandung', 'd7cd92b30050fcbd9e87cd5c65b29c6c.png');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(2, 'Donasi', 'Donasi sekarang', 'Tingkatkan dampak program sosial lewat dukungan donasi dan bantuan dana!', '2025-06-07 15:44:22'),
(3, 'Jadi Relawan', 'Daftar Sekarang', 'Ayo jadi bagian dari perubahan! Gabung sebagai relawan dan buat dampak nyata', '2025-06-07 15:40:59'),
(4, 'Aktivitas Relawan', 'Cari Aktivitas', '<font face=\"Arial\">Ingin mulai berkontribusi sebagai relawan? Temukan aktivitas yang sesuai dengan minat dan keahlianmu!</font>', '2025-06-07 15:38:15'),
(5, 'Platform terdepan untuk menjelajahi dunia kerelawanan dan kegiatan sosial.', 'Cari Aktivitas', '<div>Dengan partisipasi yang lebih besar, dampak positif yang dihasilkan juga semakin kuat. Ragam aktivitas tersedia untuk kamu yang ingin turut membawa perubahan.</div>', '2025-06-07 15:32:23'),
(6, 'home, halaman 2', 'bagian judul', 'Kenali Layanan Aksi Relawan', '2025-06-07 15:25:49'),
(7, 'statistik3', '78,244', 'Donasi', '2025-06-07 15:20:43'),
(8, 'statistik2', '28,922', '<p>Aktivitas</p>', '2025-06-07 15:19:00'),
(9, 'statistik 1', '111,221', '<p>Relawan</p>', '2025-06-07 15:16:38'),
(10, 'Relawan, Pahlawan Masa Kini', 'Wujudkan kepedulianmu lewat aksi nyata hari ini', 'Cari Aktivitas', '2025-06-07 15:09:53'),
(11, 'gambar banner', 'banner home, halaman 1', '<p><img src=\"../img/85d8ce590ad8981ca2c8286f79f59954.09\" style=\"width: 735px;\"><br></p>', '2025-06-12 04:51:58'),
(12, 'gambar logo web', 'navbar', '<p><img src=\"../img/a97da629b098b75c294dffdc3e463904.png\" style=\"width: 1024px;\"></p>', '2025-06-07 16:53:06'),
(13, '4 Aktivitas Butuh Bantuan Kamu', 'Pilih aktivitas kerelawanan sesuai minat, lokasi, dan isu yang kamu sukai', 'Event', '2025-06-13 19:47:23'),
(14, 'gambar', 'testimoni 1', '<p><img src=\"../img/1d7f7abc18fcb43975065399b0d1e48e.41\" style=\"width: 1054px;\"><br></p>', '2025-06-13 05:37:10'),
(15, 'gambar', 'testimoni 2', '<p><img src=\"../img/2a79ea27c279e471f4d180b08d62b00a.41\" style=\"width: 620px;\"><br></p>', '2025-06-13 05:40:47'),
(16, 'gambar', 'testimoni 3', '<p><img src=\"../img/3988c7f88ebcb58c6ce932b957b6f332.41\" style=\"width: 975px;\"><br></p>', '2025-06-13 05:41:39'),
(17, 'testimoni 1', 'teks', '<p>Aksi Relawan sangat membantu Komunitas Belajar Mandiri dalam menjangkau relawan yang memiliki semangat tinggi di bidang pendidikan alternatif. Dengan dukungan relawan dari berbagai daerah, kini kami bisa memperluas program kelas gratis untuk anak-anak dari keluarga prasejahtera. Kami juga terbantu dalam penyebaran informasi lewat fitur-fitur Aksi Relawan.</p>', '2025-06-13 05:53:11'),
(18, 'testimoni 2', 'teks', '<p>Melalui Aksi Relawan, kami berhasil menjangkau relawan yang peduli terhadap isu lingkungan dan konservasi alam. Kami bisa lebih mudah mengadakan kegiatan bersih-bersih pantai dan edukasi lingkungan di sekolah-sekolah. Platform ini menjadi jembatan besar antara komunitas kami dan masyarakat luas yang ingin terlibat aktif dalam aksi lingkungan.</p>', '2025-06-13 06:05:31'),
(19, 'testimoni 3', 'teks', '<div>Aksi Relawan memudahkan kami menemukan relawan berbakat di bidang seni dan budaya. Berkat mereka, acara-acara seni komunitas kami menjadi lebih hidup dan interaktif. Kolaborasi yang terjalin juga membantu meningkatkan eksposur kegiatan kami di media sosial dan memperluas jaringan dengan komunitas lain di seluruh Indonesia.</div>', '2025-06-13 05:58:57'),
(20, 'Testimoni', 'Mereka yang pernah menggunakan Aksi Relawan', '<p>asdfghjk</p>', '2025-06-13 06:00:22'),
(21, 'Komunitas Belajar Mandiri', 'Sahabat Alam Nusantara', 'Komunitas Kreatif Kita', '2025-06-13 06:03:06'),
(22, 'Panduan untuk Relawan', 'Sudah mengerti tahapannya?', '<p>Cari Aktivitas</p>', '2025-06-13 06:18:02'),
(23, '1. Buat Akun Relawan', 'Mulailah perjalananmu sebagai relawan dengan membuat akun. Cukup daftar dan pilih jenis akun relawan untuk mulai terhubung dengan komunitas.', '<p>asdfghjklqwertyui</p>', '2025-06-13 06:20:04'),
(24, '2. Lengkapi Informasi Profil', 'Isi profilmu dengan detail yang jelas agar organisasi lebih mudah mengenal minat dan keahlianmu. Profil yang lengkap meningkatkan peluangmu diterima.', '<p>asdfghjklwertyuio</p>', '2025-06-13 06:21:34'),
(25, '3. Jelajahi Aktivitas', 'elusuri berbagai kegiatan, baik daring maupun luring, yang sesuai dengan minat, lokasi, waktu, dan nilai sosialmu. Banyak pilihan yang bisa kamu ikuti kapan pun!', '<p>asdfghjklqwertyuio</p>', '2025-06-13 06:23:02'),
(26, '4. Mendaftar Aktivitas', 'Jika sudah menemukan kegiatan yang pas, tekan tombol “Jadi Relawan” dan isi formulir yang tersedia. Pantau status aplikasimu lewat menu pesan yang tersedia.', '<p>asdfghjklqwertyuiop</p>', '2025-06-13 06:25:50'),
(27, '5. Sebarkan Dampakmu', 'etelah berkontribusi, kamu bisa mendapatkan testimoni dan badge dari organisasi. Bagikan pengalamanmu di media sosial agar makin banyak orang yang terinspirasi ikut terlibat.', '<p>asdfghjklqwertyuio</p>', '2025-06-13 06:26:36'),
(28, 'Tentang Aksi Relawan', 'Baca lebih lanjut mengenai visi misi sosial kami', '<p>Aksi Relawan adalah sebuah platform nirlaba berbasis daring yang menghubungkan relawan dengan berbagai organisasi sosial yang membutuhkan bantuan tangan sukarela. Kami percaya bahwa semangat kerelawanan bisa menjadi bagian dari gaya hidup masyarakat modern yang peduli dan aktif dalam perubahan sosial. Kami ingin membuat kegiatan sosial menjadi sesuatu yang inklusif, menyenangkan, serta mudah diakses oleh siapa saja, tanpa batasan usia, latar belakang, atau lokasi geografis.</p>', '2025-06-13 08:36:11'),
(29, 'Tentang Aksi Relawan', 'hagdgwuigwhiqu', '<p>Platform ini hadir untuk menjawab tantangan keterbatasan informasi dan akses yang sering dihadapi oleh calon relawan maupun organisasi sosial. Dengan teknologi, kami membuka jembatan penghubung yang efisien&nbsp; antara dua pihak yang memiliki semangat yang sama dalam menciptakan perubahan positif.</p>', '2025-06-13 08:43:26'),
(30, 'Tentang Relawan', 'teks', '<p>Tujuan utama kami adalah menciptakan ruang kolaborasi yang berkelanjutan antara relawan dan komunitas yang bergerak di bidang sosial, agar dampaknya tidak hanya terasa sesaat, tetapi juga meninggalkan kontribusi jangka panjang. Melalui AksiRelawan.org, kami berharap semakin banyak individu yang terdorong untuk terlibat aktif, menginspirasi sesama, dan bersama-sama membangun ekosistem kerelawanan yang kuat di Indonesia.</p>', '2025-06-13 08:45:40'),
(31, 'Tentang Relawan', 'teks', '<p>Tujuan utama kami adalah menciptakan ruang kolaborasi yang berkelanjutan antara relawan dan komunitas yang bergerak di bidang sosial, agar dampaknya tidak hanya terasa sesaat, tetapi juga meninggalkan kontribusi jangka panjang. Melalui AksiRelawan.org, kami berharap semakin banyak individu yang terdorong untuk terlibat aktif, menginspirasi sesama, dan bersama-sama membangun ekosistem kerelawanan yang kuat di Indonesia.</p>', '2025-06-13 08:45:50'),
(32, 'Visi Aksi Relawan', 'Menumbuhkan semangat kolaborasi sosial sebagai bagian dari kehidupan generasi muda Indonesia.', 'Baca Selengkapnya', '2025-06-13 08:52:24'),
(33, 'Misi Aksi Relawan', 'Membuka Akses Aksi Baik', '<p data-pm-slice=\"1 1 []\">Membangun ruang digital yang mempertemukan relawan dengan kegiatan sosial secara mudah, cepat, dan relevan dengan minat mereka.</p>', '2025-06-13 09:00:33'),
(34, 'Menghidupkan Semangat Gotong Royong', 'Menginspirasi anak muda untuk aktif dalam gerakan sosial melalui kampanye publik dan kolaborasi lintas komunitas.', '<p>asdfghjkl</p>', '2025-06-13 09:03:30'),
(35, 'Mendukung Kemajuan Organisasi Sosial', 'Menyediakan pelatihan dan pendampingan agar organisasi sosial dapat mengelola relawan dengan efektif dan memperluas dampak sosial mereka.', '<p>asdfghjkl</p>', '2025-06-13 09:05:43'),
(36, 'Donasi Sekarang!', '\"Jadilah Alasan Seseorang Tersenyum Hari Ini\"', 'Aksirelawan.org', '2025-06-13 09:51:03'),
(37, 'donasi', 'asdfghjk', '<div>Aksirelawan.org adalah platform yang menjembatani relawan dan organisasi sosial melalui dukungan dari donatur individu. Kami menyediakan layanan tanpa biaya untuk mendukung berbagai kegiatan sosial, seperti memberikan pendidikan bagi anak-anak yang kurang mampu, pelestarian lingkungan, hingga penguatan kesetaraan hak dan keadilan sosial.</div>', '2025-06-13 09:57:38'),
(38, 'Mengapa Kami Membutuhkan Dukunganmu?', 'Kami telah Memberikan Dampak Kepada:', '<p>Dukungan dari Anda sangat penting agar Aksirelawan.org dapat terus beroperasi dan memberikan layanan bagi masyarakat luas. Bantuan Anda memungkinkan kami menyediakan platform yang mempertemukan relawan dan organisasi sosial untuk berkolaborasi dalam berbagai misi kemanusiaan. Donasi Anda adalah bagian dari solusi untuk menciptakan perubahan yang berdampak positif dan berkelanjutan.</p>', '2025-06-13 10:00:17'),
(39, '111,221', 'Relawan Terhubung', '<p>asdfghjklk</p>', '2025-06-13 10:04:28'),
(40, '28,922', 'Aktivitas Sosial', 'asdfghjkl', '2025-06-13 10:06:34'),
(41, '78,224', 'Donasi', '<p>asdfghjkzxcvbnm</p>', '2025-06-13 10:08:11'),
(42, 'Donatur Aksirelawan.org', 'Donasi Sekarang', '<p>xcvbnmtyuio</p>', '2025-06-13 10:09:59'),
(43, 'Aksirelawan.org', 'Syarat dan Ketentuan', '<p>Aksi Relawan berkomitmen menjaga privasi pengguna dan menyediakan pengalaman online yang aman serta nyaman. Ketentuan Penggunaan ini mengatur pengumpulan data secara digital serta kebijakan penggunaan untuk situs www.aksirelawan.org (“Situs”).</p>', '2025-06-13 10:15:00'),
(44, 'syarat', 'Perlu diketahui bahwa penggunaan layanan dan situs ini tunduk pada Kebijakan Privasi yang tersedia  melalui situs resmi kami.', '<p>Dengan mengakses dan memakai situs ini, Anda dianggap telah menyetujui Kebijakan Privasi dan Ketentuan Penggunaan tanpa pengecualian. Jika Anda tidak menyetujuinya, mohon untuk tidak menggunakan layanan ini. Kami memiliki hak untuk membatasi atau menghentikan akses apabila terjadi pelanggaran terhadap ketentuan atau kebijakan kami.</p>', '2025-06-13 12:50:50'),
(45, 'syarat', 'Tanggung Jawab Relawan', '<p>Setiap relawan bertanggung jawab atas perilaku pribadi mereka selama menggunakan layanan situs, termasuk saat mendaftar dan berinteraksi dengan organisasi sosial. Aksi Relawan tidak memikul tanggung jawab atas interaksi yang dilakukan relawan dengan organisasi mitra.</p>', '2025-06-13 12:52:37'),
(46, 'syarat', 'Tanggung Jawab Organisasi Sosial', '<p>organisasi sosial yang menggunakan layanan ini bertanggung jawab atas isi dan informasi yang mereka sampaikan. Mereka juga bertanggung jawab atas proses seleksi relawan secara mandiri karena Aksi Relawan hanya menyediakan akses pertemuan antara relawan dan organisasi.</p>', '2025-06-13 12:55:34'),
(47, 'syarat', 'asdfghjk', '<p>Apabila organisasi melibatkan relawan anak atau kegiatan bersama anak-anak, kami menyarankan adanya perlindungan anak yang sesuai. Tanggung jawab atas hal ini sepenuhnya ada pada organisasi terkait.</p>', '2025-06-13 12:57:43'),
(48, 'syarat', 'sdfghjk', '<p>Aksi Relawan berupaya menciptakan hubungan yang saling menghormati antara relawan dan organisasi sesuai nilai etika dan hukum demi mendukung keberhasilan kegiatan kerelawanan.</p>', '2025-06-13 12:59:10'),
(49, 'syarat', 'Kesepakatan antara Relawan dan Organisasi', '<p>Segala bentuk kesepakatan antara relawan dan organisasi berada di luar tanggung jawab Aksi Relawan. Kami hanya menjadi penghubung antara kedua pihak dalam kegiatan sosial.</p>', '2025-06-13 13:00:49'),
(50, 'kebijakan', 'Aksirelawan.org', 'Kebijakan Privasi', '2025-06-13 13:13:16'),
(51, 'kebijakan', '1', '<p>Aksi Relawan memiliki komitmen tinggi dalam menjaga kerahasiaan data pribadi Anda. Kami berupaya semaksimal mungkin untuk menciptakan pengalaman yang aman dan nyaman bagi semua pengguna situs www.aksirelawan.org (“Situs”). Dokumen ini menjelaskan bagaimana kami mengelola informasi yang dikumpulkan secara online serta bagaimana informasi tersebut digunakan. Harap diperhatikan bahwa penggunaan Anda atas situs ini juga tunduk pada Syarat Penggunaan, yang dapat diakses melalui tautan yang tersedia di situs kami. Dengan mengakses dan menggunakan situs ini, Anda dianggap menyetujui seluruh kebijakan ini. Bila tidak setuju, mohon tidak melanjutkan penggunaan situs.</p>', '2025-06-13 13:15:49'),
(52, 'kebijakan', '2', '<p>Kebijakan ini berlaku untuk seluruh data yang Anda kirimkan melalui situs Aksi Relawan. Kami tidak bertanggung jawab atas kebijakan privasi dari situs eksternal yang terhubung ke situs kami. Kami mengumpulkan dua jenis informasi: informasi identitas pribadi (IIP) seperti nama dan email, serta informasi non-pribadi (non-IIP) seperti jenis perangkat dan lokasi pengguna. Pengumpulan data dilakukan melalui formulir pendaftaran, cookies, file log, serta integrasi layanan lain. Cookies memungkinkan kami menyimpan preferensi Anda untuk pengalaman yang lebih personal. Anda bisa menonaktifkan cookies lewat pengaturan browser.</p>', '2025-06-13 13:17:11'),
(53, 'kebijakan', '3', '<p>Data Anda kami gunakan untuk menyempurnakan layanan kami, mencocokkan Anda dengan relawan atau organisasi yang sesuai, serta untuk keperluan administratif dan pengembangan situs. Informasi yang dikumpulkan juga bisa kami manfaatkan untuk memperbaiki konten dan navigasi situs. Selain itu, data Anda tidak akan dijual atau dibagikan tanpa izin, kecuali untuk penyedia layanan terkait atau jika diwajibkan oleh hukum. Kami juga dapat mengungkapkan data kepada penegak hukum bila diperlukan.</p>', '2025-06-13 13:18:24'),
(54, 'kebijakan', '4', '<p>Anda dapat memperbarui atau menghapus data Anda kapan saja dengan mengakses akun Anda. Untuk permintaan penghapusan total, silakan kirim email ke kontak@aksirelawan.org. Pengguna situs ini harus berusia 13 tahun ke atas. Organisasi yang melibatkan anak di bawah usia 18 tahun harus memiliki kebijakan perlindungan anak yang memadai. Kami mengambil langkah-langkah wajar untuk melindungi data Anda, namun kami tidak bisa menjamin keamanan 100%. Jika terjadi pelanggaran, kami akan memberitahu Anda melalui email atau pengumuman di situs.</p>', '2025-06-13 13:19:30'),
(55, 'kebijakan', '5', 'Situs ini dikelola dari Indonesia. Dengan mengakses situs dari luar negeri, Anda menyetujui bahwa data Anda akan diproses di Indonesia, yang mungkin memiliki standar perlindungan data berbeda dari negara Anda. Jika Anda ingin menghapus semua data yang tersimpan, silakan kirimkan permintaan ke kontak@aksirelawan.org dan kami akan memprosesnya secepat mungkin. Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Perubahan akan diumumkan melalui situs dan berlaku sejak dipublikasikan. Dengan tetap menggunakan situs setelah perubahan, Anda dianggap menyetujui versi terbaru dari kebijakan ini.', '2025-06-13 13:20:58'),
(56, 'gambar', 'tentang', '<p><img src=\"../img/f7e6c85504ce6e82442c770f7c8606f0.09\" style=\"width: 1054px;\"><br></p>', '2025-06-13 13:23:49'),
(57, 'gambar', 'donasi', '<p><img src=\"../img/d1f491a404d6854880943e5c3cd9ca25.29\" style=\"width: 735px;\"><br></p>', '2025-06-13 13:29:52'),
(58, 'gambar', 'footer', '<p><img src=\"../img/9872ed9fc22fc182d371c3e9ed316094.39\" style=\"width: 700px;\"><br></p>', '2025-06-13 13:41:01'),
(59, 'gambar', 'footer2', '<p><img src=\"../img/0e65972dce68dad4d52d063967f0a705.46\" style=\"width: 736px;\"><br></p>', '2025-06-13 13:47:12'),
(60, 'gambar', 'event 4', '<p><img src=\"../img/c45147dee729311ef5b5c3003946c48f.jpg\" style=\"width: 960px;\"><br></p>', '2025-06-13 14:48:19'),
(61, 'gambar', 'event 1', '<p><img src=\"../img/202cb962ac59075b964b07152d234b70.jpeg\" style=\"width: 640px;\"><br></p>', '2025-06-13 15:06:57'),
(62, 'gambar', 'event 2', '<p><img src=\"../img/2a79ea27c279e471f4d180b08d62b00a.jpg\" style=\"width: 960px;\"><br></p>', '2025-06-13 15:27:13'),
(63, 'gambar', 'event 3', '<p><img src=\"../img/4c5bde74a8f110656874902f07378009.jpg\" style=\"width: 1054px;\"><br></p>', '2025-06-14 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subyek` varchar(150) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal_kirim` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subyek`, `pesan`, `tanggal_kirim`, `id_user`) VALUES
(1, 'arneu raysa', 'arneuraysa@gmail.com', 'coba', 'coba coba', '2025-06-12 15:28:15', NULL),
(2, 'arneu raysa', 'arneuraysa@gmail.com', 'coba', 'werdfghjksxdcfvgbhnjj', '2025-06-12 16:04:22', NULL),
(3, 'arneu raysa', 'arneuraysa@gmail.com', 'coba', 'qwerhjkwertyuiocvbnm', '2025-06-12 16:04:47', NULL),
(4, 'arneu raysa', 'arneuraysa@gmail.com', 'vbnn', 'dfghj', '2025-06-14 03:51:11', NULL),
(5, 'raisa', 'raisa@gmail.com', 'ghnj', 'hsaduigiuqwg', '2026-01-07 05:07:23', NULL),
(6, 'raisya', 'raisya@gmail.com', 'raisya', 'fvgbhnj', '2026-01-07 05:39:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'arneu', 'arneu@gmail.com', '$2y$10$1biFwyq7Nprzimtbn0jk/uUjOo5r4NY/jAXQZpa7QJGxA5ehkhygO'),
(2, '', '', '$2y$10$nf4UnJnxmhOe0VpdeVwqD.AGZxCKxuYWYwLJr9lNY73SINxPuV5k.'),
(3, 'LUNA AGUSTINA', 'lunaf2@gmail.com', '$2y$10$HP8AgOjDPdZ6ZQJv8d.9He0wgoULQiYPEJRXNd9nS0WYldvAyUQ5K'),
(4, 'Ingga Fajri Nur Ismail', 'inggatm@gmail.com', '$2y$10$3AnCnfE6ZkFXHENswJtzWe0E8aMBYNYsxr.2x7JI5sV45UFHPgv0m'),
(5, 'fitiri', 'fitirianidewinur@gmail.com', '$2y$10$VXdq7EdptjUuqmUrZq/lWukGyYTvVfJDXQefSSMm7xGusDLEz436G'),
(6, 'Arneu Raisya', 'arneuraisyaa@gmail.com', '$2y$10$GmKtptwInh9izRoDY4fREusxtlNO/pPa6DPEUoBQQFQ/6TyZe7zMC'),
(7, 'arneu raysa', 'arneuraysa@gmail.com', '$2y$10$YwVIUulrW07jBcpHyPBPwuPWrV9Zr1ClxXwl8SGCorBSHCcXudL0W'),
(8, 'Raisya', 'raisya@gmail.com', '$2y$10$mPrkM8DyiuSlQlRR.zcur.oTz8oGDAvhRPpyuQO4QVkDMorJZYChW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kontak_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `fk_aktivitas_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donasi`
--
ALTER TABLE `donasi`
  ADD CONSTRAINT `fk_donasi_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kontak`
--
ALTER TABLE `kontak`
  ADD CONSTRAINT `fk_kontak_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
