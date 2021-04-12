program menghitung_nilai_akhir;
uses crt;

var
	nilai, kuis, absen, uts, uas, tugas: Real;
	huruf_mutu: Char;
	
begin
	clrscr;

	writeln('Program Menghitung Nilai Predikat');
	writeln('_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_'); writeln;

	// jika ingin menginput nilai dulu di cmd nya
	{
		writeln('Masukan Nilai Anda');
		write('Absen : '); readln(absen);
		write('Tugas : '); readln(tugas);
		write('Quiz  : '); readln(kuis);
		write('UTS   : '); readln(uts);
		write('UAS   : '); readln(uas);
	}
	

	// jika kalau langsung input nilai di code editor nya
	kuis := 40;
	absen := 100;
	uts := 60;
	uas := 50;
	tugas := 80;

	writeln('Absen = ', absen:5:2);
	writeln('UTS   = ', uts:5:2);
	writeln('Tugas = ', tugas:5:2);
	writeln('UAS   = ', uas:5:2);
	writeln('Quiz  = ', kuis:5:2);

	nilai := ((0.1*absen) + (0.2*tugas) + (0.3*kuis) + (0.4*uts) + (0.5*uas))/2;

	if (nilai > 85) and (nilai <= 100) then
	huruf_mutu := 'A'
	else if (nilai > 70) and (nilai <= 85) then 
	huruf_mutu := 'B'
	else if (nilai > 55) and (nilai <= 70) then
	huruf_mutu := 'C'
	else if (nilai > 40) and (nilai <= 55) then
	huruf_mutu := 'D'
	else if (nilai >= 0) and (nilai <= 40) then
	huruf_mutu := 'E';

	writeln('Nilai Angka : ', nilai:5:2);
	writeln('Huruf Mutu  : ', huruf_mutu);
	readln;
end.