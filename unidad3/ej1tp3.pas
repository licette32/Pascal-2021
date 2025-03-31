program EliminarRepetidosPila;

{$INCLUDE /IntroProg/Estructu}

procedure EliminarRepetidos(var DADA: pila);
var
  AUX: pila;
  ELEMENTO: integer;
begin
  inicpila(AUX, 'Auxiliar');

  while not pilavacia(DADA) do
  begin
    desapilar(DADA, ELEMENTO);
    if not ExisteEnPila(AUX, ELEMENTO) then
    begin
      apilar(AUX, ELEMENTO);
    end;
  end;

  // Vaciar AUX a DADA para mantener el orden relativo de los elementos únicos
  while not pilavacia(AUX) do
  begin
    desapilar(AUX, ELEMENTO);
    apilar(DADA, ELEMENTO);
  end;
end;

function ExisteEnPila(P: pila; E: integer): boolean;
var
  AUX_BUSQUEDA: pila;
  ELEMENTO_BUSQUEDA: integer;
  ENCONTRADO: boolean;
begin
  inicpila(AUX_BUSQUEDA, 'Aux Busqueda');
  ENCONTRADO := false;

  while not pilavacia(P) do
  begin
    desapilar(P, ELEMENTO_BUSQUEDA);
    if ELEMENTO_BUSQUEDA = E then
      ENCONTRADO := true;
    apilar(AUX_BUSQUEDA, ELEMENTO_BUSQUEDA);
  end;

  // Restaurar la pila original
  while not pilavacia(AUX_BUSQUEDA) do
  begin
    desapilar(AUX_BUSQUEDA, ELEMENTO_BUSQUEDA);
    apilar(P, ELEMENTO_BUSQUEDA);
  end;

  ExisteEnPila := ENCONTRADO;
end;

var
  DADA: pila;
  elemento: integer;
  i, n: integer;

begin
  inicpila(DADA, 'DADA');

  writeln('Ingrese la cantidad de elementos para la pila DADA:');
  readln(n);

  writeln('Ingrese los ', n, ' elementos para la pila DADA (uno por línea):');
  for i := 1 to n do
  begin
    readln(elemento);
    apilar(DADA, elemento);
  end;

  writeln('Pila DADA antes de eliminar repetidos:');
  writepila(DADA);

  EliminarRepetidos(DADA);

  writeln('Pila DADA después de eliminar repetidos:');
  writepila(DADA);

end.
