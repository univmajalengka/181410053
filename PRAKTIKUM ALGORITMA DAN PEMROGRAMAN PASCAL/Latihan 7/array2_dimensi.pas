program array_dua_dimensi;
uses crt;

procedure garis;
	begin
		writeln('==========================================');
	end;
var
	nama: array[0..4,0..5] of String;
	tanggal: array[0..4,0..5] of Integer;
	umur: Integer;
	
begin
	clrscr;
	writeln('   Program Array Dua Dimensi Hitung Umur');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;
	write('Masukan Nama Depan                  : '); readln(nama[0,1]);
	write('Masukan Nama Belakang               : '); readln(nama[1,2]);
	write('Masukan Tanggal Lahir  (dd mm yyyy) : '); readln(tanggal[0,0], tanggal[0,2], tanggal[0,1]);
	write('Masukan Tahun Sekarang              : '); readln(tanggal[1,2]);

	umur := tanggal[1,2] - tanggal[0,1];

	if tanggal[0,2] = 01 then
		nama[0,2] := 'Januari'
	else if tanggal[0,2] = 02 then
		nama[0,2] := 'Februari'
	else if tanggal[0,2] = 03 then
		nama[0,2] := 'Maret'
	else if tanggal[0,2] = 04 then
		nama[0,2] := 'April'
	else if tanggal[0,2] = 05 then
		nama[0,2] := 'Mei'
	else if tanggal[0,2] = 06 then
		nama[0,2] := 'Juni'
	else if tanggal[0,2] = 07 then
		nama[0,2] := 'Juli'
	else if tanggal[0,2] = 08 then
		nama[0,2] := 'Agustus'
	else if tanggal[0,2] = 09 then
		nama[0,2] := 'September'
	else if tanggal[0,2] = 10 then
		nama[0,2] := 'Oktober'
	else if tanggal[0,2] = 11 then
		nama[0,2] := 'November'
	else if tanggal[0,2] = 12 then
		nama[0,2] := 'Desember';

	garis;

	writeln('Hai ', nama[0,1], ' ',nama[1,2],'. ');
	writeln('Kamu lahir pada tanggal ', tanggal[0,0], ' ',nama[0,2], ' ',tanggal[0,1], '. ');
	writeln('Berarti umur kamu sekarang ', umur, ' tahun.');
	garis;

	readln;
end.