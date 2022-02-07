<?php
include 'koneksi.php';
$nisn = $_GET['nisn'];

$query= mysqli_query ($koneksi,"DELETE FROM siswa_reguler WHERE nisn ='$nisn'")
or die(mysqli_error($koneksi));

if ($query) {
	echo "<script>alert('Anda Berhasil Delete Data');document.location='home.php?page=pagination_reguler'</script>";
}else{
	echo "<script>alert('Anda Gagal Delete Data');document.location='home.php'</script>";
}
?>