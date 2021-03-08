SubProceso eventoTexto (arregloInventario Por Referencia, slotsInv Por Referencia, vidaAct Por Referencia, vidaMax Por Referencia)
	Definir eventoRandom, tiempo Como Entero;
	//eventoRandom <- Azar(10);
	eventoRandom <- 5;
	tiempo <- 40;
	Borrar Pantalla;
	Segun eventoRandom hacer
		0:
			escribirCadena('Escuchas un fuerte sonido en la lejanía,',tiempo,1);
			Esperar 1 Segundos;
			escribirCadena('te das vuelta y alcanzas a ver una gran explosión...',tiempo,1);
		1:
			escribirCadena('Ves que se acerca un helicóptero,',tiempo,1);
			Esperar 1 Segundos;
			escribirCadena('le gritas que se detenga pero no te escucha y se aleja...',tiempo,1);
		2:
			escribirCadena('Vas avanzando y ves un grupo de militares matando civiles,',tiempo,1);
			Esperar 1 Segundos;
			escribirCadena('logras esconderte y escabullirte sin que te vean...',tiempo,1);
		3:
			escribirCadena('Entras en una casa en ruinas...',tiempo,1);
			Esperar 1 segundos;
			Escribir 'Presione cualquier tecla para continuar.';
			Esperar Tecla;
			eventoLooteo(arregloInventario,slotsInv,vidaAct,vidaMax);
			escribirCadena('Abandonas la casa...',tiempo,1);
		4:
			escribirCadena('Encuentras un auto que podrías usar,',tiempo,1);
			Esperar 1 segundos;
			escribirCadena('si no fuera porque no tiene nafta...',tiempo,1);
		5:
			escribirCadena('Entras en un hospital...',tiempo,1);
			Escribir 'Presione cualquier tecla para continuar.';
			Esperar Tecla;
			eventoLooteo(arregloInventario,slotsInv,vidaAct,vidaMax);
			escribirCadena('Sigues recorriendo los pasillos del hospital...',tiempo,1);
			Escribir 'Presione cualquier tecla para continuar.';
			Esperar Tecla;
			eventoLooteo(arregloInventario,slotsInv,vidaAct,vidaMax);
			///evento de pelea con enemigo
			escribirCadena('Abandonas el hospital...',tiempo,1);
		6:
			escribirCadena('Evento 7',tiempo,1);
		7:
			escribirCadena('Evento 8',tiempo,1);
		8:
			escribirCadena('Evento 9',tiempo,1);
		9:
			escribirCadena('Evento 10',tiempo,1);
	FinSegun
	Esperar 1 segundos;
	Escribir 'Presione cualquier tecla para continuar.';
	Esperar Tecla;
FinSubProceso

SubProceso eventoLooteo (arregloInventario Por Referencia, slotsInv Por Referencia, vidaAct Por Referencia, vidaMax Por Referencia)
	Definir objetoRandom, seguir, itemRandom, invLleno, i, slot, tiempo Como Entero;
	Definir flag Como Logico;
	flag <- Falso;
	tiempo <- 30; //tiempo en MS para el texto
	Borrar Pantalla;
	escribirCadena('Vas avanzando y ves ',tiempo,0);
	objetoRandom <- Aleatorio(1,4);
	Segun objetoRandom hacer
		1:
			escribirCadena('un baúl',tiempo,0);
		2:
			escribirCadena('un jarrón',tiempo,0);
		3:
			escribirCadena('un cadáver',tiempo,0);
		4:
			escribirCadena('una caja de madera',tiempo,0);
	FinSegun
	escribirCadena('...',70,1);
	Esperar 1 Segundos;
	Escribir '¿Quieres 'Sin Saltar;
	Segun objetoRandom hacer
		1:
			Escribir ' abrirlo y ver qué hay dentro?';
		2:
			Escribir ' romperlo y ver qué hay dentro?';
		3:
			Escribir ' revisarlo?';
		4:
			Escribir ' romperla y ver qué hay dentro?';
	FinSegun
	seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	si(seguir == 1) Entonces
		Borrar Pantalla;
		Segun objetoRandom hacer
			1:
				escribirCadena('Abres el baúl y te encuentras ',tiempo,0);
			2:
				escribirCadena('Rompes el jarrón y te encuentras ',tiempo,0);
			3:
				escribirCadena('Revisas el cadáver y te encuentras ',tiempo,0);
			4:
				escribirCadena('Rompes la caja y te encuentras ',tiempo,0);
		FinSegun
		itemRandom <- Aleatorio(0,4);
		Segun itemRandom hacer
			1:
				escribirCadena('unas [Pastillas].',tiempo,1);
			2:
				escribirCadena('una [Hierba Verde].',tiempo,1);
			3:
				escribirCadena('una [Hierba Amarilla].',tiempo,1);
			4:
				escribirCadena('una [Hierba Roja].',tiempo,1);
			De Otro Modo:
				escribirCadena('con que no había nada.',tiempo,1);
		FinSegun
		si(itemRandom <> 0) Entonces
			Escribir '¿Quieres agarrar el objeto?';
			seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
			si(seguir == 1) Entonces
				invLleno <- verificarInventarioLleno(arregloInventario,slotsInv);
				si(invLleno == 0) Entonces
					para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
						si(arregloInventario[i] == 0)Entonces
							arregloInventario[i] <- itemRandom;
							slot <- i+1;
							i <- slotsInv-1;
						FinSi
					FinPara
					Borrar Pantalla;
					escribirCadena('¡Agarraste ',tiempo,0);
					Segun itemRandom hacer
						1:
							escribirCadena('las [Pastillas]',tiempo,0);
						2:
							escribirCadena('la [Hierba Verde]',tiempo,0);
						3:
							escribirCadena('la [Hierba Amarilla]',tiempo,0);
						4:
							escribirCadena('la [Hierba Roja]',tiempo,0);
					FinSegun
					escribirCadena(' y se guardaron/guardó en tu inventario!',tiempo,1);
					Esperar 500 Milisegundos;
					Escribir '(Slot : ',slot,')';
				SiNo
					Escribir '¿Quieres abrir el inventario para hacer espacio y guardar el objeto directamente?';
					seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
					Mientras (seguir == 1 & flag == Falso) hacer
						Escribir 'Abriendo el inventario...';
						Esperar 1 Segundos;
						gestionarInventario(arregloInventario,slotsInv,vidaAct,vidaMax);
						invLleno <- verificarInventarioLleno(arregloInventario,slotsInv);
						si(invLleno == 0 & flag == Falso) Entonces
							para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
								si(arregloInventario[i] == 0)Entonces
									arregloInventario[i] <- itemRandom;
									slot <- i+1;
									i <- slotsInv-1;
									flag <- Verdadero;
								FinSi
							FinPara
							Borrar Pantalla;
							escribirCadena('¡Agarraste ',tiempo,0);
							Segun itemRandom hacer
								1:
									escribirCadena('las [Pastillas]',tiempo,0);
								2:
									escribirCadena('la [Hierba Verde]',tiempo,0);
								3:
									escribirCadena('la [Hierba Amarilla]',tiempo,0);
								4:
									escribirCadena('la [Hierba Roja]',tiempo,0);
							FinSegun
							escribirCadena(' y se guardaron/guardó en tu inventario!',tiempo,1);
							Esperar 500 Milisegundos;
							Escribir '(Slot : ',slot,')';
						SiNo
							Escribir '¿Quieres abrir el inventario otra vez para hacer espacio?';
							seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
						FinSi
					FinMientras
					si(seguir == 2) Entonces
						Esperar 1 Segundos;
						Borrar Pantalla;
						escribirCadena('Dejas atrás lo que encontraste y sigues tu camino...',tiempo,1);
					FinSi
				FinSi
			SiNo
				Esperar 1 Segundos;
				Borrar Pantalla;
				escribirCadena('Dejas atrás lo que encontraste y sigues tu camino...',tiempo,1);
			FinSi
		SiNo
			Esperar 1 Segundos;
			Borrar Pantalla;
			escribirCadena('Al no haber encontrado nada, sigues tu camino...',tiempo,1);
		FinSi
	SiNo
		Borrar Pantalla;
		escribirCadena('Dejas ',tiempo,0);
		Segun objetoRandom hacer
			1:
				escribirCadena('el baúl',tiempo,0);
			2:
				escribirCadena('el jarrón',tiempo,0);
			3:
				escribirCadena('el cadáver',tiempo,0);
			4:
				escribirCadena('la caja de madera',tiempo,0);
		FinSegun
		escribirCadena(' atrás y sigues tu camino...',tiempo,1);
	FinSi
	Esperar 1 Segundos;
	Escribir 'Presione cualquier tecla para continuar.';
	Esperar Tecla;
FinSubProceso

SubProceso escribirCadena ( cadenaxd, tiempo, salto )
	Definir largoCadena, i como entero;
	Definir carSep como caracter;
	largoCadena <- Longitud(cadenaxd);
	Para i<-0 hasta largoCadena-1 Con Paso 1 Hacer
		carSep <- SubCadena(cadenaxd,i,i);
		Escribir carSep Sin Saltar;
		Esperar tiempo Milisegundos;
	FinPara
	si(salto == 1)Entonces
		Escribir '';
	FinSi
FinSubProceso

SubProceso invLleno <- verificarInventarioLleno(arregloInventario Por Referencia, slotsInv Por Referencia)
	Definir i Como Entero;
	Definir invLleno Como Entero;
	invLleno <- 1;
	Para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
		si(arregloInventario[i] == 0) Entonces
			invLleno <- 0;
			i <- slotsInv-1;
		FinSi
	FinPara
	si(invLleno == 1) Entonces
		mensajeSalida('¡Tu inventario está lleno!');
	FinSi
FinSubProceso

SubProceso invVacio <- verificarInventarioVacio(arregloInventario Por Referencia, slotsInv Por Referencia)
	Definir i Como Entero;
	Definir invVacio Como Entero;
	invVacio <- 1;
	Para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
		si(arregloInventario[i] <> 0) Entonces
			invVacio <- 0;
			i <- slotsInv-1;
		FinSi
	FinPara
	si(invVacio == 1) Entonces
		mensajeSalida('¡Tu inventario está vacío!');
	FinSi
FinSubProceso //si intvacio == 0 (inventario tiene objetos), si intvacio == 1 (inventario vacío)

SubProceso mensajeSalida(string)
	Escribir string;
	Esperar 1 Segundos;
	Escribir 'Presione cualquier tecla para continuar.';
	Esperar Tecla;
FinSubProceso

SubProceso combinarHierbas ( arregloInventario Por Referencia, slotsInv Por Referencia)
	Definir opcion1, i, opcion2, j, seguir Como Entero;
	Definir flag Como Logico;
	mostrarInventario(arregloInventario,slotsInv);
	Escribir '¿Seguro que quiere combinar hierbas?';
	seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	Mientras seguir == 1 Hacer
		Borrar Pantalla;
		mostrarInventario(arregloInventario,slotsInv);
		flag <- falso;
		opcion1 <- verificarOpcion('Seleccione el objeto a combinar (escriba el slot que ocupa).',1,slotsInv);
		Para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
			si(opcion1-1 == i & arregloInventario[i] == 0) Entonces //si el espacio en inventario es 0 (vacio)
				Borrar Pantalla;
				Escribir '¡Ese espacio está vacío!';
				i <- slotsInv-1;
			FinSi
			si(opcion1-1 == i) Entonces //si el objeto no se puede combinar con nada (1 y 8)(pastillas y v+a+r)
				si(arregloInventario[i] == 1 | arregloInventario[i] == 8) Entonces
					Borrar Pantalla;
					Escribir '¡Ese objeto no se puede combinar con nada!';
					i <- slotsInv-1;
				FinSi
			FinSi
			si(opcion1-1 == i & arregloInventario[i] <> 1 & arregloInventario[i] <> 8 & arregloInventario[i] <> 0) Entonces //contempla todos los otros objetos combinables
				Borrar Pantalla;
				Escribir '¿Seguro que quiere combinar 'Sin Saltar;
				Segun arregloInventario[i] hacer
					2:
						Escribir '[Hierba Verde]'Sin Saltar;
					3:
						Escribir '[Hierba Amarilla]'Sin Saltar;
					4:
						Escribir '[Hierba Roja]'Sin Saltar;
					5:
						Escribir '[H. mezclada (V+A)]'Sin Saltar;
					6:
						Escribir '[H. mezclada (V+R)]'Sin Saltar;
					7:
						Escribir '[H. mezclada (A+R)]'Sin Saltar;
				FinSegun
				Escribir ' con otra hierba/mezcla?';
				seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
				si(seguir == 1)Entonces
					Borrar Pantalla;
					mostrarInventario(arregloInventario,slotsInv);
					opcion2 <- verificarOpcion('Seleccione otro objeto a combinar (escriba el slot que ocupa).',1,slotsInv);
					para j<-0 hasta slotsInv-1 Con Paso 1 Hacer
						si(opcion2-1 == j & arregloInventario[j] == 0) Entonces //si el espacio en inventario es 0 (vacio)
							Borrar Pantalla;
							Escribir '¡Ese espacio está vacío!';
							i <- slotsInv-1;
							j <- slotsInv-1;
						FinSi
						si(opcion2-1 == j) Entonces //si el objeto no se puede combinar con nada (1 y 8)(pastillas y v+a+r)
							si(arregloInventario[j] == 1 | arregloInventario[j] == 8) Entonces
								Borrar Pantalla;
								Escribir '¡Ese objeto no se puede combinar con nada!';
								i <- slotsInv-1;
								j <- slotsInv-1;
								flag <- Verdadero;
							FinSi
						FinSi
						si(opcion2-1 == j & arregloInventario[i] == arregloInventario[j] & flag == falso) Entonces //si el objeto no se puede combinar con nada (1 y 8)(pastillas y v+a+r)
							Borrar Pantalla;
							Escribir '¡No puedes elegir el mismo objeto!';
							i <- slotsInv-1;
							j <- slotsInv-1;
						FinSi
						si(opcion2-1 == j) Entonces //nueva comprobacion (testear)
							Segun arregloInventario[i] hacer
								2: //hierba verde
									Segun arregloInventario[j] hacer
										5:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										6:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
								3: //hierba amarilla
									Segun arregloInventario[j] hacer
										5:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										7:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
								4: //hierba roja
									Segun arregloInventario[j] hacer
										6:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										7:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
								5: //hierba mezclada (verde + amarilla)
									Segun arregloInventario[j] hacer
										6:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										7:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										2:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										3:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
								6: //hierba mezclada (verde + roja)
									Segun arregloInventario[j] hacer
										2:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										4:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										5:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										7:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
								7: //hierba mezclada (amarilla + roja)
									Segun arregloInventario[j] hacer
										3:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										4:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										5:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
										6:
											Borrar Pantalla;
											Escribir '¡Esa combinación no se puede hacer!';
											j <- slotsInv-1;
											i <- slotsInv-1;
											flag <- verdadero;
									FinSegun
							FinSegun
						FinSi
						si(opcion2-1 == j & flag == Falso & arregloInventario[j] <> arregloInventario[i] & arregloInventario[j] <> 0 & arregloInventario[j] <> 1 & arregloInventario[j] <> 8) entonces //si se elije el objeto adecuado...
							Borrar Pantalla;
							Escribir 'Seguro que quiere combinar 'Sin Saltar;
							Segun arregloInventario[i] hacer
								2:
									Escribir '[Hierba Verde]'Sin Saltar;
								3:
									Escribir '[Hierba Amarilla]'Sin Saltar;
								4:
									Escribir '[Hierba Roja]'Sin Saltar;
								5:
									Escribir '[H. mezclada (V+A)]'Sin Saltar;
								6:
									Escribir '[H. mezclada (V+R)]'Sin Saltar;
								7:
									Escribir '[H. mezclada (A+R)]'Sin Saltar;
							FinSegun
							Escribir ' con 'Sin Saltar;
							Segun arregloInventario[j] hacer
								2:
									Escribir '[Hierba Verde]'Sin Saltar;
								3:
									Escribir '[Hierba Amarilla]'Sin Saltar;
								4:
									Escribir '[Hierba Roja]'Sin Saltar;
								5:
									Escribir '[H. mezclada (V+A)]'Sin Saltar;
								6:
									Escribir '[H. mezclada (V+R)]'Sin Saltar;
								7:
									Escribir '[H. mezclada (A+R)]'Sin Saltar;
							FinSegun
							Escribir '?';
							seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
							si(seguir == 1) entonces
								Segun arregloInventario[i] hacer
									2: //hierba verde
										Segun arregloInventario[j] hacer
											3: //amarilla
												Borrar Pantalla;
												arregloInventario[i] <- 5;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Verde] y [Hierba Amarilla] para hacer [H. mezclada (V+A)]!';
											4: //roja
												Borrar Pantalla;
												arregloInventario[i] <- 6;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Verde] y [Hierba Roja] para hacer [H. mezclada (V+R)]!';
											7: //amarilla + roja
												Borrar Pantalla;
												arregloInventario[i] <- 8;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Verde] y [H. mezclada (A+R)] para hacer [H. mezclada (V+A+R)]!';
										FinSegun
									3: //hierba amarilla
										Segun arregloInventario[j] hacer
											2: //verde
												Borrar Pantalla;
												arregloInventario[i] <- 5;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Amarilla] y [Hierba Verde] para hacer [H. mezclada (V+A)]!';
											4: //roja
												Borrar Pantalla;
												arregloInventario[i] <- 7;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Amarilla] y [Hierba Roja] para hacer [H. mezclada (A+R)]!';
											6: //verde + roja
												Borrar Pantalla;
												arregloInventario[i] <- 8;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Amarilla] y [H. mezclada (V+R)] para hacer [H. mezclada (V+A+R)]!';
										FinSegun
									4: //hierba roja
										Segun arregloInventario[j] hacer
											2: //verde
												Borrar Pantalla;
												arregloInventario[i] <- 6;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Roja] y [Hierba Verde] para hacer [H. mezclada (V+R)]!';
											3: //amarilla
												Borrar Pantalla;
												arregloInventario[i] <- 7;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Roja] y [Hierba Amarilla] para hacer [H. mezclada (A+R)]!';
											5: //verde + amarilla
												Borrar Pantalla;
												arregloInventario[i] <- 8;
												arregloInventario[j] <- 0;
												flag <- Verdadero;
												i <- slotsInv-1;
												j <- slotsInv-1;
												Escribir '¡Combinaste [Hierba Roja] y [H. mezclada (V+A)] para hacer [H. mezclada (V+A+R)]!';
										FinSegun
									5: //verde + amarilla
										Borrar Pantalla;
										arregloInventario[i] <- 8;
										arregloInventario[j] <- 0;
										flag <- Verdadero;
										i <- slotsInv-1;
										j <- slotsInv-1;
										Escribir '¡Combinaste [H. mezclada (V+A)] y [Hierba Roja] para hacer [H. mezclada (V+A+R)]!';
									6: //verde + roja
										Borrar Pantalla;
										arregloInventario[i] <- 8;
										arregloInventario[j] <- 0;
										flag <- Verdadero;
										i <- slotsInv-1;
										j <- slotsInv-1;
										Escribir '¡Combinaste [H. mezclada (V+R)] y [Hierba Amarilla] para hacer [H. mezclada (V+A+R)]!';
									7: //amarilla + roja
										Borrar Pantalla;
										arregloInventario[i] <- 8;
										arregloInventario[j] <- 0;
										flag <- Verdadero;
										i <- slotsInv-1;
										j <- slotsInv-1;
										Escribir '¡Combinaste [H. mezclada (A+R)] y [Hierba Verde] para hacer [H. mezclada (V+A+R)]!';
								FinSegun
							SiNo
								Borrar Pantalla;
								Escribir 'Acción cancelada.';
							FinSi
						FinSi
					FinPara
				SiNo //si no se elige seguir
					Borrar Pantalla;
					Escribir 'Acción cancelada.';
				FinSi
			FinSi
		FinPara
		Escribir '¿Quiere seguir combinando hierbas?';
		seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	FinMientras
	mensajeSalida('Saliendo al menú principal.');
FinSubProceso

SubProceso curarse ( arregloInventario Por Referencia, slotsInv Por Referencia, vidaActu Por Referencia, vidaMax Por Referencia )
	Definir i,opcion,continuar Como Entero;
	Definir curado Como Logico;
	flag <- Falso;
	mostrarInventario(arregloInventario,slotsInv);
	Escribir '[HP: ',vidaActu,'/',vidaMax,']';
	Escribir '¿Seguro que quieres curarte?';
	continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	Mientras continuar == 1 Hacer
		curado <- falso;
		Borrar Pantalla;
		mostrarInventario(arregloInventario,slotsInv);
		Escribir '[HP: ',vidaActu,'/',vidaMax,']';
		opcion <- verificarOpcion('Seleccione el objeto a usar (escriba el slot que ocupa)',1,slotsInv);
		para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
			si(opcion-1 == i & arregloInventario[i] == 0) Entonces
				Borrar Pantalla;
				escribir '¡Ese espacio está vacío!';
				curado <- Verdadero;
			FinSi
			si(opcion-1 == i & arregloInventario[i] <> 0 & arregloInventario[i] <> 3 & arregloInventario[i] <> 4 & arregloInventario[i] <> 7) Entonces
				si(vidaActu == vidaMax) Entonces
					Borrar Pantalla;
					escribir '¡Ya tienes la vida llena!';
				SiNo
					Borrar Pantalla;
					Escribir '¿Seguro que quiere usar 'Sin Saltar;
					segun arregloInventario[i] hacer
						1:
							Escribir '[Pastillas](5HP)'Sin Saltar;
						2:
							Escribir '[Hierba Verde](10HP)'Sin Saltar;
						5:
							Escribir '[H. mezclada (V+A)](20HP, 20HPMÁX)'Sin Saltar;
						6:
							Escribir '[H. mezclada (V+R)](50HP)'Sin Saltar;
						8:
							Escribir '[H. mezclada (V+A+R)](100HP, 30HPMÁX)'Sin Saltar;
					FinSegun
					Escribir '?';
					continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
					si(continuar == 1)Entonces
						curado <- Verdadero;
						Borrar Pantalla;
						Segun arregloInventario[i] hacer
							1:
								vidaActu <- vidaActu + 5;
								arregloInventario[i] <- 0;
								si(vidaActu > vidaMax | vidaActu == vidaMax) Entonces
									vidaActu <- vidaMax;
									Escribir '¡Te curaste completamente!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								SiNo
									Escribir '¡Recuperaste 5 HP!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								FinSi
							2:
								vidaActu <- vidaActu + 10;
								arregloInventario[i] <- 0;
								si(vidaActu > vidaMax | vidaActu == vidaMax) Entonces
									vidaActu <- vidaMax;
									Escribir '¡Te curaste completamente!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								SiNo
									Escribir '¡Recuperaste 10 HP!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								FinSi
							5:
								vidaMax <- vidaMax + 20;
								vidaActu <- vidaActu + 20;
								arregloInventario[i] <- 0;
								si(vidaActu > vidaMax | vidaActu == vidaMax) Entonces
									vidaActu <- vidaMax;
									Escribir '¡Aumentaste tu HP en 20 y te curaste completamente!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								SiNo
									Escribir '¡Aumentaste tu HP en 20 y recuperaste 20 HP!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								FinSi
							6:
								vidaActu <- vidaActu + 50;
								arregloInventario[i] <- 0;
								si(vidaActu > vidaMax | vidaActu == vidaMax) Entonces
									vidaActu <- vidaMax;
									Escribir '¡Te curaste completamente!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								SiNo
									Escribir '¡Recuperaste 50 HP!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								FinSi
							8:
								vidaMax <- vidaMax + 30;
								vidaActu <- vidaActu + 100;
								arregloInventario[i] <- 0;
								si(vidaActu > vidaMax | vidaActu == vidaMax) Entonces
									vidaActu <- vidaMax;
									Escribir '¡Aumentaste tu HP en 30 y te curaste completamente!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								SiNo
									Escribir '¡Aumentaste tu HP en 30 y recuperaste 100 HP!';
									Escribir '[HP: ',vidaActu,'/',vidaMax,']';
									Escribir 'Presione una tecla para continuar.';
									Esperar Tecla;
								FinSi
						FinSegun
						i <- slotsInv-1;
					SiNo
						escribir 'Acción cancelada.';
					FinSi
				FinSi
			FinSi
			si(opcion-1 == i & curado == Falso & arregloInventario[i] <> 1 & arregloInventario[i] <> 2 & arregloInventario[i] <> 5 & arregloInventario[i] <> 6 & arregloInventario[i] <> 8) Entonces
				Borrar Pantalla;
				escribir '¡Este objeto no se puede usar de forma directa!';
				i <- slotsInv-1;
			FinSi
		FinPara
		Escribir '¿Quieres seguir curándote?';
		continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
		si(vidaActu == vidaMax) Entonces
			Borrar Pantalla;
			Escribir '¡Ya tienes la vida llena!';
			continuar <- 2;
		FinSi
	FinMientras
	mensajeSalida('Saliendo al menú principal.');
FinSubProceso

SubProceso  descartarObjetos ( arregloInventario Por Referencia, slotsInv Por Referencia )
	Definir opcion, i, continuar Como Entero;
	mostrarInventario(arregloInventario,slotsInv);
	Escribir '¿Seguro que quiere descartar algún objeto?';
	continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	mientras continuar == 1 hacer
		Borrar Pantalla;
		mostrarInventario(arregloInventario,slotsInv);
		opcion <- verificarOpcion('Seleccione el objeto a borrar (escriba el slot que ocupa)',1,slotsInv);
		Para i<-0 hasta slotsInv Con Paso 1 Hacer
			si(opcion-1 == i & arregloInventario[i] == 0) Entonces
				Borrar Pantalla;
				escribir '¡Este espacio ya está vacío!';
			FinSi
			si(opcion-1 == i & arregloInventario[i] <> 0)Entonces
				Borrar Pantalla;
				Escribir '¿Seguro que quiere descartar 'Sin Saltar;
				segun arregloInventario[i] hacer
					1:
						Escribir '[Pastillas]' Sin Saltar;
					2:
						Escribir '[Hierba Verde]' Sin Saltar;
					3:
						Escribir '[Hierba Amarilla]' Sin Saltar;
					4:
						Escribir '[Hierba Roja]' Sin Saltar;
					5:
						Escribir '[H. mezclada (V+A)]' Sin Saltar;
					6:
						Escribir '[H. mezclada (V+R)]' Sin Saltar;
					7:
						Escribir '[H. mezclada (A+R)]' Sin Saltar;
					8:
						Escribir '[H. mezclada (V+A+R)]' Sin Saltar;
				FinSegun
				Escribir '[Slot: ',i+1,']?';
				continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
				si(continuar == 1)Entonces
					arregloInventario[i] <- 0;
					Borrar Pantalla;
					Escribir '¡Objeto borrado!';
				SiNo
					Borrar Pantalla;
					escribir 'Acción cancelada.';
				FinSi
			FinSi
		FinPara
		Escribir '¿Quiere seguir borrando objetos?';
		continuar <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	FinMientras
	mensajeSalida('Saliendo al menú principal.');
FinSubProceso

SubProceso opcionOut <- verificarOpcion ( string,limite1,limite2 )
	Definir opcionRealIn Como Real;
	Definir opcionOut Como Entero;
	Escribir string;
	Escribir '(',limite1,'-',limite2,', sin decimales) 'Sin Saltar;
	Leer opcionRealIn;
	opcionOut <- trunc(opcionRealIn);
	Mientras (opcionRealIn < limite1 | opcionRealIn > limite2 | opcionRealIn > opcionOut) hacer
		Escribir 'Opción no válida, elija otra (',limite1,'-',limite2,', sin decimales) 'Sin Saltar;
		Leer opcionRealIn;
		opcionOut <- trunc(opcionRealIn);
	FinMientras
FinSubProceso

SubProceso  ordenarInventario ( arregloInventario Por Referencia, slotsInv Por Referencia )
	Definir i, j, aux, opcion Como Entero;
	mostrarInventario(arregloInventario,slotsInv);
	Escribir '¿Seguro que quiere ordenar su inventario?';
	opcion <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);
	si(opcion == 1) Entonces
		Borrar Pantalla;
		Escribir 'Ordenando su inventario...';
		Esperar 2 Segundos;
		Para i<-0 hasta (slotsInv-1) Con Paso 1 Hacer //algoritmo para ordenar
			Para j<-0 hasta (slotsInv-1) con paso 1 Hacer
				si(arregloInventario[j] < arregloInventario[i]) Entonces
					aux <- arregloInventario[j];
					arregloInventario[j] <- arregloInventario[i];
					arregloInventario[i] <- aux;
				FinSi
			FinPara
		FinPara
		mostrarInventario(arregloInventario,slotsInv);
		mensajeSalida('Inventario ordenado.');
	SiNo
		Borrar Pantalla;
		mensajeSalida('Acción cancelada.');
	FinSi
	
FinSubProceso

SubProceso mostrarInventario ( arregloInventario Por Referencia, slotsInv Por Referencia )
	Definir i, contEspaciado, IDobjeto Como Entero;
	contEspaciado <- 0;
	Escribir '******** OBJETOS ********';
	Para i<-0 hasta (slotsInv-1) Con Paso 1 Hacer
		IDobjeto <- arregloInventario[i];
		Escribir '[',i+1,']' Sin Saltar;
		Segun IDobjeto hacer
			0:
				Escribir '[Vacío]' Sin Saltar;
			1:
				Escribir '[Pastillas]' Sin Saltar;
			2:
				Escribir '[Hierba Verde]' Sin Saltar;
			3:
				Escribir '[Hierba Amarilla]' Sin Saltar;
			4:
				Escribir '[Hierba Roja]' Sin Saltar;
			5:
				Escribir '[H. mezclada (V+A)]' Sin Saltar;
			6:
				Escribir '[H. mezclada (V+R)]' Sin Saltar;
			7:
				Escribir '[H. mezclada (A+R)]' Sin Saltar;
			8:
				Escribir '[H. mezclada (V+A+R)]' Sin Saltar;
		FinSegun
		Escribir ' | 'Sin Saltar;
		contEspaciado <- contEspaciado + 1;
		Si(contespaciado == 2)Entonces
			Escribir '';
			contespaciado <- 0;
		FinSi
	FinPara
	si(slotsInv mod 2 <> 0)Entonces
		Escribir '';
	FinSi
	Escribir '******** OBJETOS ********';
FinSubProceso

SubProceso  gestionarInventario ( arregloInventario Por Referencia, slotsInv Por Referencia, vidaAct Por Referencia, vidaMax Por Referencia )
	Definir i, j, aux Como Entero;
	Definir opcion Como Entero;
	Definir invVacio Como entero;
	opcion <- 0;
	
	Mientras (opcion <> 6) Hacer
		Borrar Pantalla;
		Escribir '********  INVENTARIO  ********';
		Escribir '1) Ver objetos.'; //terminado
		Escribir '2) Combinar hierbas.'; //terminado (testear)
		Escribir '3) Consumir objetos curativos.'; //terminado
		Escribir '4) Descartar objetos.'; //terminado
		Escribir '5) Ordenar items (por ID).'; //terminado
		Escribir '6) Salir';
		Escribir '[HP: ',vidaAct,'/',vidaMax,']';
		Escribir '******************************';
		
		opcion <- verificarOpcion('Elija una opción (1-6).',1,6);
		Segun opcion Hacer
			1:
				Borrar Pantalla;
				invVacio <- verificarInventarioVacio(arregloInventario,slotsInv);
				si(invVacio == 0) Entonces
					mostrarInventario(arregloInventario,slotsInv);
					Escribir 'Presione una tecla para continuar.';
					Esperar Tecla;
				FinSi
			2:
				Borrar Pantalla;
				invVacio <- verificarInventarioVacio(arregloInventario,slotsInv);
				si(invVacio == 0) Entonces
					combinarHierbas(arregloInventario,slotsInv);
				FinSi
			3:
				Borrar Pantalla;
				invVacio <- verificarInventarioVacio(arregloInventario,slotsInv);
				si(invVacio == 0) Entonces
					si(vidaAct == vidaMax) Entonces
						mensajeSalida('¡Ya tienes la vida llena!');
					SiNo
						curarse(arregloInventario,slotsInv,vidaAct,vidaMax);
					FinSi
				FinSi
			4:
				Borrar Pantalla;
				invVacio <- verificarInventarioVacio(arregloInventario,slotsInv);
				si(invVacio == 0) Entonces
					descartarObjetos(arregloInventario,slotsInv);
				FinSi
			5:
				Borrar Pantalla;
				invVacio <- verificarInventarioVacio(arregloInventario,slotsInv);
				si(invVacio == 0) Entonces
					ordenarInventario(arregloInventario,slotsInv);
				FinSi
			6:
				Borrar Pantalla;
				Escribir 'Saliendo del inventario...';
				Esperar 1 Segundos;
				Borrar Pantalla;
		FinSegun
	FinMientras
FinSubProceso

Proceso PORTRE4
	Definir i, slotsInventario, vidaActual, vidaMaxima, eventoRandom, seguir Como Entero;
	Definir inventario Como Entero;
	slotsInventario <- 6; //espacio disponible en el inventario (posible mecánica de mochilas)
	Dimension inventario[slotsInventario];
	vidaActual <- 50;
	vidaMaxima <- 100;
	
	escribirCadena('Jueguito V1.3',60,1);
	
	///debug xd
	Escribir '[DEBUG carga inicial] ' Sin Saltar;
	Para i<-0 hasta slotsInventario-1 Con Paso 1 Hacer //prueba de cargar el inventario aleatoriamente
		inventario[i] <- Aleatorio(0,8);
		//inventario[i] <- 0;
	FinPara
	//inventario[0] <- 0; //garantizar que siempre haya un espacio vacío para pruebas
	
	Para i<-0 hasta slotsInventario-1 Con Paso 1 Hacer
		Escribir inventario[i],' ' Sin Saltar;
	FinPara
	Escribir '';
	Escribir 'Presione cualquier tecla para continuar.';
	Esperar Tecla;
	
	Escribir '¿Entrar al bucle de gestionar inventario y eventos?';
	seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);	
	Mientras seguir == 1 Hacer
		//eventoRandom <- Aleatorio(1,4);
		eventoRandom <- 2; ///pruebas
		Segun eventoRandom hacer
			1:
				eventoLooteo(inventario,slotsInventario,vidaActual,vidaMaxima);
			2:
				eventoTexto(inventario,slotsInventario,vidaActual,vidaMaxima);
			3:
				Escribir 'Evento ',eventoRandom;
			4:
				Escribir 'Evento ',eventoRandom;
		FinSegun
		gestionarInventario(inventario,slotsInventario,vidaActual,vidaMaxima);
		Escribir '¿Hacerlo de nuevo?';
		seguir <- verificarOpcion('Elija (1) para SI, o (2) para NO.',1,2);	
		si(seguir == 2)Entonces
			Borrar Pantalla;
			Escribir 'Terminando ejecución del programa.';
		FinSi
	FinMientras
	
	Escribir '';
	Escribir '[DEBUG inventario final] ' Sin Saltar;
	Para i<-0 hasta (slotsInventario-1) Con Paso 1 Hacer
		Escribir inventario[i],' ' Sin Saltar;
	FinPara
	Escribir '';
	///fin debug
FinProceso