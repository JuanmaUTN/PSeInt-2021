Proceso ordenar3numeros
	Definir a,b,c Como Entero;
	Definir aux Como Entero;
	
	Escribir 'Escriba 3 n�meros enteros: ';
	Leer a,b,c;
	
	si(a > b)Entonces
		aux <- a;
		a <- b;
		b <- aux;
	FinSi
	si(a > c)Entonces
		aux <- a;
		a <- c;
		c <- aux;
	FinSi
	si(b > c)Entonces
		aux <- b;
		b <- c;
		c <- aux;
	FinSi
	
	Escribir 'N�meros ordenados: ',a,', ',b,', ',c;
FinProceso
