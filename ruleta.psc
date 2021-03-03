Proceso ruletaxd
	Definir slotRuleta Como Entero;
	Definir seguir Como Entero;
	Definir numEleg Como Entero;
	Definir limiteRuleta Como Entero;
	seguir <- 1;
	
	Escribir 'Escriba el tama�o de la ruleta (cantidad de n�meros)';
	Leer limiteRuleta;
	
	Mientras (limiteRuleta <= 0) Hacer //comprobaci�n del n�mero lim�te de la ruleta.
		Escribir '�',limiteRuleta,' no es un n�mero v�lido, no puede ser negativo ni 0!';
		Escribir 'Int�ntelo de nuevo con un n�mero positivo.';
		Leer limiteRuleta;
	FinMientras //fin comprobaci�n.
	
	Mientras (seguir == 1) Hacer //inicio del juego de la ruleta, lo de poner el limite a la ruleta se hace solo una vez
		slotRuleta <- azar(limiteRuleta);
		Escribir 'Elija un n�mero entre 0 y ',limiteRuleta,' para apostarle.';
		Escribir '(Al caer en 0 se gana autom�ticamente)';
		Leer numEleg;
		
		//Si(numEleg < 0 o numEleg > limiteRuleta)Entonces //Esto no ten�a comprobaci�n, si pon�as mal el n�mero,
		//	Escribir '�Ese no es un n�mero v�lido!';      //la ruleta tiraba igual pero el n�mero elegido se pon�a en -1,
		//	numEleg <- -1;            					//por lo tanto era imposible ganar
		//FinSi
		
		Mientras (numEleg < 0 o numEleg > limiteRuleta) Hacer //comprobaci�n del n�mero a apostar (se repite cada vez que quiere girar la ruleta)
			Escribir 'Ese n�mero no es v�lido, intenta con otro (que est� entre 0 y ',limiteRuleta,').';
			Leer numEleg;
		FinMientras //fin comprobaci�n
		
		Escribir 'La ruleta est� girando...';
		Esperar 3 Segundos;
		Escribir 'La bolita cay� en el n�mero ',slotRuleta,'.';
		
		Si(slotRuleta == numEleg o slotRuleta == 0)Entonces
			Escribir '�Ganaste!';
		SiNo
			Escribir '�Perdiste!';
		FinSi
		
		Esperar 1 Segundos;
		Escribir 'Quiere seguir girando la ruleta? (1=Si, 2=No)';
		Leer seguir;
		
		Mientras (seguir <> 1 y seguir <> 2) Hacer //comprobaci�n de la opci�n
			Escribir seguir,' no es una opci�n v�lida, eliga 1 para SI, o 2 para NO.';
			Leer seguir;
		FinMientras //fin comprobaci�n
		
		//Si(seguir <> 1 y seguir <> 2)						//otra vez, sin comprobaci�n
		//	Entonces										//si pon�as mal la opci�n
			//	Escribir '�Esa no es una opci�n v�lida!';	//la ruleta volv�a a girar sola
			//	Esperar 1 Segundos;
			//	Escribir 'Volviendo a girar la ruleta...';
			//	Esperar 1 Segundos;
			//	seguir <- 1;
			//FinSi
			
		FinMientras //fin del juego
		
	Escribir '�Nos re vimos en Disney!';
	Esperar 1 Segundos;
	Escribir '�Aguante la comisi�n 33 vieja no me importa nada!';
 FinProceso