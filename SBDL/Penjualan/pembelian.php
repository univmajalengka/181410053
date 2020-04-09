<!DOCTYPE html>
<html>
<head>
	<title>Penjualan Hardware</title>
</head>
<body>

	<h2 align="center">DAFTAR PEMBELIAN BARANG</h2>
	<table border="2" align="center">
		<tr>
			<th bgcolor="green">No</th>
			<th bgcolor="green">No_Nota</th>
			<th bgcolor="green">Kode_Barang</th>
			<th bgcolor="green">Nama_Barang</th>
			<th bgcolor="green">Kode_Pemasok</th>
			<th bgcolor="green">Harga_Beli</th>
			<th bgcolor="green">Jumlah</th>
			<th bgcolor="green">Tanggal</th>
			<th bgcolor="green">Nama_Pemasok</th>
			<th bgcolor="green">Jumlah_Harga</th>

		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from pembelian");
			while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['No_Nota']; ?></td>
				<td><?php echo $d['Kode_Barang']; ?></td>
				<td><?php echo $d['Nama_Barang']; ?></td>
				<td><?php echo $d['Kode_Pemasok']; ?></td>
				<td><?php echo $d['Harga_Beli']; ?></td>
				<td><?php echo $d['Jumlah']; ?></td>
				<td><?php echo $d['Tanggal']; ?></td>
				<td><?php echo $d['Nama_Pemasok']; ?></td>
				<td><?php echo $d['Jumlah_Harga']; ?></td>

			</tr>
			<?php 
		}
		?>
	</table>
<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>