{Realizar los siguientes ejercicios de manera basica: 
1) Cargar desde el teclado una pila DADA con 3 elementos. Pasar los dos primeros elementos a la
pila CJTO1 y el restante a la pila CJTO2, ambas pilas inicializadas en vacío.}

program PilasBasico;


var
    DADA, CJTO1, CJTO2: Pila;


begin
    ReadPila(DADA);
    InicPila(CJTO1,'');
    InicPila(CJTO2,'');
    while not PilaVacia(DADA) do
        if Tope(DADA)
        then begin
            Apilar(CJTO1, Desapilar(DADA));
            if not PilaVacia(DADA) then
                Apilar(CJTO2, Desapilar(DADA));
        end;
    end;
    WriteLn('Pila DADA: ');
    WritePila(DADA);
    WriteLn('Pila CJTO1: ');
    WritePila(CJTO1);
end.
