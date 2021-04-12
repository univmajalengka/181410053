program biodata;
uses crt;

var
nama, npm, alamat, ttl, motto : string;
no_hp : string[15];

begin
clrscr;
writeln('BIODATA');
write('Nama             : ');readln(nama);
write('Npm              : ');readln(npm);
write('Alamat           : ');readln(alamat);
write('TTL              : ');readln(ttl);
write('No.HP            : ');readln(no_hp);
write('MOtto            : ');readln(motto);
readln;

end.