Proceso ordenar2Numeros
	Definir a, b, auxiliar Como Entero;
	
	Escribir 'Escriba un n�mero ' Sin Saltar;
	Leer a;
	Escribir '';
	Escribir 'Escriba otro n�mero ' Sin Saltar;
	Leer b;
	Escribir '';
	Escribir 'As� est�n: ',a,' y ',b;
	si(a > b)Entonces
		auxiliar <- b;
		b <- a;
		a <- auxiliar;
	FinSi
	Escribir 'As� quedaron ordenados: ',a,' y ',b;
FinProceso
