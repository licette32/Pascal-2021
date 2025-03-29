Program PasaPila;

uses Estructu;
var
    Origen, Destino: Pila;

begin
    ReadPila(Origen);
    InicPila(Destino,'');
    While not PilaVacia(Origen) do
        Apilar(Destino, Desapilar(Origen));
    WritePila(Origen);
    WritePila(Destino);
end.
{
    PasaPila: Transfiere los elementos de una pila a otra, invirtiendo el orden.
    Lee la pila Origen y la pasa a Destino.
    La pila Origen queda vacia y la pila Destino queda con los elementos en orden inverso.
}
{ Ejemplo de uso:
    Origen: 1 2 3 4 5
    Destino: (vacía)
    Resultado:
        Origen: (vacía)
        Destino: 5 4 3 2 1
}
{
    Ejemplo de entrada:
        1 2 3 4 5
    Ejemplo de salida:
        Origen: (vacía)
        Destino: 5 4 3 2 1
}
{ Nota: La pila se representa como una lista enlazada. }
{ Nota: La función ReadPila lee una pila desde la entrada estándar. }
{ Nota: La función WritePila escribe una pila en la salida estándar. }