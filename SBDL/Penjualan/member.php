<!DOCTYPE html>
<html>
<head>
	<title>Penjualan Hardware</title>
</head>
<body>

	<h2 align="center">DAFTAR MEMBER</h2>
	<table border="2" align="center">
		<tr>
			<th bgcolor="blue">No</th>
			<th bgcolor="blue">UserID</th>
			<th bgcolor="blue">Nama</th>
			<th bgcolor="blue">Alamat</th>
			<th bgcolor="blue">No_Telpon</th>
			<th bgcolor="blue">JK</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from member");
			while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['UserID']; ?></td>
				<td><?php echo $d['Nama']; ?></td>
				<td><?php echo $d['Alamat']; ?></td>
				<td><?php echo $d['No_Telpon']; ?></td>
				<td><?php echo $d['JK']; ?></td>

				
			</tr>
			<?php 
		}
		?>
	</table>
<h3 align="center"><a href="index.php" ><<<</a>
</body>
</html>