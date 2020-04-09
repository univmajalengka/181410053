<!DOCTYPE html>
<html>
<head>
	<title>PENJUALAN HARDWARE</title>
</head>
<body>

	<h2 align="center">JENIS BARANG</h2>
	<table border="2" align="center">
		<tr>
			<th bgcolor="purple">No</th>
			<th bgcolor="purple">Kode_Jenis_Barang</th>
			<th bgcolor="purple">Nama_Jenis_Barang</th>

		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from tabel_jenis_barang");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['Kode_Jenis_Barang']; ?></td>
				<td><?php echo $d['Nama_Jenis_Barang']; ?></td>
				
			</tr>
			<?php 
		}
		?>
	</table>
<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>