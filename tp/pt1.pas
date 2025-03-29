program ejercicio:
{$INCLUDE/IntroProg/Estructu}
procedure sumaValoresNumericos(NUMEROS:fila; var RESULTADO:pila);
var
    aux1, aux2:pila;
    sumarnum:integer;
begin
    while not filavacia(NUMEROS) do
    begin
        apilar(aux1, extraer(NUMEROS));

        while not pilavacia(aux1) do
        begin
            sumarnum:= sumarnum+tope(aux1);
            apilar(aux2, dasapilar(aux1));
        end;
        apilar(RESULTADO, sumarnum);
        while not pilavacia(aux2) do
        begin
            apilar(aux1, dasapilar(aux2));
        end;
        desapilar(aux1);
    end;
end;
var
    NUMEROS:fila;
    RESULTADO:pila;
    sumarnum:integer;
begin
    readfila(NUMEROS);
    inicpila(RESULTADO,'');

    sumaValoresNumericos(NUMEROS, RESULTADO);

    writeln('RESULTADO');
    writepila(RESULTADO);
end.