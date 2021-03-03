Proceso arrayDeEnteros
	Definir pruebaxd Como Entero; 
	Dimension pruebaxd[10];
	Definir i, contPar, contImpar Como Entero;
	
	contPar <- 0;
	contImpar <- 0;
	
	Para i <- 0 hasta 9 con paso 1 Hacer
		pruebaxd[i] <- aleatorio(1,100);
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		si (pruebaxd[i] mod 2 == 0) Entonces
			Escribir pruebaxd[i], ' (Par), ' Sin Saltar;
			contPar <- contPar + 1;
		SiNo
			Escribir pruebaxd[i],' (Impar), ' Sin Saltar;
			contImpar <- contImpar + 1;
		FinSi
	FinPara
	
	Escribir '';
	Escribir 'Hay ',contPar,' números pares y ',contImpar,' impares';
	
FinProceso
