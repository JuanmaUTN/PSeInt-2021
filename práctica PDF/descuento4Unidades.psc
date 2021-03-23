Proceso descuento4Unidades5porciento
	Definir unidades Como Entero;
	Definir preciofinal,precio,subtotal,descuento Como Real;
	Escribir 'Escriba cuántas unidades llevará y el precio de una unidad 'Sin Saltar;
	Leer unidades,precio;
	subtotal <- unidades*precio;
	Escribir 'Llevará ',unidades,' artículos de $',precio,' por el total de: $',subtotal;
	si(unidades > 4)Entonces
		Escribir 'Al llevar más de 4 unidades tendrá un descuento del 5%.';
		descuento <- (subtotal*5)/100;
		preciofinal <- subtotal-descuento;
		Escribir 'El precio final pasa a ser: $',preciofinal;
	FinSi
	Esperar 1 segundos;
	Escribir 'Gracias, vuelva prontos!';
FinProceso