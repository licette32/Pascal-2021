program SumaNPrimeros;

{$INCLUDE /IntroProg/Estructu}

procedure SumarNPrimerosNaturales(N: integer; var suma: integer);
var
  i: integer;
begin
  suma := 0;
  for i := 1 to N do
  begin
    suma := suma + i;
  end;
end;

var
  n, resultadoSuma: integer;

begin
  writeln('--- Suma de los N primeros números naturales ---');
  write('Ingrese el valor de N: ');
  readln(n);

  SumarNPrimerosNaturales(n, resultadoSuma);

  writeln('La suma de los ', n, ' primeros números naturales es: ', resultadoSuma);

  readln;
end.