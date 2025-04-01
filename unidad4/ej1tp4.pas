program IntercambioVariablesOptimizado;

{$INCLUDE /IntroProg/Estructu}

procedure Intercambiar(var a; var b; tipo: integer);
var
  tempInt: integer;
  tempChar: char;
begin
  if tipo = 1 then // Intercambio de enteros
  begin
    tempInt := a;
    a := b;
    b := tempInt;
  end
  else if tipo = 2 then // Intercambio de caracteres
  begin
    tempChar := a;
    a := b;
    b := tempChar;
  end;
end;

var
  num1, num2: integer;
  car1, car2: char;

begin
  writeln('--- Intercambio de Variables ---');

  // Intercambio de enteros
  num1 := 15;
  num2 := 30;
  writeln('Enteros iniciales: num1 = ', num1, ', num2 = ', num2);
  Intercambiar(num1, num2, 1);
  writeln('Enteros intercambiados: num1 = ', num1, ', num2 = ', num2);

  // Intercambio de caracteres
  car1 := 'x';
  car2 := 'y';
  writeln('Caracteres iniciales: car1 = ', car1, ', car2 = ', car2);
  Intercambiar(car1, car2, 2);
  writeln('Caracteres intercambiados: car1 = ', car1, ', car2 = ', car2);

  writeln;
  writeln('--- Diferencias (Conceptual) ---');
  writeln('El procedimiento de intercambio es logicamente el mismo para enteros y caracteres.');
  writeln('La diferencia radica en el tipo de dato almacenado en las variables.');

  readln;
end.