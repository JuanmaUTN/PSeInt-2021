Proceso numerosPrimos
	Definir num, i, j Como Entero;
	Definir esPrimo Como Logico;
	
	Escribir 'Número?';
	Leer num;
	Escribir 'Números primos: ';
	Para i<-2 hasta num Con Paso 1 Hacer
		esPrimo <- Verdadero;
		para j<-i-1 hasta 2 Con Paso -1 Hacer
			si(i mod j == 0) Entonces
				esPrimo <- Falso;
				j <- 2;
			FinSi
		FinPara
		si(esPrimo == verdadero) Entonces
			Escribir i,', 'Sin Saltar;
		FinSi
	FinPara
	Escribir '';
FinProceso
