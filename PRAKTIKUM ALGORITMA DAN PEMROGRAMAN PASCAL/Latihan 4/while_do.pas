program while_do;
uses crt;

var
	no : Integer;
	jumlah : Integer;
	
begin
	clrscr;
	writeln('Program Perulangan menggunakan While Do');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Masukan jumlah : '); readln(jumlah);

	no := 0;
	
	while no < jumlah do
	begin
	 	writeln('Hello World');
	 	no := no + 1;
	end; 

	readln;
end.