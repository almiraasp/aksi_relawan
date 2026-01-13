<?php
$host = "db";
$user = "root";
$pass = "";
$db   = "aksi_relawan";

$koneksi = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
    die("Gagal terkoneksi");
}
