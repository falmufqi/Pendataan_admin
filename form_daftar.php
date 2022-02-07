<!DOCTYPE html>
<html>
<head>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h2 align="center"><font face="Tahoma" color="black">Form Pendaftaran Admin</font></h2>
    <form action="proses_pendaftar.php" method="post">
        <div class="form-group">
            <label>NIK</label>
            <input type="text" name="nik" class="form-control" placeholder="Masukan NIK" required/>
        </div>
        <div class="form-group">
            <label>Nama</label>
            <input type="text" name="nama_user" class="form-control" placeholder="Masukan Nama" required/>
        </div>
        <div class="form-group">
            <label>Posisi</label>
            <input type="text" name="posisi" class="form-control" placeholder="Masukan Alamat" required />
        </div>
	<div class="form-group">
            <label>Username</label>
            <input type="text" name="username" class="form-control" placeholder="Masukan Username" required/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="Masukan Password" required/>
        </div>
	
        <button type="submit" name="submit" class="btn btn-primary btn-block">Submit</button>

    </form>
</div>
</body>
</html>