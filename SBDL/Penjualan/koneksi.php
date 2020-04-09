<?php 
$koneksi = mysqli_connect("localhost","root","","jual_beli_hardware");

// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>