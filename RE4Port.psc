SubProceso curarse ( arregloInventario Por Referencia, slotsInv Por Referencia, vidaActu Por Referencia, vidaMax Por Referencia )
	Definir i,opcion,continuar Como Entero;
	Definir curado Como Logico;
	curado <- Falso;
	mostrarInventario(arregloInventario,slotsInv);
	Escribir '[HP: ',vidaActu,'/',vidaMax,']';
	opcion <- verificarOpcion('Seleccione el objeto a usar (escriba el slot que ocupa)',1,slotsInv);
	para i<-0 hasta slotsInv-1 Con Paso 1 Hacer
		si(opcion-1 == i & arregloInventario[i] == 0) Entonces
			Borrar Pantalla;
			Escribir '¡Ese espacio está vacío!';
			Esperar 1 Segundos;
			Escribir 'Presione cualquier tecla para continuar.';
			Esperar Tecla;
			curado <- Verdadero;
		FinSi
		si(opcion-1 == i & arregloInventario[i] <> 0 & arregloInventario[i] <> 3 & arregloInventario[i] <> 4 & arregloInventario[i] <> 7) Entonces
			si(vidaActu == vidaMax) Entonces
				Borrar Pantalla;
				Escribir '¡Ya tienes la vida llena!';
				Esperar 1 Segundos;
				Escribir 'Presione cualquier tecla para continuar.';
				Esperar Tecla;
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
					Escribir 'Acción cancelada, volviendo al menú principal...';
					Esperar 1 Segundos;
					Escribir 'Presione cualquier tecla para continuar.';
					Esperar Tecla;
				FinSi
			FinSi
		FinSi
		si(opcion-1 == i & curado == Falso & arregloInventario[i] <> 1 & arregloInventario[i] <> 2 & arregloInventario[i] <> 5 & arregloInventario[i] <> 6 & arregloInventario[i] <> 8) Entonces
			Borrar Pantalla;
			Escribir '¡Ese objeto no se puede usar directamente!';
			Escribir 'Presione una tecla para continuar.';
			i <- slotsInv-1;
			Esperar Tecla;
		FinSi
	FinPara
FinSubProceso

SubProceso  descartarObjetos ( arregloInventario Por Referencia, slotsInv Por Referencia )
	Definir opcion, i, continuar Como Entero;
	mostrarInventario(arregloInventario,slotsInv);
	opcion <- verificarOpcion('Seleccione el objeto a borrar (escriba el slot que ocupa)',1,slotsInv);
	Para i<-0 hasta slotsInv Con Paso 1 Hacer
		si(opcion-1 == i & arregloInventario[i] == 0) Entonces
			Escribir '¡Ese espacio ya está vacío!';
			Esperar 1 Segundos;
			Escribir 'Presione cualquier tecla para continuar.';
			Esperar Tecla;
		FinSi
		si(opcion-1 == i & arregloInventario[i] <> 0)Entonces
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
				Escribir '¡Objeto borrado!';
				Escribir 'Presione cualquier tecla para volver al menú principal.';
				Esperar Tecla;
			SiNo
				Escribir 'Acción cancelada, volviendo al menú principal...';
				Escribir 'Presione cualquier tecla para continuar.';
				Esperar Tecla;
			FinSi
		FinSi
	FinPara
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
	Definir i, j, aux Como Entero;
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
	Escribir 'Listo, regresando al menú principal...';
	Escribir 'Presione cualquier tecla para continuar.';
	Esperar Tecla;
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
	Escribir '';
	Escribir '******** OBJETOS ********';
FinSubProceso

SubProceso  gestionarInventario ( arregloInventario Por Referencia, slotsInv Por Referencia, vidaAct Por Referencia, vidaMax Por Referencia )
	Definir i, j, aux Como Entero;
	Definir opcion Como Entero;
	opcion <- 0;
	
	Mientras (opcion <> 6) Hacer
		Borrar Pantalla;
		Escribir '********  INVENTARIO  ********';
		Escribir '1) Ver objetos.'; //terminado
		Escribir '2) Combinar hierbas.'; //Hacer
		Escribir '3) Consumir objetos curativos.'; //arreglar: no muestra nada al usar hierba roja, amarilla ni (a+r)
		Escribir '4) Descartar objetos.'; //terminado
		Escribir '5) Ordenar items (por ID).'; //terminado
		Escribir '6) Salir';
		Escribir '[HP: ',vidaAct,'/',vidaMax,']';
		Escribir '******************************';
		
		opcion <- verificarOpcion('Elija una opción',1,6);
		Segun opcion Hacer
			1:
				Borrar Pantalla;
				mostrarInventario(arregloInventario,slotsInv);
				Escribir 'Presione cualquier tecla para continuar 'Sin Saltar;
				Esperar Tecla;
			2:
				Borrar Pantalla;
				Escribir 'WORK IN PROGRESS';
				Escribir 'Presiona cualquier tecla para volver.';
				Esperar Tecla;
			3:
				Borrar Pantalla;
				curarse(arregloInventario,slotsInv,vidaAct,vidaMax);
				Borrar Pantalla;
			4:
				Borrar Pantalla;
				descartarObjetos(arregloInventario,slotsInv);
			5:
				Borrar Pantalla;
				ordenarInventario(arregloInventario,slotsInv);
				Borrar Pantalla;
			6:
				Borrar Pantalla;
				Escribir 'Saliendo del inventario...';
				Esperar 1 Segundos;
				Borrar Pantalla;
		FinSegun
	FinMientras
FinSubProceso

Proceso PORTRE4
	Definir i, slotsInventario, vidaActual, vidaMaxima Como Entero;
	Definir inventario Como Entero;
	slotsInventario <- 9; //espacio disponible en el inventario (posible mecánica de mochilas)
	Dimension inventario[slotsInventario];
	vidaActual <- 1;
	vidaMaxima <- 100;
	
	Escribir '[DEBUG] ' Sin Saltar;
	Para i<-0 hasta (slotsInventario-1) Con Paso 1 Hacer //prueba de cargar el inventario aleatoriamente
		//inventario[i] <- Aleatorio(0,8);
		inventario[i] <- i;
		Escribir inventario[i],' ' Sin Saltar;
	FinPara
	//inventario[0] <- 0; //garantizar que siempre haya un espacio vacío para pruebas
	
	Esperar Tecla;
	gestionarInventario(inventario,slotsInventario,vidaActual,vidaMaxima); //hacen falta más opciones y comprobaciones
	
	Escribir '';
	Escribir '[DEBUG] ' Sin Saltar;
	Para i<-0 hasta (slotsInventario-1) Con Paso 1 Hacer
		Escribir inventario[i],' ' Sin Saltar;
	FinPara
	Escribir '';
FinProceso