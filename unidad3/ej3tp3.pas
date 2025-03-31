procedure IntercalarFilasOrdenadas(ORDENADA1: fila; ORDENADA2: fila; var ORDENADAFINAL: fila);
var
  elemento1, elemento2: integer;
  existe1, existe2: boolean;
begin
  inicfila(ORDENADAFINAL, 'Ordenada Final');

  // Crear copias de las filas para no modificarlas directamente
  var copia1: fila;
  inicfila(copia1, 'Copia 1');
  CopiarFila(ORDENADA1, copia1);

  var copia2: fila;
  inicfila(copia2, 'Copia 2');
  CopiarFila(ORDENADA2, copia2);

  existe1 := not filavacia(copia1);
  existe2 := not filavacia(copia2);

  while existe1 or existe2 do
  begin
    if existe1 and (not existe2 or (primero(copia1) <= primero(copia2))) then
    begin
      extraer(copia1, elemento1);
      insertar(ORDENADAFINAL, elemento1);
    end
    else if existe2 then
    begin
      extraer(copia2, elemento2);
      insertar(ORDENADAFINAL, elemento2);
    end;

    existe1 := not filavacia(copia1);
    existe2 := not filavacia(copia2);
  end;
end;

procedure CopiarFila(ORIGEN: fila; var DESTINO: fila);
var
  AUX: fila;
  elemento: integer;
begin
  inicfila(AUX, 'Auxiliar');
  while not filavacia(ORIGEN) do
  begin
    extraer(ORIGEN, elemento);
    insertar(AUX, elemento);
  end;
  while not filavacia(AUX) do
  begin
    extraer(AUX, elemento);
    insertar(DESTINO, elemento);
  end;
end;

// Función auxiliar para obtener el primer elemento sin extraerlo
function primero(F: fila): integer;
var
  AUX: fila;
  elemento: integer;
  primer: integer;
begin
  inicfila(AUX, 'Aux Primero');
  if not filavacia(F) then
  begin
    extraer(F, primer);
    insertar(AUX, primer);
    while not filavacia(F) do
    begin
      extraer(F, elemento);
      insertar(AUX, elemento);
    end;
    while not filavacia(AUX) do
    begin
      extraer(AUX, elemento);
      insertar(F, elemento);
    end;
    primero := primer;
  end
  else
    primero := -MaxInt; // Valor pequeño si la fila está vacía
end;

program IntercalarFilas;
{$INCLUDE /IntroProg/Estructu} // Asegúrate de que la ruta sea correcta

var
  ORDENADA1, ORDENADA2, ORDENADAFINAL: fila;

begin
  // Ejemplo de carga desde teclado (puedes descomentar para probar)
  /*
  writeln('Ingrese los elementos para la fila ORDENADA1 (creciente, separados por espacios):');
  readfila(ORDENADA1);
  writeln('Ingrese los elementos para la fila ORDENADA2 (creciente, separados por espacios):');
  readfila(ORDENADA2);
  */

  // Pruebas del comportamiento (parte b) se realizan directamente en el programa principal

  writeln('--- Prueba a) ---');
  inicfila(ORDENADA1, 'Ordenada 1');
  insertar(ORDENADA1, 2);
  insertar(ORDENADA1, 5);
  insertar(ORDENADA1, 8);
  insertar(ORDENADA1, 19);
  insertar(ORDENADA1, 22);
  inicfila(ORDENADA2, 'Ordenada 2');
  IntercalarFilasOrdenadas(ORDENADA1, ORDENADA2, ORDENADAFINAL);
  writeln('ORDENADA1:');
  writefila(ORDENADA1);
  writeln('ORDENADA2:');
  writefila(ORDENADA2);
  writeln('ORDENADAFINAL (a):');
  writefila(ORDENADAFINAL);
  writeln;

  writeln('--- Prueba b) ---');
  inicfila(ORDENADA1, 'Ordenada 1');
  inicfila(ORDENADA2, 'Ordenada 2');
  insertar(ORDENADA2, 2);
  insertar(ORDENADA2, 5);
  insertar(ORDENADA2, 8);
  insertar(ORDENADA2, 19);
  insertar(ORDENADA2, 22);
  IntercalarFilasOrdenadas(ORDENADA1, ORDENADA2, ORDENADAFINAL);
  writeln('ORDENADA1:');
  writefila(ORDENADA1);
  writeln('ORDENADA2:');
  writefila(ORDENADA2);
  writeln('ORDENADAFINAL (b):');
  writefila(ORDENADAFINAL);
  writeln;

  writeln('--- Prueba c) ---');
  inicfila(ORDENADA1, 'Ordenada 1');
  insertar(ORDENADA1, 2);
  insertar(ORDENADA1, 5);
  insertar(ORDENADA1, 8);
  insertar(ORDENADA1, 19);
  insertar(ORDENADA1, 22);
  inicfila(ORDENADA2, 'Ordenada 2');
  insertar(ORDENADA2, 3);
  insertar(ORDENADA2, 5);
  insertar(ORDENADA2, 11);
  insertar(ORDENADA2, 12);
  insertar(ORDENADA2, 13);
  IntercalarFilasOrdenadas(ORDENADA1, ORDENADA2, ORDENADAFINAL);
  writeln('ORDENADA1:');
  writefila(ORDENADA1);
  writeln('ORDENADA2:');
  writefila(ORDENADA2);
  writeln('ORDENADAFINAL (c):');
  writefila(ORDENADAFINAL);
  writeln;

end.