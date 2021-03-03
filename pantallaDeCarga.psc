SubProceso escribirCadena ( cadenaxd, tiempo )
	Definir largoCadena, i como entero;
	Definir carSep como caracter;
	largoCadena <- Longitud(cadenaxd);
	Para i<-0 hasta largoCadena-1 Con Paso 1 Hacer
		carSep <- SubCadena(cadenaxd,i,i);
		Escribir carSep Sin Saltar;
		Esperar tiempo Milisegundos;
	FinPara
	Escribir '';
FinSubProceso

Proceso pantallaDeCarga

	Definir cadena1 Como Caracter;
	Definir i, j Como Entero;
	
	Borrar Pantalla;
	
	cadena1 <- 'Puto el que lee';
	
	escribirCadena(cadena1, 70); //tiempo en milisegundos
	
	Borrar Pantalla;
	
	Para j<-0 hasta 2 Con Paso 1 Hacer
		Escribir cadena1;
		Escribir 'Cargando' Sin Saltar;
		escribirCadena(' . . .', 100);
		Esperar 500 Milisegundos;
		Borrar Pantalla;
	FinPara
	
	escribirCadena('El programa se ha cargado exitosamente!',10);
	
FinProceso