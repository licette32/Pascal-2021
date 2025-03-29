{Realizar los siguientes ejercicios de manera basica: 
1) Cargar desde el teclado una pila DADA con 3 elementos. Pasar los dos primeros elementos a la
pila CJTO1 y el restante a la pila CJTO2, ambas pilas inicializadas en vacío.}

program PilasBasico;

type
    TPila = array[1..3] of integer;

var
    DADA, CJTO1, CJTO2: TPila;
    i, tope, valor: integer;
begin
    tope := 0;
    writeln('Ingrese hasta 3 valores para la pila DADA:');
    for i := 1 to 3 do
    begin
        readln(valor);
        tope := tope + 1;
        DADA[tope] := valor;
    end;
    
    if tope > 0 then
    begin
        CJTO1[1] := DADA[tope]; tope := tope - 1;
    end;
    if tope > 0 then
    begin
        CJTO1[2] := DADA[tope]; tope := tope - 1;
    end;
    if tope > 0 then
    begin
        CJTO2[1] := DADA[tope]; tope := tope - 1;
    end;
    
    writeln('Pila CJTO1: ', CJTO1[1], ' ', CJTO1[2]);
    writeln('Pila CJTO2: ', CJTO2[1]);
end.
