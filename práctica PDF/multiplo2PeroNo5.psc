Proceso multilplo2yNo5
	Definir a Como Entero;
	Escribir 'Escriba un número: 'Sin Saltar;
	Leer a;
	si(a mod 2 == 0 & a mod 5 <> 0) Entonces
		Escribir a,' es múltiplo de 2 pero no de 5';
	FinSi
	si(a mod 2 == 0)Entonces
		Escribir a,' es múltiplo de 2.';
	FinSi
	si(a mod 5 == 0)Entonces
		Escribir a,' es múltiplo de 5.';
	FinSi
FinProceso