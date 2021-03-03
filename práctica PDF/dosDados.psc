Proceso dosDados
	Definir dado1 Como Entero;
	Definir dado2 Como Entero;
	
	Escribir 'Lanzando dados...';
	dado1 <- Aleatorio(1, 6);
	dado2 <- Aleatorio(1, 6);
	Esperar 2 Segundos;
	
	Escribir 'Salieron éstos números: ',dado1,' y ',dado2;
	Escribir 'Suman ',dado1+dado2,' puntos';
FinProceso
