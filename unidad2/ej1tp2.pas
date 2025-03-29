program PasarFilaAPila;
{Pasar los elementos de la fila ORIGEN leída por teclado a la pila DESTINO inicialmente vacía.}
{$INCLUDE /IntroProg/Estructu} // Asegúrate de que la ruta al archivo sea correcta

var
  ORIGEN: fila;
  DESTINO: pila;
  elemento: integer;

begin
  inicfila(ORIGEN, '');
  inicpila(DESTINO, '');

  writeln('Ingresar los elementos para la fila ORIGEN (separados por espacios y luego Enter):');
  readfila(ORIGEN);

  writeln('Pasando elementos de la fila ORIGEN a la pila DESTINO...');

  while not filavacia(ORIGEN) do
  begin
    extraer(ORIGEN, elemento);
    apilar(DESTINO, elemento);
  end;

  writeln('Elementos en la pila DESTINO:');
  writepila(DESTINO);

  writeln('Elementos restantes en la fila ORIGEN:');
  writefila(ORIGEN); // Debería estar vacía
end.