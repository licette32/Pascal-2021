
procedure EliminarSegúnTopeModelo(var DADA: pila; MODELO: pila);
var
  topeModelo: integer;
  AUX: pila;
  elementoDada: integer;
begin
  if not pilavacia(MODELO) then
  begin
    // Obtener el tope de la pila MODELO sin modificarla
    topeModelo := tope(MODELO);

    inicpila(AUX, 'Auxiliar');

    // Pasar a la pila auxiliar los elementos de DADA que NO son iguales al tope de MODELO
    while not pilavacia(DADA) do
    begin
      desapilar(DADA, elementoDada);
      if elementoDada <> topeModelo then
      begin
        apilar(AUX, elementoDada);
      end;
    end;

    // Volver a pasar los elementos de la pila auxiliar a DADA (invirtiendo el orden)
    while not pilavacia(AUX) do
    begin
      desapilar(AUX, elementoDada);
      apilar(DADA, elementoDada);
    end;
  end
  else
  begin
    writeln('Advertencia: La pila MODELO está vacía. No se puede realizar la eliminación.');
  end;
end;