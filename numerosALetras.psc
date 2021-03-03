Proceso numerosALetras
	Definir num, digito1, digito2 Como Entero;
	Definir nombre, carSep, digito1Car, digito2Car Como Caracter;
	Definir numReal Como Real;
	
	Escribir 'Escriba un número (0-99, sin decimales) ' Sin Saltar;
	Leer numReal;
	num <- trunc(numReal);
	Mientras (numReal < 0 | numReal > 99 | num < numReal) Hacer
		Escribir 'Re-escriba el número (0-99, sin decimales)(Número no válido) ' Sin Saltar;
		Leer numReal;
		num <- trunc(numReal);
	FinMientras
	
	Escribir 'En número: ',num;
	
	si(num <= 15) Entonces
		Segun num Hacer
			0:
				nombre <- 'Cero';
			1:
				nombre <- 'Uno';
			2:
				nombre <- 'Dos';
			3:
				nombre <- 'Tres';
			4:
				nombre <- 'Cuatro';
			5:
				nombre <- 'Cinco';
			6:
				nombre <- 'Seis';
			7:
				nombre <- 'Siete';
			8:
				nombre <- 'Ocho';
			9:
				nombre <- 'Nueve';
			10:
				nombre <- 'Diez';
			11:
				nombre <- 'Once';
			12:
				nombre <- 'Doce';
			13:
				nombre <- 'Trece';
			14:
				nombre <- 'Catorce';
			15:
				nombre <- 'Quince';
		FinSegun
	SiNo
		si(num > 15)Entonces
			nombre <- ConvertirATexto(num);
			digito1Car <- Subcadena(nombre,0,0);
			digito2Car <- Subcadena(nombre,1,1);
			digito1 <- ConvertirANumero(digito1Car);
			digito2 <- ConvertirANumero(digito2Car);
			Segun digito1 hacer
				1:
					digito1Car <- 'Dieci';
				2:
					si(digito2 == 0)Entonces
						digito1Car <- 'Veinte';
					SiNo
						digito1Car <- 'Veinti';
					FinSi
				3:
					digito1Car <- 'Treinta';
				4:
					digito1Car <- 'Cuarenta';
				5:
					digito1Car <- 'Cincuenta';
				6:
					digito1Car <- 'Sesenta';
				7:
					digito1Car <- 'Setenta';
				8:
					digito1Car <- 'Ochenta';
				9:
					digito1Car <- 'Noventa';
			FinSegun
			Segun digito2 Hacer
				1:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'uno';
					SiNo
						digito2Car <- ' y uno';
					FinSi
				2:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'dos';
					SiNo
						digito2Car <- ' y dos';
					FinSi
				3:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'tres';
					SiNo
						digito2Car <- ' y tres';
					FinSi
				4:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'cuatro';
					SiNo
						digito2Car <- ' y cuatro';
					FinSi
				5:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'cinco';
					SiNo
						digito2Car <- ' y cinco';
					FinSi
				6:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'seis';
					SiNo
						digito2Car <- ' y seis';
					FinSi
				7:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'siete';
					SiNo
						digito2Car <- ' y siete';
					FinSi
				8:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'ocho';
					SiNo
						digito2Car <- ' y ocho';
					FinSi
				9:
					si(digito1 == 2 | digito1 == 1)Entonces
						digito2Car <- 'nueve';
					SiNo
						digito2Car <- ' y nueve';
					FinSi
			FinSegun
			si(digito2 == 0)Entonces
				digito2Car <- '';
			FinSi
			nombre <- Concatenar(digito1Car,digito2Car);			
		FinSi
	FinSi
	Escribir 'En letras: ',nombre;
FinProceso
