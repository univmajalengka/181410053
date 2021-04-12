program tabel_perkalian;
uses crt;

var
		n, angka : Integer	;

begin
	clrscr;
	writeln('Program Perkalian angka');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Masukan Angka Perkalian : '); readln(n);
	writeln('==============');

	while angka < n do
	begin
	 	writeln( '| ',angka+1, ' * ', n, ' = ', (angka + 1)*n:2, ' |');
	 	angka := angka + 1;
	end; 

	writeln('==============');
	
	readln;
end.