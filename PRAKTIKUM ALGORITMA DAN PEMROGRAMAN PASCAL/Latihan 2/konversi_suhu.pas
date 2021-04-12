program konversi_suhu;

uses crt;
var
fahreinheit ,celsius :real;

BEGIN
clrscr;
writeln ('---------------------------------------');
writeln ('--konversi suhu fahrenheit ke celsius--');
writeln ('---------------------------------------');
writeln();
write ('masukan suhu fahreinheit : ');readln(fahreinheit);
celsius := (fahreinheit-32)*5/9;
writeln ('suhu dalam celsius = ',celsius:0:2);readln;
END.
