Proceso pruebasConDecimales
	Definir numeroEntero Como Entero;
	Definir numeroReal Como Real;
	
	Escribir 'Escriba un n�mero con decimales ' Sin Saltar;
	Leer numeroReal;
	Escribir 'Valor del n�mero real: ',numeroReal;
	
//	ent <- rea;	(esta asignaci�n no se puede hacer en PSeInt)
//	Escribir 'Valor del n�mero entero: ',ent;
	
	numeroEntero <- redon(numeroReal);
	Escribir 'Valor redondeado: ',numeroEntero;
	
//	ent <- abs(rea);
//	Escribir 'Valor absoluto: ',ent;
	
	numeroEntero <- trunc(numeroReal);
	Escribir 'Valor truncado: ',numeroEntero;
	Escribir '';
	
	si(numeroReal > numeroEntero)Entonces
		Escribir 'Este n�mero tiene decimales';
	SiNo
		Escribir 'Este n�mero no tiene decimales';
	FinSi
	
	
FinProceso
