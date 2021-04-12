program biodata;
uses crt;

procedure judul;
	begin
		writeln('Program Biodata dengan Prosedur');
		writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	end;
procedure garis;
	begin
		writeln('===============================');
	end;

procedure biodata;
var
	nama, jenis_kelamin, alamat, umur: String;
	
	begin
		write('Masukan Nama          : '); readln(nama);
		write('Masukan Jenis Kelamin : '); readln(jenis_kelamin);
		write('Masukan Alamat        : '); readln(alamat);
		write('Masukan Umur          : '); readln(umur);
		writeln;

		garis;

		writeln('Nama          : ', nama);
		writeln('Jenis Kelamin : ', jenis_kelamin);
		writeln('Alamat        : ', alamat);
		writeln('Umur          : ', umur);
	end;	

begin
	clrscr;

	judul;
	biodata;
	garis;

	readln;
end.