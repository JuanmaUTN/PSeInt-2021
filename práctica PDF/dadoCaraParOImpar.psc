Proceso dadoParOImpar
	Definir dado Como Entero;
	dado <- Aleatorio(1,6);
	si(dado mod 2 == 0) Entonces
		Escribir 'Sali� ',dado,', es PAR';
	SiNo
		Escribir 'Sali� ',dado,', es IMPAR';
	FinSi
FinProceso