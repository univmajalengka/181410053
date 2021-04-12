program segitiga_bintang;
uses crt;

var
	i, j, row : Integer;

begin
clrscr;
	writeln('Program 1/2 Segitiga Bermuda');
	writeln('-_-_-_-_-_-_-_-_-_-_-_-_');
	write('Masukan jumlah baris = '); readln(row);

	for i := 1 to row do
	begin
		for j := 1 to i do
		write('  *');
		writeln;
	end;

	readln;
end.
