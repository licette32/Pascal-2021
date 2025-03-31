programa ejercicio11;
{$INCLUDE/introprog/estructu}
var
	pozo, jugador1, jugador2:pila;
begin
	write('ingrese los datos de la pila pozo:');
	readpila(pozo);
	inicpila(jugador1, '');
	inicpila(jugador2, '');
	while not pilavacia(pozo) do
		begin
				apilar(jugador1, desapilar(pozo));
			if not pilavacia(pozo) then
				apilar(jugador2, desapilar(pozo));
		end;
	writeln('losdatos que le quedaron al jugador1 son');
	writepila(jugador1);
	writeln('los datos que le quedaron al jugador2son');
	writepila(jugador2);
end.