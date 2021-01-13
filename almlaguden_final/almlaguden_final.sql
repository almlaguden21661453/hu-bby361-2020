-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Oca 2021, 09:58:44
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `almlaguden_final`
--
CREATE DATABASE IF NOT EXISTS `almlaguden_final` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `almlaguden_final`;

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `eserler`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `eserler` (
`eserKayitNo` int(11)
,`eserKayitTarihi` timestamp
,`eserAdi` varchar(50)
,`eserBasimYili` year(4)
,`eserISBN` varchar(15)
,`yazarNo` int(11)
,`yayineviNo` int(11)
,`eserAciklama` text
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `eserKayitNo` int(11) NOT NULL COMMENT 'eserin sisteme kayıt olduğu esnada otomatik verilen kayıt numarası. ',
  `eserISBN` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Veritabanına kaydedilen kitaba ait ISBN bilgisini içerir.',
  `eserKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'eserin sisteme kayıt olduğu tarih.',
  `eserAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'esere ait tam ad bilgisi.',
  `eserBasimYili` year(4) NOT NULL COMMENT 'esere ait basım yılı bilgisini içerir.',
  `yazarNo` int(11) NOT NULL COMMENT 'sisteme kaydedilen yazarlara ait kayıt numarası bilgisidir.',
  `yayineviNo` int(11) NOT NULL COMMENT 'sisteme kaydedilen yayınevlerine ait kayıt numarası bilgisidir.',
  `eserAciklama` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'sistemdeki kayıtlı eserlere ait açıklama alanıdır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`eserKayitNo`, `eserISBN`, `eserKayitTarihi`, `eserAdi`, `eserBasimYili`, `yazarNo`, `yayineviNo`, `eserAciklama`) VALUES
(1, ' 9786053759584', '2021-01-06 08:03:25', 'Ben Kirke', 2019, 1, 1, 'Tek kelimeyle büyüleyici ve zarif anlatımıyla Ben, Kirke, kadın yaşamının sıradan ve de sıradışı bir hikâyesi.'),
(2, '9789750718533', '2021-01-06 08:03:25', '1984', 2021, 2, 2, 'Geçmişi kontrol eden, geleceği kontrol eder. Şimdiki zamanı kontrol eden, geçmişi kontrol eder.'),
(3, '9789750726439', '2021-01-06 08:03:25', 'Simyacı', 2010, 3, 3, 'Gezgin olma isteğiyle çobanlık yapmaya başlayan Santiago, uzun bir müddet yalnızca koyunlarının onu götürdüğü yöne gidiyor.'),
(4, '9789751412874', '2021-01-06 08:03:25', 'Günahın 3 Rengi', 2008, 4, 4, 'Genç ve yakışıklı bir gencin mazoşizmin acısıyla renklenmiş dünyası... Bu acıdan alınan haz, ölüme yaklaştıkça hissedilen doyum…'),
(5, '9789751418609', '2021-01-06 08:03:25', 'Beyaz Zambaklar Ülkesinde', 2018, 5, 2, 'İsveç\'in hâkimiyetinden çıkarak görece daha ılıman Rus egemenliği altına giren Finlandiya halkının omuz omuza vererek kendi ulusal kimliklerini bulmaya çalışmalarına tanık olacak ve bu halkın, ülkesini daha ileriye taşıyacak nitelikte yeniliklere imza atan şahsiyetleriyle tanışacaksınız.'),
(6, '9789754582901', '2021-01-06 08:03:25', 'Sineklerin Tanrısı', 2006, 6, 5, 'Kitap, II. Dünya Savaşı’nda yaşanan nükleer atom bombası etkisinden korunmak için Britanyalı bir grup çocuğun, uçak ile taşınmasını konu alarak başlıyor. Söz konusu uçak varmak istediği noktaya gidemeden, ıssız bir adaya düşünce hayatta kalan çocukların yaşam mücadelesi başlamış oluyor.'),
(7, '9786052957929', '2021-01-06 08:03:25', 'Otomatik Portakal', 2019, 7, 5, 'Tüm hayvanların en zekisi, iyiliğin ne demek olduğunu bilen insanoğluna bir baskı yöntemi uygulayarak onu otomatik işleyen bir makine haline getirenlere kılıç kadar keskin olan kalemimle saldırmaktan başka hiçbir şey yapamıyorum…'),
(8, '9789753638036', '2021-01-06 08:03:25', 'İçimizdeki Şeytan', 2016, 8, 6, 'İsteyip istemediğimi doğru dürüst bilmediğim, fakat neticede aleyhime çıkarsa istemediğimi iddia ettiğim bu nevi söz ve fiillerimin daimi bir mesulünü bulmuştum.'),
(9, '9789750739170', '2021-01-06 08:03:25', 'Dorian  Gray\'in Portresi', 2018, 9, 3, 'Dorian Gray son derece yakışıklı genç bir adamdır. Arkadaşı ressam Basil Hallward, genç adamın güzelliğinden öylesine etkilenir ki bir portresini yapar.'),
(10, '9789750835605', '2021-01-06 08:03:25', 'Kırmızı Saçlı Kadın', 2016, 10, 6, 'Cem ve annesi, maddi sorunlarından dolayı Adapazarı’na yerleşmek durumunda kalıyor. Romanın odak noktasını oluşturan olaylar ise burada başlıyor.');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste` (
`eserAdi` varchar(50)
,`AdSoyad` mediumtext
,`YayineviAdi` varchar(200)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevine siteme kayıt olduğu sırada verilen kayıt numarasıdır.',
  `yayineviKayitTarihi` time NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevinin sisteme kayıt olduğu tarihi belirtir.',
  `yayineviAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi adı bilgisi yer alır.',
  `yayineviURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait URL bilgisi yer alır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviKayitNo`, `yayineviKayitTarihi`, `yayineviAdi`, `yayineviURL`) VALUES
(1, '10:59:12', 'İthaki Yayınları', 'http://www.ithaki.com.tr/'),
(2, '10:59:12', 'İndigo Kitap', 'https://www.indigodukkan.com/'),
(3, '11:00:10', 'Can Yayınları', 'https://canyayinlari.com/'),
(4, '11:00:10', 'Remzi Kitabevi', 'http://www.remzi.com.tr/anasayfa'),
(5, '11:01:51', 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/'),
(6, '11:01:51', 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayitNo` int(11) NOT NULL COMMENT 'Yazar sisteme kayıt olurken yazara verilen kayıt numarasıdır.',
  `yazarKayitTarihi` time NOT NULL DEFAULT current_timestamp() COMMENT 'Yazarın sisteme kayıt olduğu tarih bilgisi verilir.',
  `yazarAdi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar adı bilgisi verilir.',
  `yazarSoyadi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar soyadı bilgisi verilir.',
  `yazarURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazara ait URL bilgisine yer verilir. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayitNo`, `yazarKayitTarihi`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '11:08:53', 'Madeline', 'Miller', 'http://madelinemiller.com/'),
(2, '11:08:53', 'George', 'Orwell', 'https://tr.wikipedia.org/wiki/George_Orwell'),
(3, '11:15:45', 'Paulo ', 'Coelho', 'https://paulocoelhoblog.com/'),
(4, '11:15:45', 'Gülseren ', 'Budayıcıoğlu', 'https://web.audioteka.com/tr/cycle/06e070df-05c5-407f-93f6-b511bc5d7145&_src=topMain'),
(5, '11:20:00', 'Grigoriy', 'Petrov', 'https://www.abebooks.com/book-search/author/grigory-petrov/'),
(6, '11:20:00', 'William ', 'Golding', 'https://william-golding.co.uk/'),
(7, '11:21:07', 'Anthony ', 'Burgess', 'https://en.wikipedia.org/wiki/Anthony_Burgess'),
(8, '11:21:07', 'Sabahattin', 'Ali', 'https://tr.wikipedia.org/wiki/Sabahattin_Ali'),
(9, '11:22:10', 'Oscar ', 'Wilde', 'https://en.wikipedia.org/wiki/Oscar_Wilde'),
(39, '15:08:58', 'Orhan ', 'Pamuk ', 'https://en.wikipedia.org/wiki/Orhan_Pamuk');

-- --------------------------------------------------------

--
-- Görünüm yapısı `eserler`
--
DROP TABLE IF EXISTS `eserler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eserler`  AS  select `kitap`.`eserKayitNo` AS `eserKayitNo`,`kitap`.`eserKayitTarihi` AS `eserKayitTarihi`,`kitap`.`eserAdi` AS `eserAdi`,`kitap`.`eserBasimYili` AS `eserBasimYili`,`kitap`.`eserISBN` AS `eserISBN`,`kitap`.`yazarNo` AS `yazarNo`,`kitap`.`yayineviNo` AS `yayineviNo`,`kitap`.`eserAciklama` AS `eserAciklama` from `kitap` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste`
--
DROP TABLE IF EXISTS `liste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste`  AS  select `k`.`eserAdi` AS `eserAdi`,concat(`r`.`yazarAdi`,' ',`r`.`yazarSoyadi`) AS `AdSoyad`,`y`.`yayineviAdi` AS `YayineviAdi` from ((`kitap` `k` join `yayinevi` `y`) join `yazar` `r`) where `k`.`yazarNo` = `r`.`yazarKayitNo` and `k`.`yayineviNo` = `y`.`yayineviKayitNo` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`eserKayitNo`),
  ADD KEY `eserISBN` (`eserISBN`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `eserKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'eserin sisteme kayıt olduğu esnada otomatik verilen kayıt numarası. ', AUTO_INCREMENT=54;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevine siteme kayıt olduğu sırada verilen kayıt numarasıdır.', AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazar sisteme kayıt olurken yazara verilen kayıt numarasıdır.', AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
