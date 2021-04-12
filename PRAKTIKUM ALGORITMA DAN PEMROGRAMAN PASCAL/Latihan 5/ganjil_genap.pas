program function_ganjilGenap;
uses crt;

function bilangan(a:Integer): Boolean;
   begin
		bilangan := (a mod 2 = 0);
   end;

var
		a: Integer;	

begin
	clrscr;
	writeln('Program Fungsi Bilangan Ganjil & Genap');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;
	write('Masukan Bilangan : '); readln(a);
	writeln;
	if bilangan(a) then
		write('Bilangan ini adalah bilangan Genap')
	else
		write('Bilangan ini adalah bilangan Ganjil');	

	readln;
end.