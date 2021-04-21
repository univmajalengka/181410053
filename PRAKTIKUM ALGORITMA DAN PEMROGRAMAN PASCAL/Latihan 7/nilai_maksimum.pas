program nilai_maksimum;
uses crt;

const
	Nmin = 1;
	Nmax = 10;

type
	domain = Nmin..Nmax;
	tNilai = record
		nomor : Integer;
		nama : String;
		nilai : Integer;
	end;

var
	dataNilai: array[domain] of tNilai;
	Ndata : Integer;
	imax : Integer;

procedure Isi_Data;
	var
		i: Integer;
	begin
		for i := 1 to Ndata do 
		begin
			writeln('Nomor = ', i);
			dataNilai[i].nomor := 1;
			write('Nama  = '); readln(dataNilai[i].nama);
			write('Nilai = '); readln(dataNilai[i].nilai);
		end;
	end;

procedure Tulis_Data;
	var 
		i: Integer;

	begin
		writeln('No. | Nilai | Nama');
		for i := 1 to Ndata do (* Masih can bener angka (nomor) na *)
			writeln(i, '   | ', dataNilai[i].nilai:3, '   | ', dataNilai[i].nama:3);
		
	end;

function Cari_Maksimum : Integer;
	var
		i: Integer;
		im: Integer;
		begin
			im := 1;
			for i := 2 to Ndata do 
			if dataNilai[i].nilai > dataNilai[im].nilai then 
			im := i;
			Cari_Maksimum := im;
		end;
	
begin
	clrscr;
	write('Jumlah Data (1 - 10) : '); readln(Ndata);
	Isi_Data;
	
	clrscr;
	writeln;
	Tulis_Data;
	writeln;

	imax := Cari_Maksimum;
	write('Nilai Tertinggi = ', dataNilai[imax].nilai);

	readln;
end.