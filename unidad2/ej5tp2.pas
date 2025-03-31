program PasarElementosHastaCero;

{$INCLUDE /IntroProg/Estructu}
{Dada una fila no vacia ORIGEN, pasar todos los elementos DESTINO hasta que aparezca un cero u ORIGEN quede sin elementos.}
var
  ORIGEN: fila;
  DESTINO: fila;
  elemento: integer;

begin
  inicfila(ORIGEN, '');
  inicfila(DESTINO, '');

  writeln('Ingrese los elementos para la fila ORIGEN (separados por espacios y luego Enter):');
  readfila(ORIGEN);

  writeln('Pasando elementos de ORIGEN a DESTINO hasta encontrar un cero o que ORIGEN quede vacía...');

  while not filavacia(ORIGEN) do
  begin
    extraer(ORIGEN, elemento);
    if elemento = 0 then
    begin
      // Se encontró un cero, detener el proceso
      insertar(DESTINO, elemento); // Opcional: incluir el cero en DESTINO
      break;
    end;
    insertar(DESTINO, elemento);
  end;

  writeln('Elementos en la fila DESTINO:');
  writefila(DESTINO);

  writeln('Elementos restantes en la fila ORIGEN:');
  writefila(ORIGEN);

end.