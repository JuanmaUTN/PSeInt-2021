Proceso sin_titulo
	Definir i, n, p Como Entero; //variables de control del Para 
	Definir acumPar, contPar Como Entero; //contador y acumulador de numeros pares
	Definir acumMul3, contMul3, acumMul7, contMul7 Como Entero; //contadores y acumuladores de multiplos de 3 y 7
	contPar <- 0;
	acumPar <- 0;
	contMul3 <- 0;
	acumMul3 <- 0;
	contMul7 <- 0;
	acumMul7 <- 0;
	Escribir 'Hasta dónde? 'Sin Saltar;
	leer n;
	Escribir 'Con paso 'Sin Saltar;
	leer p;
	Para i<-1 hasta n con paso p Hacer
		Escribir i,', 'Sin Saltar;
		si(i mod 2 == 0)Entonces
			contPar <- contPar + 1;
			acumPar <- acumPar + i;
		FinSi
		si(i mod 3 == 0)Entonces
			contMul3 <- contMul3 + 1;
			acumMul3 <- acumMul3 + i;
		FinSi
		si(i mod 7 == 0)Entonces
			contMul7 <- contMul7 + 1;
			acumMul7 <- acumMul7 + i;
		FinSi
	FinPara
	Escribir '';
	Escribir 'Hay ',contPar,' números pares cuya suma da ',acumPar;
	Escribir 'Hay ',contMul3,' múltiplos de 3 cuya suma da ',acumMul3;
	Escribir 'Hay ',contMul7,' múltiplos de 7 cuya suma da ',acumMul7;
	
FinProceso
