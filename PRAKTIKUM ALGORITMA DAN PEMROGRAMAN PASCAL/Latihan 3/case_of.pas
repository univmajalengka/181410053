program case_of;
uses crt;

var
	nama: String;
	jumlah_anak: Integer;
	gol: Char;
	persenTunjangan, upah_kotor, upah_bersih: Real;	
	
begin
	clrscr;
	writeln('Program Menghitung Tunjangan Sesuai Golongan');
	writeln('-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Nama             : '); readln(nama);
	write('Golongan (A - D) : '); readln(gol);
	write('Jumlah Anak      : '); readln(jumlah_anak);

	case gol of
	'A' : upah_kotor := 1000000;
	'B' : upah_kotor := 800000;
	'C' : upah_kotor := 650000;
	'D' : upah_kotor := 400000;
	end;

	if (jumlah_anak > 2) then
	persenTunjangan := 0.3
	else
	persenTunjangan := 0.2;

	upah_bersih := upah_kotor - (persenTunjangan*upah_kotor);
	writeln('Upah : ', upah_bersih:10:2);
	readln;
end.