procedure EliminarElementosEnModelo(var DADA: pila; MODELO: pila);
var
  AUX_DADA: pila;
  elementoDada: integer;

  function ExisteEnPila(P: pila; E: integer): boolean;
  var
    AUX_BUSQUEDA: pila;
    elementoPila: integer;
    encontrado: boolean;
  begin
    inicpila(AUX_BUSQUEDA, 'Aux Busqueda');
    encontrado := false;
    while not pilavacia(P) do
    begin
      desapilar(P, elementoPila);
      if elementoPila = E then
        encontrado := true;
      apilar(AUX_BUSQUEDA, elementoPila);
    end;
    // Restaurar la pila MODELO (importante no modificar la original)
    var AUX_RESTAURAR: pila;
    inicpila(AUX_RESTAURAR, 'Aux Restaurar');
    while not pilavacia(AUX_BUSQUEDA) do
    begin
      desapilar(AUX_BUSQUEDA, elementoPila);
      apilar(AUX_RESTAURAR, elementoPila);
    end;
    while not pilavacia(AUX_RESTAURAR) do
    begin
      desapilar(AUX_RESTAURAR, elementoPila);
      apilar(P, elementoPila);
    end;
    ExisteEnPila := encontrado;
  end;

begin
  inicpila(AUX_DADA, 'Aux DADA');

  while not pilavacia(DADA) do
  begin
    desapilar(DADA, elementoDada);
    if not ExisteEnPila(MODELO, elementoDada) then
    begin
      apilar(AUX_DADA, elementoDada);
    end;
  end;

  // Vaciar AUX_DADA a DADA (invirtiendo el orden)
  while not pilavacia(AUX_DADA) do
  begin
    desapilar(AUX_DADA, elementoDada);
    apilar(DADA, elementoDada);
  end;
end;