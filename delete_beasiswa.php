<?php
include 'koneksi.php';
$nisn_bea = $_GET['nisn_bea'];

$query= mysqli_query ($koneksi,"DELETE FROM siswa_beasiswa WHERE nisn_bea ='$nisn_bea'")
or die(mysqli_error($koneksi));

if ($query) {
	echo "<script>alert('Anda Berhasil Delete Data');document.location='home.php?page=pagination_beasiswa'</script>";
}else{
	echo "<script>alert('Anda Gagal Delete Data');document.location='home.php'</script>";
}
?>