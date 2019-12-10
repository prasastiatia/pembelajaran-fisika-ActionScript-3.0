<?php
$server ="localhost";
$username = "root";
$password = "";
$database = "pi_baru";
$namaTabel = "skor";

if(!mysql_connect($server, $username, $password)){
	$hasil = 'konek = Gagal Konek Ke Database';
} elseif (!mysql_select_db($database)){
	$hasil = 'konek = Database Tidak Ditemukan';
} else {
	$hasil='konek = Berhasil Terkoneksi';
}
?>