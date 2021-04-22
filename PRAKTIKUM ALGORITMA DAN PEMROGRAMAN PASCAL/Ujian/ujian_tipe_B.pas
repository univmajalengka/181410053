{Nama   : Syalman Hakim}
{NPM    : 18.14.1.0053}
{Kelompok : Kelompok 1}
{Tipe B}

program tipe_B;
uses crt;
var
	panjang_halaman, lebar_halaman, panjang_kolam, lebar_kolam,
	lahan_kramik, luas_halaman, luas_kolam : integer;

begin
	clrscr;
	writeln('================================================');
	writeln('============	Program Hitung ================');
	writeln('================================================');

	write('Masukan panjang halaman        : ');readln(panjang_halaman);
	write('Masukan lebar halaman          : ');readln(lebar_halaman);
	luas_halaman := panjang_halaman*lebar_halaman;
	writeln('Luas Halaman adalah ',luas_halaman,' meter');
	writeln('================================================');

	write('Masukan panjang kolam            : ');readln(panjang_kolam);
	write('Masukan lebar kolam              : ');readln(lebar_kolam);
	luas_kolam := panjang_kolam*lebar_kolam;
	writeln('Luas Kolam adalah ',luas_kolam,' meter');
	writeln('================================================');

	writeln('Lahan Keramik = Luas Halaman - Luas Kolam');
	lahan_kramik := luas_halaman - luas_kolam;
	writeln('Jadi Lahan Keramik adalah ',lahan_kramik,' meter');
    writeln('================================================');
    readln;

end.
