Proceso ordenarValores
	Definir aux, i, j Como Entero;
	Definir arrayNumeros, limiteArray Como Entero;
	
	limiteArray <- 20; //cu�ntos n�meros se van a cargar (cuantos m�s n�meros haya, m�s lento es el proceso)
	Dimension arrayNumeros[limiteArray];
	
	Escribir 'N�meros cargados aleatoriamente:';
	Para i<-0 hasta (limiteArray-1) con paso 1 Hacer //se cargan n�meros aleatorios
		arrayNumeros[i] <- azar(100);
		Escribir arrayNumeros[i],', ' Sin Saltar;
	FinPara
	Escribir '';
	
	Para i<-0 hasta (limiteArray-1) Con Paso 1 Hacer //algoritmo para ordenar
		Para j<-0 hasta (limiteArray-1) con paso 1 Hacer
			si(arrayNumeros[j] > arrayNumeros[i]) Entonces
				aux <- arrayNumeros[j];
				arrayNumeros[j] <- arrayNumeros[i];
				arrayNumeros[i] <- aux;
			FinSi
		FinPara
	FinPara
	
	Escribir 'N�meros ordenados: ';
	Para i<-0 hasta (limiteArray-1) con paso 1 Hacer //se muestran los numeros ordenados
		Escribir arrayNumeros[i],', ' Sin Saltar;
	FinPara
	Escribir '';
	
FinProceso
