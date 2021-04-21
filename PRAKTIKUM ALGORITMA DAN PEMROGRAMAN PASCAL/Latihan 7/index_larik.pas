program indeks_larik;
uses crt;

var
	x: array[1..100] of Integer;
	i, n: Integer;
	ul: Char;

procedure CekIndeks(m:Integer);
	var
		t: Integer;

	begin
		writeln;
		write('Nomor Indeks > Total Nilai Larik sebelumnya adalah : ');
		t := 0;
		for i := 1 to m-1 do
		begin
		 	t := t+x[i];
		 	if x[i+1]>t then
		 	write(i+1, ' '); 
		end; 
	end;
	
begin
	repeat
		clrscr;
		writeln(' Program Menentukan Indeks Larik');
		writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-'); writeln;

		write('Jumlah Data : '); readln(n);
		writeln;

		for i := 1 to n do
		begin
		 	write('Data ke-', i, ': '); readln(x[i]);
		end;
		CekIndeks(n);
		writeln;
		writeln;
		write('Mau Coba Lagi (Y/T): '); readln(ul); 
	until upcase(ul)<>'Y';

	readln;
end.