program funtion2;
uses crt;

function luas(a,b:Integer): Integer;	
begin
	luas := a*b;

end;

var
	x,y: Integer;

begin
	clrscr;
	writeln('Program Persegi Panjang');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	write('Masukan Lebar : '); readln(x);
	write('Masukan Panjang : '); readln(y);
	writeln('Luas Persegi Panjang adalah : ', luas(x,y));

	readln;
end.