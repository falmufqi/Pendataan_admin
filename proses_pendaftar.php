<?php

include "koneksi.php";
session_start();

$nik=$_POST["nik"];
$nama_user=$_POST["nama_user"];
$posisi=$_POST["posisi"];
$username=$_POST["username"];
$password=password_hash($_POST["password"],PASSWORD_BCRYPT);

  $sql="insert into login_admin (nik,nama_user,posisi,username,password) values
		('$nik','$nama_user','$posisi','$username','$password')";

  $hasil=mysqli_query($koneksi,$sql);

  if ($hasil) {
	echo "<script>alert('Anda Berhasil Daftar');document.location = 'home.php'</script>";
	exit;
  }
else {
	echo "<script>alert('Anda Gagal Daftar');document.location = 'home.php?page=form_daftar'</script>";
	exit;
}  

?>