program ejercicio5;
{Cargar por teclado una pila Origen y pasar a pila Distinto todos 
aquellos elementos que preceden al valor 5}

var
    Origen, Distinto: pila;

begin
    inicpila(Origen,'');
    inicpila(Distinto,'');
    readpila(Origen):
    if not pilavacia(Origen) then
        while tope(Origen) <> 5 do
            apilar(Distinto, desapilar(Origen));
end.