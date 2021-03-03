Proceso aniosBisiestos
	Definir anioActual, anio Como Entero;
	Definir i Como Entero;
	anioActual <- 2021;
	
	Escribir 'Escriba el año desde el cuál quiera averigüar los años bisiestos hasta ',anioActual;
	Leer anio;
	
	Para i<-anio hasta anioActual Con Paso 1 Hacer
		Si(i mod 4 == 0) Entonces
			si!(i mod 100 == 0 y i mod 400 <> 0) Entonces
				Escribir i,', ' sin saltar;
			FinSi
		FinSi
	FinPara
	Escribir '';
FinProceso
