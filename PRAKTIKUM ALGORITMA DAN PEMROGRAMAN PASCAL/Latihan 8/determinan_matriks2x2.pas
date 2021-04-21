program determinan_matriks_2x2;
uses crt;

procedure garis;
	begin
		writeln('=================================================');
	end;

var
	m1: array[1..20, 1..20] of Integer;
	m2: array[1..20, 1..20] of Integer;
	m3: array[1..20, 1..20] of Integer;

	i, j, m, n, x, y, l: Integer;

	ul: Char;
	
begin
	repeat
		
	clrscr;
	writeln('   Program Array Dua Dimensi Determinan Matriks 2 x 2');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;

	m := 2;
	n := 2;

	writeln;
	garis;
	writeln('Matriks 2 x 2 : '); 
	y := 9;
	for i := 1 to m do 
	begin
		x := 13;
		for j := 1 to n do
		begin
		 	gotoxy(x, y);
		 	readln(m1[i,j]);
		 	x := x + 8;
		end; 
		y := y + 1;
	end;

	writeln;
	garis;

	(*
	writeln('Matriks Kedua : ');
	y := 12 + m;
	for i := 1 to m do
	begin
	 	x := 13;
	 	for j := 1 to n do
	 	begin
	 	 	gotoxy(x, y);
	 	 	readln(m2[i,j]);
	 	 	x := x + 8;
	 	end; 
	 	y := y + 1;
	end; 
	writeln;
	garis;
	*)

	writeln('Proses Determinan');
	y := 15 + (2 * m);
	for i := 1 to 1 do 
	begin
		x := 11;
		
			m3[i,j] := (m1[1,1] * m1[2,2]) - (m1[1,2] * m1[2,1]);
			gotoxy(x, y);
			writeln('( ',m1[1,1] ,' . ', m1[2,2],' ) - ( ' ,m1[1,2], ' . ', m1[2,1],' )');
			
		y := y + 1;
	end;

	writeln;
	garis;
	write('Hasil dari determinan Matriks diatas adalah : ');
	for i := 1 to 1 do 
	begin
		write(m3[i,j]:8); writeln; 
	end;

	writeln;
	garis;
	write('Mau Coba Lagi (Y/T) : '); readln(ul);
	garis;
	until upcase(ul)<>'Y';
	readln;
end.