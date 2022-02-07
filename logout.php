<?php
include "alert.php";
session_start();
unset($_SESSION["username"]);
echo "<script>alert('Anda Berhasil Logout');document.location='login.php'</script>";
?>