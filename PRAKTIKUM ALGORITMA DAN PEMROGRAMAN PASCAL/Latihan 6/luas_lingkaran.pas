program luas_lingkaran;
uses crt;

procedure judul;
	begin
		writeln('Program Luas Lingkaran dengan Prosedur');
		writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;
	end;
procedure garis;
	begin
		writeln('======================================');
	end;

procedure luas_lingkaran(var luas: Real);
	var
		diameter, jari: Real;
	begin
		write('Masukan Diameter Lingkaran (cm) : '); readln(diameter);

		jari := diameter / 2;
		luas := 3.14 * (jari*jari);

	end;
	
var
	L: Real;

begin
	clrscr;

	judul;	
	luas_lingkaran(L);
	garis;
	writeln('Luas Lingkaran adalah ', L:0:2, ' cm');
	garis;

	readln;
end.