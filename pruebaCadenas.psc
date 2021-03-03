Proceso pruebaCadenas
	Definir cadenaxd Como Caracter;
	Definir largoCadena, i, j Como Entero;
	Definir prueba1 Como caracter;
	
	cadenaxd <- 'Aguante la comisión 33 caralho';
	largoCadena <- Longitud(cadenaxd);
	
	Esperar 1 Segundos;
	Para i<-0 hasta largoCadena-1 Con Paso 1 Hacer
		prueba1 <- SubCadena(cadenaxd,i,i);
		Escribir prueba1 Sin Saltar;
		Esperar 70 Milisegundos;
	FinPara
	
	Escribir '';
	
FinProceso