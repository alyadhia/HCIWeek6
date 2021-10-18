<?php
session_start();
if(!isset($_SESSION['delete'])){
	header("location: home.php");
}

include("konek.php");

$sql = "DELETE FROM tugas WHERE id=".$_GET['id'].";";
mysqli_query($koneksi, $sql);
header("location: home.php");


?>
