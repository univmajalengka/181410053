program penjumlahan_matriks;
uses crt;

procedure garis;
	begin
		writeln('=================================================');
	end;

var
	m1: array[1..20, 1..20] of Integer;
	m2: array[1..20, 1..20] of Integer;
	m3: array[1..20, 1..20] of Integer;

	i, j, m, n, x, y: Integer;

	ul: Char;
	
begin
	repeat
		
	clrscr;
	writeln('   Program Array Dua Dimensi Penjumlahan Matriks');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;

	write('Banyak baris : '); readln(m);
	write('Banyak kolom : '); readln(n);

	writeln;
	garis;
	writeln('Matriks Pertama : '); 
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
	writeln('Proses Penjumlahan');
	y := 15 + (2 * m);
	for i := 1 to m do 
	begin
		x := 11;
		for j := 1 to n do 
		begin
			m3[i,j] := m1[i,j] + m2[i,j];
			gotoxy(x, y);
			writeln(m1[i,j], ' + ', m2[i,j]);
			x := x + 15;
		end;
		y := y + 1;
	end;

	writeln;
	garis;
	writeln('Pejumlahan Matriks : ');
	for i := 1 to m do 
	begin
		for j := 1 to n do
		write(m3[i,j]:8); writeln; 
	end;

	writeln;
	garis;
	write('Mau Coba Lagi (Y/T) : '); readln(ul);
	garis;
	until upcase(ul)<>'Y';
	readln;
end.