Proceso ordenar2Numeros
	Definir a, b, auxiliar Como Entero;
	
	Escribir 'Escriba un número ' Sin Saltar;
	Leer a;
	Escribir '';
	Escribir 'Escriba otro número ' Sin Saltar;
	Leer b;
	Escribir '';
	Escribir 'Así están: ',a,' y ',b;
	si(a > b)Entonces
		auxiliar <- b;
		b <- a;
		a <- auxiliar;
	FinSi
	Escribir 'Así quedaron ordenados: ',a,' y ',b;
FinProceso
