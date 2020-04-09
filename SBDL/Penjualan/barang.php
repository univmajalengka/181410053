<!DOCTYPE html>
<html>
<head>
	<title>PENJUALAN HARDWARE</title>
</head>
<body>

	<h2 align="center">DAFTAR BARANG</h2>

	<table border="2" align="center">
		<tr>
			<th bgcolor="yellow">No</th>
			<th bgcolor="yellow">Kode_Barang</th>
			<th bgcolor="yellow">Kode_Jenis_Barang</th>
			<th bgcolor="yellow">Nama_Barang</th>
			<th bgcolor="yellow">Harga_Jual</th>
			<th bgcolor="yellow">Harga_Beli</th>
			<th bgcolor="yellow">stok</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from tabel_barang");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['Kode_Barang']; ?></td>
				<td><?php echo $d['Kode_Jenis_Barang']; ?></td>
				<td><?php echo $d['Nama_Barang']; ?></td>
				<td><?php echo $d['Harga_Jual']; ?></td>
				<td><?php echo $d['Harga_Beli']; ?></td>
				<td><?php echo $d['Stok']; ?></td>
				</td>
			</tr>
			<?php 
		}
		?>
	</table>
<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>