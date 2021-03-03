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

Proceso jodaxd
	escribirCadena('Puto el que lo lea.',50);
	Esperar 1 Segundos;
	escribirCadena('Y lo seguís leyendo...',50);
	Esperar 1 Segundos;
	escribirCadena('Terrible puto sos amigo.',50);
	Esperar 1 Segundos;
	escribirCadena('Aguante la comisión 33',20);
FinProceso