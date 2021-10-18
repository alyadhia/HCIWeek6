<?php

if(isSet($_POST['create'])){
	
	$sql = "INSERT INTO tugas VALUES(
		'',
		'".$_POST['matakul']."',
		'".$_POST['judul']."',
		'".$_POST['deskripsi']."',
		'".$_POST['jenis']."',
		'".$_POST['deadline']."',
		'',
		'".$_SESSION['id']."');
		" or die("<b>Error: </b>".mysqli_error($koneksi));
	
	$lengkap = !empty($_POST['matakul']) && !empty($_POST['judul']) &&
				!empty($_POST['deskripsi']) && !empty($_POST['deadline']);
	

	if($lengkap){	
		mysqli_query($koneksi, $sql);
		echo '<meta http-equiv="refresh" content="0" />';
	} else {
		echo "<div class='alert alert-warning' role='alert'>
		<b><span class='glyphicon glyphicon-exclamation-sign'></span> Gagal Menyimpan:</b>
		<span >Data tidak lengkap, mohon untuk mengisi data dengan benar</span>
		</div>";
	}

}

?>