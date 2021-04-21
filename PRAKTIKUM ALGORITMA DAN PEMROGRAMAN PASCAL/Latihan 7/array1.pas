program array1;
uses crt;

var
	nilai: array[0..3] of Integer; 
	
begin
	clrscr;
	writeln('     Program Array');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;

	nilai[0] := 23;
	nilai[1] := 46;
	nilai[2] := 25;
	nilai[3] := 100;

	writeln('Isi array bilangan pertama : ', nilai[0]);
	writeln('Isi array bilangan kedua   : ', nilai[1]);
	writeln('Isi array bilangan ketiga  : ', nilai[2]);
	writeln('Isi array bilangan keempat : ', nilai[3]);

	readln;
end.