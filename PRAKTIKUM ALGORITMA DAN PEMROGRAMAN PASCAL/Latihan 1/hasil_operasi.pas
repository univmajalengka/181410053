program hasil_operasi;
uses crt;

var
i:integer;
j:integer;

begin
clrscr;
i:=1;
j:=2;
writeln('Perogram Tampil Operasi Dan Hasil Operasi ');
writeln('==========================================');
writeln('| Operasi        |Hasil Operasi     |');
writeln('=========================================');
write('|' ,i, ' + ' ,j,  '|');write(i + j,'       |');
writeln();
write('|' ,i, ' - ' ,j,  '|');write(i - j,'      |');
writeln();
write('|' ,i, ' * ' ,j,  '|');write(i * j,'       |');
writeln();
write('|' ,i, 'div',j,   '|');write(i div j,'       |');
writeln();
write('|' ,i, 'mod' ,j,  '|');write(i mod j,'       |');
writeln();
writeln('=========================================-');
readln;
end.

