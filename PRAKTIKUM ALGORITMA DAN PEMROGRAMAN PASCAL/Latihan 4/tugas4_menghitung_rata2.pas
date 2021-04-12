program menghitung_rata_rata;
uses crt;

var
	n, x, i, total : Integer;
	rata : Real;
	
begin
	clrscr;
	writeln('Program Menghitung Rata - Rata');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Masukan Jumlah Bilangan : '); readln(n);
	writeln;
	writeln('Masukan Bilangan');
	writeln('--');

	total := 0;

	for i := 1 to n do
	begin
	 	readln(x);
	 	total := total + x;
	end;

	rata := total/n;
	writeln('--');
	writeln;

	writeln('Total Bilangan : ', total:4);
	writeln('Rata - Rata    : ', rata:4:2);

	readln;
end.