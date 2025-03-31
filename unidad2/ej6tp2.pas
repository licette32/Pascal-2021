program CompararCantidadFilas;

{$INCLUDE /IntroProg/Estructu}
{Realizar un programa para comparar la cantidad de elementos de las filas A y B. Si son iguales
dejar el tope de la pila Resultado en la pila VERDADERO y son distintas en la pila FALSO.}
var
  A, B: fila;
  Resultado, VERDADERO, FALSO: pila;
  elementoA, elementoB: integer;
  contadorA, contadorB: integer;

begin
  inicfila(A, 'Fila A');
  inicfila(B, 'Fila B');
  inicpila(Resultado, 'Pila Resultado');
  inicpila(VERDADERO, 'Pila Verdadero');
  inicpila(FALSO, 'Pila Falso');

  // Inicializar pilas VERDADERO y FALSO (puedes poner un valor representativo)
  apilar(VERDADERO, 1); // Por ejemplo, 1 representa verdadero
  apilar(FALSO, 0);    // Por ejemplo, 0 representa falso

  writeln('Ingrese los elementos para la fila A (separados por espacios y luego Enter):');
  readfila(A);

  writeln('Ingrese los elementos para la fila B (separados por espacios y luego Enter):');
  readfila(B);

  contadorA := 0;
  while not filavacia(A) do
  begin
    extraer(A, elementoA);
    contadorA := contadorA + 1;
  end;

  contadorB := 0;
  while not filavacia(B) do
  begin
    extraer(B, elementoB);
    contadorB := contadorB + 1;
  end;

  writeln('Cantidad de elementos en Fila A: ', contadorA);
  writeln('Cantidad de elementos en Fila B: ', contadorB);

  if contadorA = contadorB then
  begin
    writeln('Las filas tienen la misma cantidad de elementos.');
    // Dejar el tope de la pila Resultado en la pila VERDADERO
    while not pilavacia(Resultado) do
      desapilar(Resultado, elementoA); // Vaciar Resultado si tiene algo
    // No es necesario apilar nada en Resultado, el tope de VERDADERO ya está ahí
    // Si quisieras mover el tope de VERDADERO a Resultado:
    // apilar(Resultado, tope(VERDADERO));
  end
  else
  begin
    writeln('Las filas tienen una cantidad diferente de elementos.');
    // Dejar el tope de la pila Resultado en la pila FALSO
    while not pilavacia(Resultado) do
      desapilar(Resultado, elementoA); // Vaciar Resultado si tiene algo
    // No es necesario apilar nada en Resultado, el tope de FALSO ya está ahí
    // Si quisieras mover el tope de FALSO a Resultado:
    // apilar(Resultado, tope(FALSO));
  end;

  writeln('Resultado (tope indica si las cantidades eran iguales):');
  if not pilavacia(Resultado) then
    writeln(tope(Resultado))
  else if contadorA = contadorB then
    writeln(tope(VERDADERO))
  else
    writeln(tope(FALSO));

end.