program EncontrarElementoEnFila;

{$INCLUDE /IntroProg/Estructu}

procedure EncontrarPosicion(ORIGINAL: fila; elementoBuscado: integer; var posicion: integer);
var
  i: integer;
  elementoActual: integer;
begin
  posicion := -1; // Inicializar la posición como no encontrada
  for i := 1 to ORIGINAL.ultimo do
  begin
    extraer_en_posicion(ORIGINAL, i, elementoActual);
    if elementoActual = elementoBuscado then
    begin
      posicion := i;
      exit; // Salir del procedimiento al encontrar el elemento
    end;
  end;
end;

var
  miFila: fila;
  elementoBuscar, posicionEncontrada: integer;

begin
  writeln('--- Encontrar la posición de un elemento en una fila ---');

  // Inicializar la fila
  inicfila(miFila, '');
  writeln('Ingrese los elementos para la fila (enteros, separados por espacios y luego Enter):');
  readfila_int(miFila);

  write('Ingrese el elemento que desea buscar: ');
  readln(elementoBuscar);

  EncontrarPosicion(miFila, elementoBuscar, posicionEncontrada);

  if posicionEncontrada <> -1 then
    writeln('El elemento ', elementoBuscar, ' se encuentra en la posición: ', posicionEncontrada)
  else
    writeln('El elemento ', elementoBuscar, ' no se encuentra en la fila.');

  readln;
end.