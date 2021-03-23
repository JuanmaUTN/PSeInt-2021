Proceso sin_titulo
	Definir num,numAleatorio Como Entero;
	Escribir 'Ingrese un número entre 0 y 20: 'Sin Saltar;
	Leer num;
	Mientras (num > 20 | num < 0) Hacer
		Escribir 'Reingrese un número entre 0 y 20: 'Sin Saltar;
		Leer num;
	FinMientras
	
	Repetir
		numAleatorio <- Azar(51);
		Escribir ', ',numAleatorio Sin Saltar;
		Esperar 100 Milisegundos;
	Hasta Que num == numAleatorio
	Escribir '';
	Escribir 'Número encontrado!';
FinProceso
