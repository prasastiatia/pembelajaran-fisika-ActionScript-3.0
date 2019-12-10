<?php
include "koneksi_ujian.php";

$sql = "SELECT * FROM $namaTabel";
$q = mysql_query($sql) or die(mysql_error());

$xml = "<data>";

while($r = mysql_fetch_array($q)){
	$xml .= "<ujian>";
	$xml .= "<id>" .$r['nomor'] ."</id>";
	$xml .= "<nis>" .$r['nis'] ."</nis>";
	$xml .= "<nama>" .$r['nama'] ."</nama>";
	$xml .= "<nilai>" .$r['nilai_siswa'] ."</nilai>";
	$xml .= "</ujian>";
}
$xml .= "</data>";
$sxe = new SimpleXMLElement($xml);
print($sxe -> asXML());
?>