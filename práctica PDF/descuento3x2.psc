Proceso sin_titulo
	Definir unidades, contador, i Como Entero;
	Definir precio, subTotal, precioFinal Como Real;
	contador <- 0;
	Escribir 'Escribas cu�ntas unidades va a llevar y el precio de una de �stas:';
	Leer unidades,precio;
	subTotal <- unidades*precio;
	Escribir 'Usted llevar� ',unidades,' unidades por el precio subtotal de: $',subTotal;
	si(unidades > 2) Entonces
		precioFinal <- subTotal;
		Escribir 'Al llevar 3 o m�s unidades se aplicar� un descuento:';
		Escribir 'Cada 3 unidades se restar� el precio de 1 unidad.';
		Para i<-1 hasta unidades Con Paso 1 Hacer
			contador <- contador + 1;
			si(contador == 3) Entonces
				precioFinal <- precioFinal - precio;
				contador <- 0;
			FinSi
		FinPara
		Escribir 'El nuevo precio final con el descuento aplicado:';
		Escribir unidades,' unidades por $',precio,' cada una: $',precioFinal;
	FinSi
	Escribir '�Gracias, vuelva prontos!';
FinProceso