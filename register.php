<?php
require_once("konek.php");
if (isset($_POST['register'])) {
  $username = $_POST['username'];
  $nama_lengkap = $_POST['nama_lengkap'];
  $password = $_POST['password'];
  $password_hash = password_hash(
    $password,
    PASSWORD_BCRYPT
  );
  $sql = "INSERT INTO user (username, nama_lengkap, password)
VALUES ('$username', '$nama_lengkap', '$password_hash')";

  $koneksi->query($sql);
  $koneksi->close();
  header('Location: index.php');
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../../favicon.ico">

  <title>Daftar Akun Baru</title>

  <!-- Bootstrap core CSS -->
  <link href="aset/css/bootstrap.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="aset/css/signin.css" rel="stylesheet">

  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
  <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  <script src="aset/js/ie-emulation-modes-warning.js"></script>

  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="aset/js/ie10-viewport-bug-workaround.js"></script>

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

  <div class="container">

    <form action="" class="form-signin" role="form" method="POST">
      <h2 class="form-signin-heading" style="text-align:center">Silahkan Daftar</h2>
      <input type="text" class="form-control" name="username" placeholder="username" required autofocus>
      <input type="text" class="form-control" name="nama_lengkap" placeholder="Nama lengkap" required autofocus>
      <input type="password" class="form-control" name="password" placeholder="Password" required autofocus>
      <p>Sudah punya akun? <a href="index.php">Login</a></p>

  

      <input type="submit" class="btn btn-lg btn-primary btn-block" name="register" value="Daftar" />