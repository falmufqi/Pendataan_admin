<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Admin</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
<style>
    h1 {
        font-family : Arial;
        margin-left: 35%;
    }
    p{
        font-family:sans-serif;
        margin-left: 40%;
    }
</style>
</head>
<body>
    <?php $nomor= + 1;?>
    <div class="container" id="tabel">
        <h1>Tabel Admin</h1>

        <table border="1" class="text-center" align="center">
            <thead>
               
                <th bgcolor="skyblue">No</th>
                <th bgcolor="skyblue">NIK</th>
                <th bgcolor="skyblue">Nama Pengguna</th>
                <th bgcolor="skyblue">Posisi</th>
                <th bgcolor="skyblue">username</th>
                <th bgcolor="skyblue">Action</th>
            </thead>
            <tbody>
            <?php
            include 'koneksi.php';
            $data=mysqli_query($koneksi, "SELECT * From login_admin") or die(mysqli_error($koneksi));
            foreach($data as $baris){ ?>
            <tr>
                <td><?php echo $nomor++; ?></td>
                <td><?php echo $baris['nik'] ?></td>
                <td><?php echo $baris['nama_user'] ?></td>
                <td><?php echo $baris['posisi'] ?></td>
                <td><?php echo $baris['username'] ?></td>
                <td>
                    <a href="delete_admin.php?nik=<?php echo $baris['nik'] ?>"
                    class="btn btn-danger no-print">Delete</a>
                </td>
            </tr>
            <?php }?>
            </tbody>
        </table>
    </div>
    

<!-- Javascript -->    
<script type="text/javascript">
 
 /*--This JavaScript method for Print command--*/
  
 function PrintDoc() {
  
 var toPrint = document.getElementById('tabel');
 var popupWin = window.open('');
  
 popupWin.document.open();
  
 popupWin.document.write('<html><title>::Print Data::</title><link rel="stylesheet" type="text/css" href="css/print.css" /></head><body onload="window.print()">')
 popupWin.document.write(toPrint.outerHTML);
 popupWin.document.write('</html>');
 popupWin.document.close();
 }
 </script>  
 <!-- Akhri Javascript -->
</body>
</html>