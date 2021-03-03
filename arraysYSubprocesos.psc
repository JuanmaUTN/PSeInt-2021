SubProceso  arregloXd ( array Por Referencia )
	Definir i Como Entero;
	Para i<-0 hasta 5 Con Paso 1 Hacer
		Escribir array[i];
	FinPara
FinSubProceso

Proceso probando
	Definir vector, i Como Entero;;
	Dimension vector[6];
	
	Para i<-0 hasta 5 Con Paso 1 Hacer
		vector[i] <- azar(100);
	FinPara
	
	arregloXd(vector);
FinProceso
