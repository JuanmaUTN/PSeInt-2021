SubProceso mostrarTablero(arrayTablero)
	Definir i,j Como Entero;
	Escribir '   A B C D E F G H I J';
	para i<-0 hasta 9 Con Paso 1 Hacer
		Escribir i,'|' Sin Saltar;
		para j<-0 hasta 9 Con Paso 1 Hacer
			Escribir ' ',arrayTablero[i,j] Sin Saltar;
			Esperar 50 Milisegundos;
		FinPara
		Escribir '';
	FinPara
FinSubProceso

Proceso array2
	Definir array,i,j Como Entero;
	Dimension array[10,10];
	para i<-0 hasta 9 Con Paso 1 Hacer
		para j<-0 hasta 9 Con Paso 1 Hacer
			array[i,j] <- 0;
		FinPara
	FinPara
	mostrarTablero(array);
FinProceso
