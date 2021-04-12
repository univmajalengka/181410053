program menghitung_gaji_kar;
uses crt;

var
		nama, status: String;
		gol: Char;
		gaji_pokok, gaji_bersih, tunjangan, potongan_iuran, persentase: Real;

begin
	clrscr;
	writeln('Program Menghitung Gaji Karyawan');
	writeln('-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Nama Karyawan        : '); readln(nama);
	write('Golongan (A/B)       : '); readln(gol);
	write('Status (Nikah/Belum) : '); readln(status);
	writeln;

	//ketentuan gaji pokok
	case gol of
		'A': gaji_pokok := 200000;
		'B': gaji_pokok := 350000;
	end;

	//ketentuan untuk tunjangan
	if (status = 'Nikah') and (gol = 'A') then
	tunjangan := 50000
	else if (status = 'Nikah') and (gol = 'B')then
	tunjangan := 75000
	else if (status = 'Belum') and (gol = 'A') then
	tunjangan := 25000
	else if (status = 'Belum') and (gol = 'B') then
	tunjangan := 60000;
	

	//ketentuan potongan iuran
	if (gaji_pokok <= 300000) then
	persentase := 0.05
	else if (gaji_pokok > 300000) then
	persentase := 0.1;
	

	potongan_iuran := (gaji_pokok+tunjangan)*persentase;
	gaji_bersih := gaji_pokok+tunjangan-potongan_iuran;

	writeln('Berikut Gaji Karyawan atas nama ', nama);
	writeln('=================================');
	writeln('Gaji Pokok     : Rp.', gaji_pokok:10:2);
	writeln('Tunjangan      : Rp.', tunjangan:10:2);
	writeln('Potongan Iuran : Rp.', potongan_iuran:10:2);
	writeln('Gaji Bersih    : Rp.', gaji_bersih:10:2);
	writeln('=================================');

	readln;
end.