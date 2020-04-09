<!DOCTYPE html>
<html>
<head>
	<title>Penjualan Hardware</title>
</head>
<body>

	<h2 align="center">DATA PENJUALAN</h2>
	<table border="2" align="center">
		<tr>
			<th bgcolor="red">No</th>
			<th bgcolor="red">No_Nota</th>
			<th bgcolor="red">UserID</th>
			<th bgcolor="red">Nama_Pembeli</th>
			<th bgcolor="red">Nama_Barang</th>
			<th bgcolor="red">Jumlah_beli</th>
			<th bgcolor="red">Tanggal</th>
			<th bgcolor="red">Harga</th>
			<th bgcolor="red">Harga_Total</th>
			<th bgcolor="red">Kode_Barang</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from penjualan");
			while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['No_Nota']; ?></td>
				<td><?php echo $d['UserID']; ?></td>
				<td><?php echo $d['Nama_pembeli']; ?></td>
				<td><?php echo $d['Nama_Barang']; ?></td>
				<td><?php echo $d['Jumlah_beli']; ?></td>
				<td><?php echo $d['Tanggal']; ?></td>
				<td><?php echo $d['Harga']; ?></td>
				<td><?php echo $d['Harga_Total']; ?></td>
				<td><?php echo $d['Kode_Barang']; ?></td>

			</tr>
			<?php 
		}
		?>
	</table>
<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>