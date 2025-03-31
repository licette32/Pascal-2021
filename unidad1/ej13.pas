program ejercicio13;
{$INCLUDe/introprog/estructu}

var
	origen, indicador, par, impar, aux1,aux2:pila;
begin
	readpila(origen);
	inicpila(indicador,'1');
	inicpila(aux1, '');
	inicpila(impar, '');
	inicpila(aux2, '');
	inicpila(par,'');

	while not pilavacia(origen) do begin
			apilar(aux1, desapilar(origen));
		if not pilavacia(origen) then
			apilar (aux2, desapilar(origen));
		else begin
		apilar(impar, desapilar(indicador));
		writeln('es impar');
		end;
	end;
	if pilavacia(impar) then begin
		apilar(par, desapilar(indicador));
	writeln('la cantidad es par')
	end;
end.

PROGRAM EJERCICIO13R;
{$INCLUDE/INTROPROG/ESTRUCTU}
var
	dada, aux, par, pimpar:pila;
begin
	writeln('ingresar cantidad de elementos');
	readpila(dada);
	inicpila(aux,'');
	inicpila(par,'');
	inicpila(impar,'');
	white not pilavacia(dada) do begin
		apilar(aux, desapilar(dada));
			if pilavacia(dada) dada
				apilar(impar, desapilar(aux));
			ELSE
				APILAR(AUX, DESAPILAR(AUX));
	end;
	if pila vacia(dada) then
		apilar(par, desapilar(aux));
	writeln('elementos pila dada');
	writepila(dada);
	writeln('elementos pila aux');
	writepila(aux);
	writeln('elementos pila par');
	writepila(par);
	writeln('elementos pila impar');
	writepila(impar);
end.