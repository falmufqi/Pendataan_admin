<?php
$username = $_POST['username'];
$password = $_POST['password'];
$query = new mysqli('localhost', 'root', '', 'db_tk1');

$result = $query->query("SELECT * FROM login_admin WHERE username='$username'");
$row = $result->fetch_assoc();

if (!$row) {
    echo "<script>alert(Username atau Password anda salah!');document.location = 'login.php'</script>";
} else {
    $res_username = $row['username'];
    $res_password = $row['password'];


    if (password_verify($password, $res_password)) {
        session_start();
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
        echo "<script>alert('Anda Berhasil Login');document.location = 'home.php'</script>";
    } else {
        echo "<script>alert('Username atau Password anda salah!');document.location = 'login.php'</script>";
    }
}
