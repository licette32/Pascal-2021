program MoverUltimoAlPrincipioFila;

{$INCLUDE /IntroProg/Estructu}

{Cargar por teclado la fila DATOS y pasar el último elemento de la fila DATOS a su primera
posición dejando los restantes elementos en el mismo orden. Finalmente imprima la fila por
pantalla.}

var
  DATOS: fila;
  ultimoElemento: integer;
  AUX_PILA: pila;
  elementoAux: integer;

begin
  inicfila(DATOS, '');
  inicpila(AUX_PILA, '');

  writeln('Ingrese los elementos para la fila DATOS (separados por espacios y luego Enter):');
  readfila(DATOS);

  if not filavacia(DATOS) then
  begin
    // Paso 1: Pasar todos los elementos de la fila a una pila (invirtiendo el orden)
    while not filavacia(DATOS) do
    begin
      extraer(DATOS, elementoAux);
      apilar(AUX_PILA, elementoAux);
    end;

    // Paso 2: Desapilar el último elemento (que ahora está en el tope de la pila)
    desapilar(AUX_PILA, ultimoElemento);

    // Paso 3: Volver a pasar los elementos restantes de la pila a la fila (restaurando el orden original excepto el último)
    while not pilavacia(AUX_PILA) do
    begin
      desapilar(AUX_PILA, elementoAux);
      insertar(DATOS, elementoAux);
    end;

    // Paso 4: Insertar el último elemento extraído al principio de la fila
    var AUX_FILA: fila;
    inicfila(AUX_FILA, '');
    insertar(AUX_FILA, ultimoElemento); // Insertar el último elemento al principio de la auxiliar

    // Pasar los elementos existentes de DATOS a AUX_FILA (manteniendo su orden)
    while not filavacia(DATOS) do
    begin
      extraer(DATOS, elementoAux);
      insertar(AUX_FILA, elementoAux);
    end;

    // Copiar los elementos de AUX_FILA de vuelta a DATOS
    while not filavacia(AUX_FILA) do
    begin
      extraer(AUX_FILA, elementoAux);
      insertar(DATOS, elementoAux);
    end;

    writeln('Fila DATOS con el último elemento al principio:');
    writefila(DATOS);
  end
  else
  begin
    writeln('La fila DATOS está vacía. No se puede mover ningún elemento.');
  end;

end.