Proceso potenciaManual
	Definir numBase, numExp, i, acum Como Entero;
	Escribir 'Escriba un n�mero base y luego un n�mero por el cual potenciarlo:';
	Leer numBase, numExp;
	Escribir 'Usando la potencia normal: ',numBase^numExp;
	acum <- numBase;
	para i<-1 hasta numExp Con Paso 1 Hacer
		acum <- acum * numBase;
	FinPara
	Escribir 'Usando la potencia manual: ',acum;
FinProceso