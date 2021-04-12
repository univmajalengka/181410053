program tunjangan_gaji;
uses crt;

var
	jumlah_anak : Integer;
	gaji_kotor, tunjangan, persen_tunjangan : Real;

begin
	clrscr;
	writeln('Program Menghitung Tunjangan Gaji');
	writeln('-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); readln;
	persen_tunjangan := 0.2;
	write('Gaji Kotor : '); readln(gaji_kotor);
	write('Jumlah Anak : '); readln(jumlah_anak);

	if jumlah_anak > 2 then 
	persen_tunjangan := 0.3;

	tunjangan := persen_tunjangan*gaji_kotor;

	writeln('Besar Tunjangan = Rp',tunjangan:10:2);
	readln;
end.