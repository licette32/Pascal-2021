program InvertirFila;
{Invertir el orden de la fila DADA leida por teclado.
  Para ello, se pasaran los elementos de la fila DADA a una pila AUX_PILA y luego de la pila a una fila RESULTADO.}
{$INCLUDE /IntroProg/Estructu}

var
  DADA: fila;
  AUX_PILA: pila;
  RESULTADO: fila;
  elemento: integer;

begin
  inicfila(DADA, '');
  inicpila(AUX_PILA, '');
  inicfila(RESULTADO, '');

  writeln('Ingrese los elementos para la fila DADA (separados por espacios y luego Enter):');
  readfila(DADA);

  writeln('Invirtiendo el orden de la fila DADA...');

  // Paso 1: Pasar los elementos de la fila DADA a la pila AUX_PILA
  while not filavacia(DADA) do
  begin
    extraer(DADA, elemento);
    apilar(AUX_PILA, elemento);
  end;

  writeln('Contenido de la pila auxiliar (orden inverso de la fila original):');
  writepila(AUX_PILA);

  // Paso 2: Pasar los elementos de la pila AUX_PILA de vuelta a la fila RESULTADO
  while not pilavacia(AUX_PILA) do
  begin
    desapilar(AUX_PILA, elemento);
    insertar(RESULTADO, elemento); // Usamos 'insertar' para mantener el orden al pasar de la pila a la fila
  end;

  writeln('Fila RESULTADO con el orden invertido:');
  writefila(RESULTADO);

  writeln('Contenido restante de la fila DADA (debería estar vacía):');
  writefila(DADA);

  writeln('Contenido restante de la pila auxiliar (debería estar vacía):');
  writepila(AUX_PILA);
end.