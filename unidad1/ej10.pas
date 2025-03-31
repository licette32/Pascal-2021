program ejercicio10;

{Tengo una pila Modelo que no etsa vacía, y de la pila DADA elimino todos los
elementos que son iguales al tope de la pila modelo.}
{$INCLUDE /IntroProg/Estructu}

var
    DADA, Modelo, Auxiliar:pila;

begin
    readPila(DADA);
    inicpila(Modelo,'2 4');
    inicpila(Auxiliar,'');
    while not pilavacia(DADA) do
    begin
        if tope(DADA) = tope(Modelo) then
            desapilar(DADA)
        else
            apilar(Auxiliar, desapilar(DADA))
        end;
    while not pilavacia(Auxiliar) do
        begin
            apilar(DADA, desapilar(Auxiliar));
        end;
    writeln('Dada pila sin los elementos iguales al tope de la pila modelo: ');
    writepila(DADA);
    writeln('Modelo: ');
    writepila(Modelo);
end.