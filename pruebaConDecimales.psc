Proceso pruebasConDecimales
	Definir numeroEntero Como Entero;
	Definir numeroReal Como Real;
	
	Escribir 'Escriba un número con decimales ' Sin Saltar;
	Leer numeroReal;
	Escribir 'Valor del número real: ',numeroReal;
	
//	ent <- rea;	(esta asignación no se puede hacer en PSeInt)
//	Escribir 'Valor del número entero: ',ent;
	
	numeroEntero <- redon(numeroReal);
	Escribir 'Valor redondeado: ',numeroEntero;
	
//	ent <- abs(rea);
//	Escribir 'Valor absoluto: ',ent;
	
	numeroEntero <- trunc(numeroReal);
	Escribir 'Valor truncado: ',numeroEntero;
	Escribir '';
	
	si(numeroReal > numeroEntero)Entonces
		Escribir 'Este número tiene decimales';
	SiNo
		Escribir 'Este número no tiene decimales';
	FinSi
	
	
FinProceso
