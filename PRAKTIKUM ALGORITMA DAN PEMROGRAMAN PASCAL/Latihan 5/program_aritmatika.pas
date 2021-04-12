program aritmatika;
uses crt;

function FX(x:Integer): Integer;
	begin
		FX := x*x + 4*x - 5;
	end;

function FXY(x, y:Integer): Integer;
	begin
		FXY := x*x + 2*x*y - y*y;
	end;

var
	a: Integer;
	b: Integer;
	hasilFX: Integer;
	hasilFXY: Integer;
	
begin
	clrscr;
	writeln('Program Aritmatika');
	writeln('_-_-_-_-_-_-_-_-_-'); writeln;

	write('Masukan Nilai X : '); readln(a);
	write('Masukan Nilai Y : '); readln(b);
	writeln('====================');

	hasilFX := FX(a);
	hasilFXY := FXY(a,b);

	writeln('FX  = ', hasilFX);
	writeln('FXY = ', hasilFXY);
	writeln('====================');

	readln;
end.