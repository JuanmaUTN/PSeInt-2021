Proceso tirarMoneda
	Definir moneda Como Entero;
	moneda <- Aleatorio(0,1);
	si(moneda == 0) Entonces
		Escribir 'Salió CARA';
	SiNo
		Escribir 'Salió CECA';
	FinSi	
FinProceso