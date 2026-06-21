	Algoritmo SistemaVentasCasaCell
	
	// Declaración de variables
	Definir opcion Como Entero
	Definir producto, metodoPago, registrarOtra Como Cadena
	Definir precio, total Como Real
	Definir aplicaDescuento Como Entero
	
	// Mensaje de bienvenida
	Escribir "=================================="
	Escribir "     SISTEMA DE VENTAS CASACELL"
	Escribir "=================================="
	
	// Variable para controlar el ciclo principal
	registrarOtra <- "SI"
	
	// Ciclo principal del sistema
	Mientras registrarOtra = "SI" Hacer
		
		// Mostrar menú principal
		Escribir ""
		Escribir "MENU PRINCIPAL"
		Escribir "1. Registrar venta"
		Escribir "2. Salir"
		Escribir "Ingrese una opcion:"
		
		Leer opcion
		
		// Validar opción seleccionada
		Si opcion = 1 Entonces
			
			// Registro de datos del producto
			Escribir ""
			Escribir "Ingrese el nombre del producto:"
			Leer producto
			
			Escribir "Ingrese el precio del producto:"
			Leer precio
			
			// Preguntar si existe descuento
			Escribir ""
			Escribir "¿Desea aplicar descuento?"
			Escribir "1 = SI"
			Escribir "0 = NO"
			Leer aplicaDescuento
			
			// Calcular precio final
			Si aplicaDescuento = 1 Entonces
				
				total <- precio - (precio * 0.10)
				
				Escribir "Descuento del 10% aplicado."
				
			SiNo
				
				total <- precio
				
				Escribir "No se aplico descuento."
				
			FinSi
			
			// Selección de método de pago
			Escribir ""
			Escribir "Seleccione metodo de pago:"
			Escribir "1. Yape"
			Escribir "2. Plin"
			Escribir "3. Tarjeta Visa"
			Escribir "4. Efectivo"
			
			Leer opcion
			
			// Determinar método de pago
			Segun opcion Hacer
				
				1:
					metodoPago <- "Yape"
					
				2:
					metodoPago <- "Plin"
					
				3:
					metodoPago <- "Tarjeta Visa"
					
				4:
					metodoPago <- "Efectivo"
					
				De Otro Modo:
					metodoPago <- "No especificado"
					
			FinSegun
			
			// Mostrar comprobante de venta
			Escribir ""
			Escribir "=================================="
			Escribir "        BOLETA DE VENTA"
			Escribir "=================================="
			Escribir "Producto: ", producto
			Escribir "Precio final: S/ ", total
			Escribir "Metodo de pago: ", metodoPago
			Escribir "Venta registrada correctamente"
			Escribir "=================================="
			
		SiNo
			
			// Opción para salir del sistema
			Si opcion = 2 Entonces
				
				registrarOtra <- "NO"
				
			SiNo
				
				Escribir "Opcion incorrecta."
				
			FinSi
			
		FinSi
		
		// Preguntar si desea registrar otra venta
		Si registrarOtra <> "NO" Entonces
			
			Escribir ""
			Escribir "¿Desea registrar otra venta?"
			Escribir "Escriba SI o NO:"
			
			Leer registrarOtra
			
		FinSi
		
	FinMientras
	
	// Mensaje de cierre
	Escribir ""
	Escribir "Gracias por utilizar el sistema CasaCell."
	Escribir "Programa finalizado."
	
FinAlgoritmo
