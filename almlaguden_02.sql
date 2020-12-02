-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2020, 11:30:36
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
-- Veritabanı: `almlaguden_01`
--
CREATE DATABASE IF NOT EXISTS `almlaguden_01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `almlaguden_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `Kitapkayittarihi` time NOT NULL DEFAULT current_timestamp() COMMENT 'Kitap veri tabanına kaydedildiği zamanı gösterir.',
  `kitapNo` int(255) NOT NULL COMMENT 'Kitaba ait kayıt numarası içerir.',
  `ISBN` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'İlgili kitaba ait ISBN numarası bilgisi.',
  `KitapAdi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kitabın adı.',
  `KitabinBasimYeri` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'kitabın basım yeri bilgisi.',
  `KitabinBasimyili` year(4) NOT NULL COMMENT 'Kitabın basım yılı bilgisi.',
  `KitabinBskbilgisi` int(10) DEFAULT NULL COMMENT 'kitabın baskı bilgisi.',
  `Kitabindili` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'kitabın dil bilgisi.',
  `Hangiyöreyeait` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'İçeriğin yöre bilgisi.',
  `Yazarkayitno` int(11) NOT NULL,
  `yayinevikayitno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`Kitapkayittarihi`, `kitapNo`, `ISBN`, `KitapAdi`, `KitabinBasimYeri`, `KitabinBasimyili`, `KitabinBskbilgisi`, `Kitabindili`, `Hangiyöreyeait`, `Yazarkayitno`, `yayinevikayitno`) VALUES
('22:09:52', 1, '9786054232253', '81 İl 81 Ünlü  81 Yemek', 'Ankara', 2009, NULL, 'Türkçe', 'Türkiye', 7, 5),
('22:10:12', 2, '9786051069470', 'Doğu Anadolu Yemekleri', 'İstanbul', 2015, NULL, 'Türkçe', 'Doğu Anadolu', 2, 6),
('22:10:31', 3, '9789755216348', 'Akdeniz Yemekleri : pratik mutfak rehberi', 'İstanbul', 2006, NULL, 'türkçe', 'Akdeniz', 7, 7),
('22:11:36', 4, '9789750821745', 'İstanbul Rumlarından Yemek Tarifleri', 'İstanbul', 2012, NULL, 'Türkçe', 'Marmara', 6, 1),
('22:11:36', 5, '9786051069487', 'Güneydoğu Anadolu Yemekleri', 'İstanbul', 2015, NULL, 'Türkçe', 'Güneydoğu Anadolu', 2, 6),
('22:11:36', 6, '9789751413918', 'Antakya ve Yemekleri', 'İstanbul ', 2010, NULL, 'Türkçe ', 'Akdeniz', 5, 2),
('22:11:36', 7, '9786056170935', 'Anadolu Yemekleri Ve Türk Mutfağı', 'İstanbul', 2011, 2, 'Türkçe', 'Türkiye', 4, 4),
('22:11:36', 8, '9789757375326', 'Dört mevsim Gaziantep yemekleri', 'Gaziantep ', 2003, NULL, 'Türkçe', 'Güneydoğu Anadolu', 3, 8),
('22:11:36', 9, '9786051069500', 'Soframda Anadolu Karadeniz Yemekleri', 'İstanbul ', 2015, NULL, 'türkçe', 'Karadeniz', 2, 6),
('22:11:36', 10, '9789755852669', 'ELAZIĞ / HARPUT YÖRESEL YEMEKLERİ', 'Elazığ', 2002, NULL, 'Türkçe', 'Doğu Anadolu ', 1, 3);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplar`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplar` (
`Kitapkayittarihi` time
,`kitapNo` int(255)
,`ISBN` varchar(15)
,`KitapAdi` varchar(100)
,`KitabinBasimYeri` text
,`KitabinBasimyili` year(4)
,`KitabinBskbilgisi` int(10)
,`Kitabindili` text
,`Hangiyöreyeait` text
,`Yazarkayitno` int(11)
,`yayinevikayitno` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste` (
`KitapAdi` varchar(100)
,`AdSoyad` mediumtext
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayinevikayitno` int(100) NOT NULL COMMENT 'yayınevi numarası yer almaktadır.',
  `yayıneviadi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi adı bilgisi yer almaktadır.',
  `yayıneviadresi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi adres bilgisi yer almaktadır.',
  `yayınevieposta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi e posta bilgisi yer almaktadır.',
  `yayinevitelefon` int(11) DEFAULT NULL COMMENT 'yayınevi telefon bilgisi yer almaktadır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayinevikayitno`, `yayıneviadi`, `yayıneviadresi`, `yayınevieposta`, `yayinevitelefon`) VALUES
(1, 'Yapı Kredi Yayınları', 'İstiklal Caddesi No: 161 34433, Beyoğlu / İstanbul', 'iletisim@ykykultur.com.tr', 2123600063),
(2, 'Remzi Kitabevi', 'Akmerkez E3 Blok Kat:14,\r\n34337 Etiler, İstanbul - Türkiye', 'post@remzi.com.tr', 2122822080),
(3, 'Elazığ Kültür ve Yardımlaşma Derneği', 'Halk Cad. No:50 / 2-3 Üsküdar / İSTANBUL', 'info@elfed.org.tr', NULL),
(4, 'Çiya Yayınları', 'Güneşlibahçe Sokak 38/2 Kadıköy İstanbul', 'yemekvekultur@gmail.com', NULL),
(5, 'Elips Yayıncılık', 'Akpınar Mahallesi 826. Sokak No: 30 / 13 Dikmen / Çankaya / Ankara', 'elipskitap@elipskitap.com.tr', NULL),
(6, 'Alfa Yayıncılık', 'Alemdar, Ticarethane sok. no:15, 34110 FATİH/ İSTANBUL', 'kitap@alfakitap.com', 2125115303),
(7, 'Boyut Yayın Grubu', 'Tekstilkent Koza Plaza A Blok Kat:26, Esenler, 34235', 'info@boyutstore.com', 2124133333),
(8, 'Gazi Kültür A.Ş.', 'Tepebaşı Mah. Prof. Dr. Metin Sözen cad. No:8 Şahinbey/ Gaziantep', 'info@gazikulturas.com', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarkayitno` int(11) NOT NULL COMMENT 'Yazarın sisteme kayıt alırken verilen numara. numarası.',
  `yazaradi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar adı bilgisi yer almaktadır.',
  `yazarsoyadi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar soyadı bilgisi yer almaktadır.',
  `yazaradisoyadi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar adı soyadı bilgisi yer almaktadır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarkayitno`, `yazaradi`, `yazarsoyadi`, `yazaradisoyadi`) VALUES
(1, 'Ahmet ', 'Bulut ', 'Ahmet Bulut '),
(2, 'M. Faruk ', 'Bayrak', 'M. Faruk Bayrak'),
(3, 'Özden Mermer', ' Özsabuncuoğlu', 'Özden Mermer Özsabuncuoğlu'),
(4, 'Akile ', 'Ülkücan', 'Akile Ülkücan'),
(5, 'Jale', 'Balcı', 'Jale Balcı'),
(6, 'sula ', 'Bozis', 'Sula Bozis'),
(7, 'Kolektif', 'Kolektif', 'Kolektif');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplar`
--
DROP TABLE IF EXISTS `kitaplar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplar`  AS  select `kitap`.`Kitapkayittarihi` AS `Kitapkayittarihi`,`kitap`.`kitapNo` AS `kitapNo`,`kitap`.`ISBN` AS `ISBN`,`kitap`.`KitapAdi` AS `KitapAdi`,`kitap`.`KitabinBasimYeri` AS `KitabinBasimYeri`,`kitap`.`KitabinBasimyili` AS `KitabinBasimyili`,`kitap`.`KitabinBskbilgisi` AS `KitabinBskbilgisi`,`kitap`.`Kitabindili` AS `Kitabindili`,`kitap`.`Hangiyöreyeait` AS `Hangiyöreyeait`,`kitap`.`Yazarkayitno` AS `Yazarkayitno`,`kitap`.`yayinevikayitno` AS `yayinevikayitno` from `kitap` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste`
--
DROP TABLE IF EXISTS `liste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste`  AS  select `k`.`KitapAdi` AS `KitapAdi`,concat(`r`.`yazaradi`,' ',`r`.`yazarsoyadi`) AS `AdSoyad` from ((`kitap` `k` join `yayinevi` `y`) join `yazar` `r`) where `k`.`yayinevikayitno` = `y`.`yayinevikayitno` and `k`.`Yazarkayitno` = `r`.`yazarkayitno` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayinevikayitno`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarkayitno`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapNo` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Kitaba ait kayıt numarası içerir.', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayinevikayitno` int(100) NOT NULL AUTO_INCREMENT COMMENT 'yayınevi numarası yer almaktadır.', AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
