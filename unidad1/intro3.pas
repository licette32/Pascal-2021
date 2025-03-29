Program PasaTope;
{Este Programa pasa el tope de la pila Origen a Destino}
{y avisa si la Pila Origen es vacia}
uses Estructu;
var
    Origen, Destino: Pila;

begin
    ReadPila(Origen);
    InicPila(Destino,'');
    if not PilaVacia(Origen) then
         begin 
            Apilar(Destino, Desapilar(Origen));
            WritePila(Origen);
            WritePila(Destino)
        end
    else
        WriteIn('La Pila Origen está vacía');
end.