<?php
include "koneksi_ujian.php";
include "koneksi_siswa.php";

$nis = $_POST['nis'];
$nama = $_POST['nama'];
$kelas = $_POST['kelas'];
$no_absen = $_POST['no_absen'];
$nilaii = $_POST['nilai_siswa'];

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

$simpan=mysql_query("INSERT INTO ujian(nis,nama,nilai_siswa) VALUES (
	'$nis','$nama','$nilaii')");

if(!$simpan){
	echo "&ket=data masih kosong,harap selesaikan seluruh soal";
}

if($simpan){
	echo"&ket=Data Tersimpan";
}

?>