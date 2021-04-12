program biodata2;
uses crt;

procedure judul;
	begin
		writeln('   Program Biodata ke-2 dengan Prosedur');
		writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;
	end;
procedure garis;
	begin
		writeln('===========================================');
	end;

procedure biodata;
var
	nama, npm, jenis_kelamin, alamat, umur, tempat, tanggal_lahir, kontak_wa, email: String;
	
	begin
		write('Masukan Nama              : '); readln(nama);
		write('Masukan NPM               : '); readln(npm);
		write('Masukan Tempat Lahir      : '); readln(tempat);
		write('Masukan Tanggal Lahir     : '); readln(tanggal_lahir);
		write('Masukan Jenis Kelamin     : '); readln(jenis_kelamin);
		write('Masukan Alamat            : '); readln(alamat);
		write('Masukan Umur              : '); readln(umur);
		write('Masukan No. HP (Whatsapp) : '); readln(kontak_wa);
		write('Masukan Email             : '); readln(email);
		writeln;

		garis;

		writeln('Nama                  : ', nama);
		writeln('NPM                   : ', npm);
		writeln('Tempat, Tanggal Lahir : ', tempat, ', ', tanggal_lahir);
		writeln('Jenis Kelamin         : ', jenis_kelamin);
		writeln('Alamat                : ', alamat);
		writeln('Umur                  : ', umur);
		writeln('No. HP (Whatsapp)     : ', kontak_wa);
		writeln('Email                 : ', email);
	end;	

begin
	clrscr;

	judul;
	biodata;
	garis;

	readln;
end.