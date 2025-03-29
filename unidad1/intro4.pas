Program PasajeTope;
{Este programa pasa el tope de la pila a la pila menor si es menor estricto
al tope de modelo, caso contrario lo pasa a la pila mayor}

var
    DADA, MODELO, MENOR, MAYOR: Pila;

begin
    readPila(DADA);
    inicPila(MODELO,'4');
    inicPila(MENOR,'');
    inicPila(MAYOR,'');
    if not pilaVacia(DADA) then
        if tope(DADA) < tope(MODELO)
            then
                apilar(MENOR, desapilar(DADA))
            else
                apilar(MAYOR, desapilar(DADA));
        writePila(DADA);
        writePila(MENOR);
        writePila(MAYOR);
end.