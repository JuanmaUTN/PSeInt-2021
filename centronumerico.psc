Proceso centroNumerico
	Definir i,j Como Entero;
	Definir num Como Entero;
	Definir acum1, acum2 Como Entero;
	
	Escribir 'Número?';
	Leer num;
	
	si(num > 1)Entonces
		para i<-1 hasta num Con Paso 1 Hacer
			acum1 <- 0;
			acum2 <- 0;
			Para j<-(i-1) hasta 1 Con Paso -1 Hacer //numeros de la izquierda, este for va contando para atrás
				acum1 <- acum1 + j;
			FinPara
			j <- i+1; //se asigna el numero central + 1
			Mientras (acum1 >= acum2) Hacer //numeros de la derecha, esto es un while
				acum2 <- acum2 + j;
				j <- j + 1;
				si(acum1 == acum2) Entonces
					Escribir '¡',i,' es un número céntrico!';
				FinSi
			FinMientras
		FinPara
	SiNo
		Escribir '¡No se puede usar este número, tiene que ser mayor que 1!';
	FinSi
FinProceso
