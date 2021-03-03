SubProceso sumar2Numeros ( a, b )
	Escribir '(SubProceso) El resultado de la suma de ',a,' y ',b,' es: ',a+b;
	Escribir '(SubProceso) ',a,' + ',b,' = ',a+b;
FinSubProceso

Proceso CalculadoraSimple
	Definir a1 Como Entero;
	Definir b2 Como Entero;
	Definir resultado Como real;
	
	Escribir 'Escriba el primer n�mero ' Sin Saltar;
	Leer a1;
	Escribir 'Escriba el segundo n�mero ' Sin Saltar;
	Leer b2;
	
	sumar2Numeros(a1,b2); //prueba de subproceso
	Escribir '';
	
	resultado <- a1+b2; //suma
	Escribir 'El resultado de la suma de ',a1,' y ',b2,' es: ',resultado;
	Escribir a1,' + ',b2,' = ',resultado;
	Escribir '';
	
	resultado <- a1-b2;  //resta
	Escribir 'El resultado de la resta de ',a1,' y ',b2,' es: ',resultado;
	Escribir a1,' - ',b2,' = ',resultado;
	Escribir '';
	
	resultado <- a1*b2; //multiplicaci�n
	Escribir 'El resultado de la multiplicaci�n de ',a1,' por ',b2,' es: ',resultado;
	Escribir a1,' x ',b2,' = ',resultado;
	Escribir '';
	
	Si (b2 == 0) Entonces //divisi�n (verificando que el divisor no sea 0)
		Escribir 'No se puede dividir por 0';
	SiNo
		resultado <- a1/b2;
		Escribir 'El resultado de la divisi�n de ',a1,' dividido en ',b2,' es: ',resultado;
		Escribir a1,' % ',b2,' = ',resultado;
	FinSi
	Escribir '';
	
	resultado <- a1^b2; //potenciaci�n
	Escribir 'El resultado de la potencia de ',a1,' elevado ',b2,' es: ',resultado;
	Escribir a1,' ^ ',b2,' = ',resultado;
	Escribir '';
	
FinProceso
