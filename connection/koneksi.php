<?php
$host = "db";
$user = "appuser";
$pass = "apppass";
$db   = "aksi_relawan";

$koneksi = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
    die("Gagal terkoneksi");
}
