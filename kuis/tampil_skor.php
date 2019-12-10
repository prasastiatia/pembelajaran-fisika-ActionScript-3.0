<?php
include "koneksi_skor.php";

$sql = "SELECT * FROM $namaTabel";
$q = mysql_query($sql) or die(mysql_error());

$xml = "<data>";

while($r = mysql_fetch_array($q)){
	$xml .= "<skor>";
	$xml .= "<id>" .$r['id'] ."</id>";
	$xml .= "<nis>".$r['nis']."</nis>";
	$xml .= "<nama>" .$r['nama'] ."</nama>";
	$xml .= "<nilai>" .$r['nilai'] ."</nilai>";
	$xml .= "</skor>";
}
$xml .= "</data>";
$sxe = new SimpleXMLElement($xml);
print($sxe -> asXML());
?>