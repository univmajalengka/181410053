program perulangan_for;
uses crt;

var
	n : Integer; (* angka awal *)
	i : Integer; (* counter *)
	
begin
	clrscr;
	writeln('Program Perulangan menggunakan For');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;
	write('Masukan angka : '); readln(n);

	for i := 0 to n do
	write(i ,' ');

	readln;
end.