<?php
/* Bağlantı Kurulması */
require_once("baglanti.php");
/* Veritabanı sorgulama */
$sorgu = mysqli_query($baglanti, "SELECT K.*, Y.*, YA.*  FROM kitap K, yayinevi Y, yazar YA WHERE K.yazarNo= YA.yazarKayitNo
AND K.yayineviNo=Y.yayineviKayitNo");
?>

<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Almıla'nın Kütüphanesi</title>

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="./katalog_files/navbar-top.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <a class="navbar-brand" href="">KütüpHane</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
	<li class="nav-item active">
        <a class="nav-link" href="index.php">Ana Sayfa <span class="sr-only"></span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="kitap.php">Kitap İşlemleri</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="yazar.php">Yazar İşlemleri</a>
      </li>
	   <li class="nav-item active">
        <a class="nav-link" href="yayinevi.php">Yayınevi İşlemleri</a>
      </li>
    </ul>
  </div>
</nav>

<main role="main" class="container">
<!-- KODLAR -->
<h1>Kitap İşlemleri </h1>
<p><a href="kitap_ekle.php">Yeni Kitap Ekle</a></p>
<?php
echo("<table border=1 width=80%>");
    echo("<tr>");
	echo("<td><b>Kitap No</b></td>");
	echo("<td><b>Kitap Kayıt Tarihi</b></td>");
    echo("<td><b>Kitap Adı</b></td>");
	echo("<td><b>Kitap Basım Yılı</b></td>");
    echo("<td><b>Kitap ISBN</b></td>");
	echo("<td><b>Yazar </b></td>");
	echo("<td><b>Yayınevi </b></td>");
	echo("<td><b>Acıklama </b></td>");
    echo("<td><b>Güncelle</b></td>");
    echo("<td><b>Sil</b></td>");
    echo("</tr>");
/* Sorgu sonuçlarının yazdırılması */
 while($satir = mysqli_fetch_assoc($sorgu)){
    echo("<tr>");
	echo("<td>".$satir["eserKayitNo"]."</td>");
	echo("<td>".$satir["eserKayitTarihi"]."</td>");
    echo("<td>".$satir["eserAdi"]."</td>");
	echo("<td>".$satir["eserBasimYili"]."</td>");
    echo("<td>".$satir["eserISBN"]."</td>");
	 echo("<td>".$satir["yazarAdi"]." ".$satir["yazarSoyadi"]."</td>");
	 echo("<td>".$satir["yayineviAdi"]."</td>");
	 echo("<td>".$satir["eserAciklama"]."</td>");
    echo("<td><a href='kitap_guncelle.php?eserKayitNo=".$satir["eserKayitNo"]."'>Güncelle</a></td>");
    echo("<td><a href='kitap_sil.php?eserKayitNo=".$satir["eserKayitNo"]."'>Sil</a></td>");
    echo("</tr>");
	}
echo("</table>");
?>
<!-- KODLAR -->
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>

</body></html>