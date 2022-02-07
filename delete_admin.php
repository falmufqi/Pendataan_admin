<?php
include 'koneksi.php';
$nik = $_GET['nik'];

$query= mysqli_query ($koneksi,"DELETE FROM login_admin WHERE nik ='$nik'")
or die(mysqli_error($koneksi));

if ($query) {
	echo "<script>alert('Anda Berhasil Delete Data');document.location='home.php?page=view_admin'</script>";
}else{
	echo "<script>alert('Anda Gagal Delete Data');document.location='home.php'</script>";
}
?>