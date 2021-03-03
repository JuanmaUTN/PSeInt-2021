Proceso ordenarValores
	Definir aux, i, j Como Entero;
	Definir arrayNumeros, limiteArray Como Entero;
	
	limiteArray <- 20; //cuántos números se van a cargar (cuantos más números haya, más lento es el proceso)
	Dimension arrayNumeros[limiteArray];
	
	Escribir 'Números cargados aleatoriamente:';
	Para i<-0 hasta (limiteArray-1) con paso 1 Hacer //se cargan números aleatorios
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
	
	Escribir 'Números ordenados: ';
	Para i<-0 hasta (limiteArray-1) con paso 1 Hacer //se muestran los numeros ordenados
		Escribir arrayNumeros[i],', ' Sin Saltar;
	FinPara
	Escribir '';
	
FinProceso
