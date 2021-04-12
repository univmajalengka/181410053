program luas_persegi;
uses crt;

procedure judul;
	begin
		writeln('Program Luas Persegi dengan Prosedur');
		writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;
	end;
procedure garis;
	begin
		writeln('====================================');
	end;

procedure luas_persegi(sisi:Real);
	var
		luas: Real;
	begin
		luas := sisi*sisi;
		writeln('Luas Persegi adalah ', luas:0:0, ' cm');
	end;
	
var
	s: Real;

begin
	clrscr;
	
	judul;
	write('Masukan Sisi Persegi (cm) : '); readln(s);
	garis;
	luas_persegi(s);
	garis;

	readln;
end.