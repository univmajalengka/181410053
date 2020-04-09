<!DOCTYPE html>
<html>
<head>
	<title>Penjualan Hardware</title>
</head>
<body>

	<h2 align="center">DATA PEMASOK</h2>
	<table border="2" align="center">
		<tr>
			<th bgcolor="greey">No</th>
			<th bgcolor="greey">Kode_Pemasok</th>
			<th bgcolor="greey">Nama</th>
			<th bgcolor="greey">No_Telpon</th>
			<th bgcolor="greey">Kode_Barang</th>
			<th bgcolor="greey">Nama_Barang</th>

		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from pemasok");
			while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['Kode_Pemasok']; ?></td>
				<td><?php echo $d['Nama']; ?></td>
				<td><?php echo $d['No_Telpon']; ?></td>
				<td><?php echo $d['Kode_Barang']; ?></td>
				<td><?php echo $d['Nama_Barang']; ?></td>

			</tr>
			<?php 
		}
		?>
	</table>

	<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>