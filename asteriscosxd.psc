Proceso asteriscosxd
	Definir i, j Como Entero;
	Definir lineas Como Entero;
	
	lineas<-10;
	
	Para i<-1 Hasta lineas Con Paso 1 Hacer
		
		Para j<-1 hasta i Con Paso 1 Hacer
			Escribir '*' Sin Saltar;
		FinPara
		
		Escribir '';
		Esperar 70 Milisegundos;
	FinPara
	
	Esperar 1 Segundos;
	Escribir 'Ahora, al revés...';
	Esperar 1 Segundos;
	
	Para i<-lineas Hasta 1 Con Paso -1 Hacer
		
		Para j<-1 hasta i Con Paso 1 Hacer
			Escribir '*' Sin Saltar;
		FinPara
		
		Escribir '';
		Esperar 70 Milisegundos;
	FinPara
FinProceso
