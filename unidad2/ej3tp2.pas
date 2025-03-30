program MoverPrimeroAlFinalCorto;

{$INCLUDE /IntroProg/Estructu}

var
  DATOS: fila;
  primerElemento: integer;

begin
  inicfila(DATOS, '');

  writeln('Ingrese los elementos para la fila DATOS (separados por espacios y luego Enter):');
  readfila(DATOS);

  if not filavacia(DATOS) then
  begin
    extraer(DATOS, primerElemento);
    insertar(DATOS, primerElemento); // El primer elemento ahora está al final
  end;

  writeln('Fila DATOS con el primer elemento al final:');
  writefila(DATOS);

end.
{
  Este programa mueve el primer elemento de una fila al final de la misma.
  Se utiliza una fila para almacenar los elementos y se implementan las funciones
  necesarias para manipularla.
}