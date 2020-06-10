SubProceso ListarProductos (pidePaga, total, precio, producto, cantItems)
	//IMPRIME TICKET
	definir i Como Entero;
	definir paga como real;
	definir vuelto como real;
	
	Limpiar Pantalla;
	Para i<-0 hasta cantItems-1 Con Paso 1 Hacer
		
		Si precio(i)>0 Entonces
			Escribir producto(i), "  -  $", precio(i);
			total<-total+precio(i);			
		FinSi		
		
	FinPara
	
	escribir "--------------------------------------------------";
	escribir"Total                   $", total;
	
	si pidePaga=verdadero Entonces
		Repetir
			escribir "Paga con:";
			leer paga;
			
			vuelto <- paga - total;
		Hasta Que vuelto >= 0
		escribir "Su vuelto:      $", vuelto;
	FinSi
	
	Esperar Tecla;	
FinSubProceso

SubProceso ReiniciarPedido (precio, producto, cantItems)
	//Este subproceso va a borrar el contenido de las variables precio y producto y los reemplazar� por un valor espacio" " o el valor cero"0.0"
	definir c Como Entero;
	
	Para c<-0 hasta cantItems-1 con paso 1 Hacer
		producto(c)<-" ";
		precio(c)<- 0.0;
	FinPara
	
FinSubProceso

Proceso VentaBurguer_v_1
	definir cantItems Como Entero;
	cantItems <- 3;
	
	definir producto como cadena;
	dimension producto(3);
	
	definir precio como real;
	dimension precio(3);
	
	definir total como real;
	
	definir contador como Entero;
	definir opcion como Entero;
	
	contador <- 0;
	total <- 0;
	
	//Para poder en cierto punto del programa listar los productos que tenemos cargados hasta el momento, tenemos que tener 
	//todos los arreglos de las variables inicializadas, para ello usamos este subproceso
	ReiniciarPedido(precio, producto, cantItems);
	
	Repetir
		//muestra menu principal
		limpiar pantalla;
		escribir "Bienvenidos a Venta Burguer! Seleccione en el men� que va a llevar el cliente:";
		escribir "";
		escribir "1 - Hamburguesa";
		escribir "2 - Bebida";
		escribir "3 - Acompa�ante";
		escribir "";
		escribir "4 - Ver pedido";
		escribir "5 - Imprimir ticket";
		escribir "";
		escribir "9 - Salir";
		escribir "";
		escribir "Ingrese opci�n de men�";
		leer opcion;
		
		Segun opcion Hacer
			1:
				//submen� hamburguesas
				Repetir
					Limpiar Pantalla;
					escribir "1 - Hamburguesa Cl�sica - $150.00";
					escribir "2 - Hamburguesa con Bacon - $200.00";
					escribir "3 - Hamburguesa de Pollo - $160.00";
					Escribir " ";
					escribir "9 - Atr�s";
					escribir "";
					Escribir "Ingrese opci�n de men�";
					leer opcion;
					
					Segun opcion hacer
						1:
							producto(contador)<- "Hamburguesa Cl�sica";
							precio(contador)<- 150.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Hamburguesa Cl�sica al pedido";
							Esperar Tecla;
							opcion <- 0;
						2:
							producto(contador)<- "Hamburguesa con Bacon";
							precio(contador)<- 200.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Hamburguesa con Bacon al pedido";
							Esperar Tecla;
							opcion <- 0;
						3:
							producto(contador)<- "Hamburguesa de Pollo";
							precio(contador)<- 160.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Hamburguesa de Pollo al pedido";
							Esperar Tecla;
							opcion <- 0;
						9: 
							//men� atr�s
							opcion <- 0;
							
						De Otro Modo:
							//ERROR
							escribir "Opcion equivocada elija de nuevo.";
							esperar Tecla;	
					FinSegun
				Hasta Que opcion = 0
				
			2:
				//submen� bebida				
				Repetir
					Limpiar Pantalla;
					escribir "1 - Coca-cola - $80.00";
					escribir "2 - Fanta - $80.00";
					escribir "3 - Sprite - $80.00";
					Escribir "4 - Agua mineral - $50.00";
					Escribir " ";
					escribir "9 - Atr�s";
					escribir "";
					escribir "Ingrese opci�n de men�";
					leer opcion;
					
					Segun opcion hacer
						1:
							producto(contador)<- "Coca-cola";
							precio(contador)<- 80.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Coca-cola al pedido";
							Esperar Tecla;
							opcion <- 0;
						2:
							producto(contador)<- "Fanta";
							precio(contador)<- 80.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Fanta al pedido";
							Esperar Tecla;
							opcion <- 0;
						3:
							producto(contador)<- "Sprite";
							precio(contador)<- 80.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Sprite al pedido";
							Esperar Tecla;
							opcion <- 0;							
						4:
							producto(contador)<- "Agua mineral";
							precio(contador)<- 50.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Agua mineral al pedido";
							Esperar Tecla;
							opcion <- 0;
						9: 
							//men� atr�s
							opcion <- 0;
							
						De Otro Modo:
							//ERROR
							escribir "Opcion equivocada elija de nuevo.";
							esperar Tecla;	
					FinSegun
				Hasta Que opcion = 0
				
			3:
				//submen� acompa�ante
				Repetir
					Limpiar Pantalla;
					escribir "1 - Papas curly - $70.00";
					escribir "2 - Batatas fritas - $60.00";
					escribir "3 - Nuggets de pollo - $80.00";
					Escribir " ";
					escribir "9 - Atr�s";
					escribir "";
					Escribir "Ingrese opci�n de men�";
					leer opcion;
					
					Segun opcion hacer
						1:
							producto(contador)<- "Papas curly";
							precio(contador)<- 70.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Papas curly al pedido";
							Esperar Tecla;
							opcion <- 0;
						2:
							producto(contador)<- "Batatas fritas";
							precio(contador)<- 60.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Batatas fritas al pedido";
							Esperar Tecla;
							opcion <- 0;
						3:
							producto(contador)<- "Nuggets de pollo";
							precio(contador)<- 80.00;
							
							contador<- contador+1;
							
							Escribir "Se agreg� Nuggets de pollo al pedido";
							Esperar Tecla;
							opcion <- 0;
						9: 
							//men� atr�s
							opcion <- 0;
							
						De Otro Modo:
							//ERROR
							escribir "Opcion equivocada elija de nuevo.";
							esperar Tecla;	
					FinSegun
				Hasta Que opcion = 0
				
			4:
				//Solo para ver el pedido hasta el momento, no genera ticket, no pide pago y no reinicia pedido
				ListarProductos(falso, total, precio, producto, cantItems);				
			5:
				//para emitir ticket ya finalizado pidiendo paga e informando vuelto, al finalizar reinicia pedido
				ListarProductos(verdadero, total, precio, producto, cantItems);
				
				ReiniciarPedido(precio, producto, cantItems);
				contador<-0;
			9:
				//SALIDA
				escribir "Opci�n salir";
				esperar Tecla;
			De Otro Modo:
				//ERROR
				escribir "Opcion equivocada elija de nuevo.";
				esperar Tecla;
		FinSegun
	Hasta Que opcion = 9
FinProceso
