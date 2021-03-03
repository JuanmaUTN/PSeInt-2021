Proceso ruletaxd
	Definir slotRuleta Como Entero;
	Definir seguir Como Entero;
	Definir numEleg Como Entero;
	Definir limiteRuleta Como Entero;
	seguir <- 1;
	
	Escribir 'Escriba el tamaño de la ruleta (cantidad de números)';
	Leer limiteRuleta;
	
	Mientras (limiteRuleta <= 0) Hacer //comprobación del número limíte de la ruleta.
		Escribir '¡',limiteRuleta,' no es un número válido, no puede ser negativo ni 0!';
		Escribir 'Inténtelo de nuevo con un número positivo.';
		Leer limiteRuleta;
	FinMientras //fin comprobación.
	
	Mientras (seguir == 1) Hacer //inicio del juego de la ruleta, lo de poner el limite a la ruleta se hace solo una vez
		slotRuleta <- azar(limiteRuleta);
		Escribir 'Elija un número entre 0 y ',limiteRuleta,' para apostarle.';
		Escribir '(Al caer en 0 se gana automáticamente)';
		Leer numEleg;
		
		//Si(numEleg < 0 o numEleg > limiteRuleta)Entonces //Esto no tenía comprobación, si ponías mal el número,
		//	Escribir '¡Ese no es un número válido!';      //la ruleta tiraba igual pero el número elegido se ponía en -1,
		//	numEleg <- -1;            					//por lo tanto era imposible ganar
		//FinSi
		
		Mientras (numEleg < 0 o numEleg > limiteRuleta) Hacer //comprobación del número a apostar (se repite cada vez que quiere girar la ruleta)
			Escribir 'Ese número no es válido, intenta con otro (que esté entre 0 y ',limiteRuleta,').';
			Leer numEleg;
		FinMientras //fin comprobación
		
		Escribir 'La ruleta está girando...';
		Esperar 3 Segundos;
		Escribir 'La bolita cayó en el número ',slotRuleta,'.';
		
		Si(slotRuleta == numEleg o slotRuleta == 0)Entonces
			Escribir '¡Ganaste!';
		SiNo
			Escribir '¡Perdiste!';
		FinSi
		
		Esperar 1 Segundos;
		Escribir 'Quiere seguir girando la ruleta? (1=Si, 2=No)';
		Leer seguir;
		
		Mientras (seguir <> 1 y seguir <> 2) Hacer //comprobación de la opción
			Escribir seguir,' no es una opción válida, eliga 1 para SI, o 2 para NO.';
			Leer seguir;
		FinMientras //fin comprobación
		
		//Si(seguir <> 1 y seguir <> 2)						//otra vez, sin comprobación
		//	Entonces										//si ponías mal la opción
			//	Escribir '¡Esa no es una opción válida!';	//la ruleta volvía a girar sola
			//	Esperar 1 Segundos;
			//	Escribir 'Volviendo a girar la ruleta...';
			//	Esperar 1 Segundos;
			//	seguir <- 1;
			//FinSi
			
		FinMientras //fin del juego
		
	Escribir '¡Nos re vimos en Disney!';
	Esperar 1 Segundos;
	Escribir '¡Aguante la comisión 33 vieja no me importa nada!';
 FinProceso