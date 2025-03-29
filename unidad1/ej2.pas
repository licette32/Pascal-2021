// Versión con if (condicional)
program PilasIf;

type
    TPila = array[1..10] of integer;
    
var
    Pila1, Resultado, OtroResultado: TPila;
    topeP1, topeRes, topeOtro, valor: integer;

procedure Apilar(var Pila: TPila; var tope: integer; valor: integer);
begin
    tope := tope + 1;
    Pila[tope] := valor;
end;

function Desapilar(var Pila: TPila; var tope: integer): integer;
begin
    Desapilar := Pila[tope];
    tope := tope - 1;
end;

begin
    { Inicializar topes de las pilas }
    topeP1 := 0;
    topeRes := 0;
    topeOtro := 0;

    { Cargar Pila1 con valores de prueba }
    Apilar(Pila1, topeP1, 19);
    Apilar(Pila1, topeP1, 10);
    Apilar(Pila1, topeP1, 6);

    { Verificar el tope de Pila1 y apilar en la pila correspondiente }
    if topeP1 > 0 then
    begin
        if Pila1[topeP1] < 10 then
            Apilar(Resultado, topeRes, Desapilar(Pila1, topeP1))
        else
            Apilar(OtroResultado, topeOtro, Desapilar(Pila1, topeP1));
    end;

    { Mostrar resultados }
    writeln('Pila Resultado: ', Resultado[topeRes]);
    writeln('Pila OtroResultado: ', OtroResultado[topeOtro]);
end.
