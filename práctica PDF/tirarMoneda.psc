Proceso tirarMoneda
	Definir moneda Como Entero;
	moneda <- Aleatorio(0,1);
	si(moneda == 0) Entonces
		Escribir 'Sali� CARA';
	SiNo
		Escribir 'Sali� CECA';
	FinSi	
FinProceso