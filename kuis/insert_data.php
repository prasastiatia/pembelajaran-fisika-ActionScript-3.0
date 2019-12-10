<?php
mysql_connect("localhost","root","");
mysql_select_db("pi_baru");

$nama = $_POST['nama'];
$nilaii = $_POST['nilai'];
$kelas = $_POST['kelas'];
$no_absen = $_POST['no_absen'];
$nis = $_POST['nis'];


$cekdata="SELECT nis FROM siswa WHERE nis='$nis'";
$ada = mysql_query($cekdata) or die(mysql_error());
if(mysql_num_rows($ada)>0)
{
	echo("NIS telah terdaftar");
}
else
{
	mysql_query("INSERT INTO siswa(nis,nama,kelas,no_absen) VALUES ('$nis','$nama','$kelas','$no_absen')");
}

$simpan=mysql_query("INSERT INTO skor(nis,nama,nilai) VALUES (
	'$nis','$nama','$nilaii')");

if(!$simpan){
	echo "&ket=data masih kosong,harap selesaikan seluruh soal";
}

if($simpan){
	echo"&ket=Data Tersimpan";
}



?>