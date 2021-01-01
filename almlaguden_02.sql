-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Oca 2021, 16:30:55
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
  `KitapKayitno` int(255) NOT NULL COMMENT 'Kitaba ait kayıt numarası içerir.',
  `ISBN` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'İlgili kitaba ait ISBN numarası bilgisi.',
  `KitapAdi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kitabın adı.',
  `KitabinBasimYeri` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'kitabın basım yeri bilgisi.',
  `KitabinBasimyili` year(4) NOT NULL COMMENT 'Kitabın basım yılı bilgisi.',
  `KitabinBskbilgisi` int(10) DEFAULT NULL COMMENT 'kitabın baskı bilgisi.',
  `Kitabindili` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'kitabın dil bilgisi.',
  `Hangiyoreyeait` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'İçeriğin yöre bilgisi.',
  `Yayinevikayitno` int(11) NOT NULL,
  `YazarKayitno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`Kitapkayittarihi`, `KitapKayitno`, `ISBN`, `KitapAdi`, `KitabinBasimYeri`, `KitabinBasimyili`, `KitabinBskbilgisi`, `Kitabindili`, `Hangiyoreyeait`, `Yayinevikayitno`, `YazarKayitno`) VALUES
('22:09:52', 1, '9786054232253', '81 İl 81 Ünlü  81 Yemek', 'Ankara', 2009, NULL, 'Türkçe', 'Türkiye', 4, 8),
('22:10:12', 2, '9786051069470', 'Doğu Anadolu Yemekleri', 'İstanbul', 2015, NULL, 'Türkçe', 'Doğu Anadolu', 5, 2),
('22:10:31', 3, '9789755216348', 'Akdeniz Yemekleri : pratik mutfak rehberi', 'İstanbul', 2006, NULL, 'türkçe', 'Akdeniz', 5, 2),
('22:11:36', 4, '9789750821745', 'İstanbul Rumlarından Yemek Tarifleri', 'İstanbul', 2012, NULL, 'Türkçe', 'Marmara', 1, 6),
('22:11:36', 5, '9786051069487', 'Güneydoğu Anadolu Yemekleri', 'İstanbul', 2015, NULL, 'Türkçe', 'Güneydoğu Anadolu', 1, 2),
('22:11:36', 6, '9789751413918', 'Antakya ve Yemekleri', 'İstanbul ', 2010, NULL, 'Türkçe ', 'Akdeniz', 2, 5),
('22:11:36', 7, '9786056170935', 'Anadolu Yemekleri Ve Türk Mutfağı', 'İstanbul', 2011, 2, 'Türkçe', 'Türkiye', 3, 4),
('22:11:36', 8, '9789757375326', 'Dört mevsim Gaziantep yemekleri', 'Gaziantep ', 2003, NULL, 'Türkçe', 'Güneydoğu Anadolu', 6, 3),
('22:11:36', 9, '9786051069500', 'Soframda Anadolu Karadeniz Yemekleri', 'İstanbul ', 2015, NULL, 'türkçe', 'Karadeniz', 5, 2),
('00:00:00', 10, '9789751411303', 'Büyükada Yemekleri', 'İstanbul', 2006, NULL, 'Türkçe', 'Marmara', 2, 7);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplar`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplar` (
`Kitapkayittarihi` time
,`KitapKayitno` int(255)
,`ISBN` varchar(15)
,`KitapAdi` varchar(100)
,`KitabinBasimYeri` text
,`KitabinBasimyili` year(4)
,`KitabinBskbilgisi` int(10)
,`Kitabindili` text
,`Hangiyoreyeait` text
,`Yayinevikayitno` int(11)
,`YazarKayitno` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste` (
`KitapAdi` varchar(100)
,`Yazaradisoyadi` text
,`Yayineviadi` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayineviKayitno` int(100) NOT NULL COMMENT 'yayınevi numarası yer almaktadır.',
  `Yayineviadi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi adı bilgisi yer almaktadır.',
  `Yayineviadresi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi adres bilgisi yer almaktadır.',
  `Yayinevieposta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yayınevi e posta bilgisi yer almaktadır.',
  `Yayinevitelefon` int(11) DEFAULT NULL COMMENT 'yayınevi telefon bilgisi yer almaktadır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayineviKayitno`, `Yayineviadi`, `Yayineviadresi`, `Yayinevieposta`, `Yayinevitelefon`) VALUES
(1, 'Yapı Kredi Yayınları', 'İstiklal Caddesi No: 161 34433, Beyoğlu / İstanbul', 'iletisim@ykykultur.com.tr', 2123600063),
(2, 'Remzi Kitabevi', 'Akmerkez E3 Blok Kat:14,\r\n34337 Etiler, İstanbul - Türkiye', 'post@remzi.com.tr', 2122822080),
(3, 'Çiya Yayınları', 'Güneşlibahçe Sokak 38/2 Kadıköy İstanbul', 'yemekvekultur@gmail.com', NULL),
(4, 'Elips Yayıncılık', 'Akpınar Mahallesi 826. Sokak No: 30 / 13 Dikmen / Çankaya / Ankara', 'elipskitap@elipskitap.com.tr', NULL),
(5, 'Alfa yayıncılık', 'Ticarethane Sok. No:15 Cağaloğlu/Fatih/İSTANBUL', 'kitap@alfakitap.com', 2125115303),
(6, 'Gazikültür A.Ş.', 'Tepebaşı Mah. Prof. Dr. Metin Sözen cad. No:8 Şahinbey/ Gaziantep', 'info@gazikulturas.com', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayitno` int(11) NOT NULL COMMENT 'Yazar ıd numarası.',
  `Yazaradi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar adı bilgisi yer almaktadır.',
  `Yazarsoyadi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar soyadı bilgisi yer almaktadır.',
  `Yazaradisoyadi` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yazar adı soyadı bilgisi yer almaktadır.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayitno`, `Yazaradi`, `Yazarsoyadi`, `Yazaradisoyadi`) VALUES
(1, 'Ahmet ', 'Bulut ', 'Ahmet Bulut '),
(2, 'M. Faruk ', 'Bayrak', 'M. Faruk Bayrak'),
(3, 'Özden Mermer', ' Özsabuncuoğlu', 'Özden Mermer Özsabuncuoğlu'),
(4, 'Akile ', 'Ülkücan', 'Akile Ülkücan'),
(5, 'Jale', 'Balcı', 'Jale Balcı'),
(6, 'sula ', 'Bozis', 'Sula Bozis'),
(7, 'Selin', 'Kutucular', 'Selin Kutucular'),
(8, 'Kolektif', '.', 'Kolektif.');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplar`
--
DROP TABLE IF EXISTS `kitaplar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplar`  AS  select `kitap`.`Kitapkayittarihi` AS `Kitapkayittarihi`,`kitap`.`KitapKayitno` AS `KitapKayitno`,`kitap`.`ISBN` AS `ISBN`,`kitap`.`KitapAdi` AS `KitapAdi`,`kitap`.`KitabinBasimYeri` AS `KitabinBasimYeri`,`kitap`.`KitabinBasimyili` AS `KitabinBasimyili`,`kitap`.`KitabinBskbilgisi` AS `KitabinBskbilgisi`,`kitap`.`Kitabindili` AS `Kitabindili`,`kitap`.`Hangiyoreyeait` AS `Hangiyoreyeait`,`kitap`.`Yayinevikayitno` AS `Yayinevikayitno`,`kitap`.`YazarKayitno` AS `YazarKayitno` from `kitap` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste`
--
DROP TABLE IF EXISTS `liste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste`  AS  select `k`.`KitapAdi` AS `KitapAdi`,`r`.`Yazaradisoyadi` AS `Yazaradisoyadi`,`y`.`Yayineviadi` AS `Yayineviadi` from ((`kitap` `k` join `yayinevi` `y`) join `yazar` `r`) where `k`.`Yayinevikayitno` = `y`.`YayineviKayitno` and `k`.`YazarKayitno` = `r`.`YazarKayitno` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`KitapKayitno`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayineviKayitno`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`YazarKayitno`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `KitapKayitno` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Kitaba ait kayıt numarası içerir.', AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayineviKayitno` int(100) NOT NULL AUTO_INCREMENT COMMENT 'yayınevi numarası yer almaktadır.', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
