program ejercicio4;

{$INCLUDE/IntroProg}

var
    DADA, Distintos, Auxiliar: Pila;

begin
    ReadPila(DADA);
    InicPila(Distintos,'');
    InicPila(Auxiliar,'');
    while not PilaVacia(DADA) do
        if tope(DADA) <> 8 then
            apilar(Auxiliar, desapilar(DADA))
        else
            apilar(Distintos, desapilar(DADA));
        begin
            while not PilaVacia(Auxiliar) do
                apilar(DADA, desapilar(Auxiliar));
        end;
    writeln('Pila Distintos: ');
end.