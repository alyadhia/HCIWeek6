<?php
session_start();
session_unset('login');
session_unset('id');
header("location: index.php");
?>
