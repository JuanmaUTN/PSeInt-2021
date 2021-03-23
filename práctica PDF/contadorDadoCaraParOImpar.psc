Proceso sin_titulo
	Definir veces, caraDado, contPar, contImpar, i Como Entero;
	contImpar <- 0;
	contPar <- 0;
	Escribir '¿Cuántas veces quiere tirar el dado?';
	Leer veces;
	Para i<-1 hasta veces Con Paso 1 Hacer
		caraDado <- Aleatorio(1,6);
		si(caraDado mod 2 == 0) Entonces
			contPar <- contPar + 1;
		SiNo
			contImpar <- contImpar + 1;
		FinSi
	FinPara
	Escribir 'Salieron ',contPar,' caras pares y ',contImpar,' caras impares.';
FinProceso
