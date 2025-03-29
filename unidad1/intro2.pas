Program PasaTope;
{Este progrmama lee los datos de una pila y pasa el tope a otra pila}

uses Estructu; 

var Origen, Destino: pila;

Begin
    ReadPila(Origen);
    InicPila(Destino,'');
    if not PilaVacia(Origen) then
        Apilar (Destino, Desapilar(Origen));
    WritePila(Origen);
    WritePila(Destino);
end.