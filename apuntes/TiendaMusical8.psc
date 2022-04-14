Algoritmo TiendaMusical8
	Escribir "Tienda musical"
	
	// En estas variables se almacena la cantidad de cada producto
	cGuitarras <- 0 
	cBajos <- 0
	cViolines <- 0
	cBaterias <- 0
	cTeclados <- 0
	
	// Esta variable permite seleccionar la opción 
	// y además controlar si el ciclo continúa.
	opc <- -1 
	Mientras opc != 0  Hacer
		Escribir "Carro"
		Escribir "1. Guitarra $200.000"
		Escribir "2. Bajo $300.000"
		Escribir "3. Violín $150.000"
		Escribir "4. Batería $250.000"
		Escribir "5. Teclado $200.000"
		Escribir "0. Comprar carro"
		
		Leer opc
		
		Segun opc Hacer
			1: 
				// Este ciclo se utiliza para repetir la lectura de
				// la cantidad de guitarras, si el usuario ingresa
				// una cantidad menor a 0.
				Escribir "Indique la cantidad de guitarras: "
				Leer cGuitarras
				
				Si cGuitarras < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				Mientras cGuitarras < 0 Hacer
					Escribir "Indique la cantidad de guitarras: "
					Leer cGuitarras
					
					Si cGuitarras < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
			2: 
				
				Escribir "Indique la cantidad de bajos: "
				Leer cBajos
				
				Si cBajos < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				Mientras cBajos < 0 Hacer
					Escribir "Indique la cantidad de bajos: "
					Leer cBajos
					
					Si cBajos < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
			3: 
				Escribir "Indique la cantidad de violines: "
				Leer cViolines
				
				Si cViolines < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				Mientras cViolines < 0 Hacer
					Escribir "Indique la cantidad de violines: "
					Leer cViolines
					
					Si cViolines < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
			4: 
				Escribir "Indique la cantidad de baterias: "
				Leer cBaterias
				
				Si cBaterias < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				Mientras cBaterias < 0 Hacer
					Escribir "Indique la cantidad de baterias: "
					Leer cBaterias
					
					Si cBaterias < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
			5: 
				Escribir "Indique la cantidad de teclados: "
				Leer cTeclados
				
				Si cTeclados < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				Mientras cTeclados < 0 Hacer
					Escribir "Indique la cantidad de teclados: "
					Leer cTeclados
					
					Si cTeclados < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
			0: 
				
			De Otro Modo:
				Escribir "Opción errónea"
		FinSegun
		
		Escribir ""
		Escribir "Guitarras: ", cGuitarras
		Escribir "Bajos: ", cBajos
		Escribir "Violines: ", cViolines
		Escribir "Baterías: ", cBaterias
		Escribir "Teclados: ", cTeclados
		
		Escribir ""
		
		Escribir "Total: ", cGuitarras * 200000 + cBajos * 300000 + cViolines * 150000 + cBaterias * 250000 + cTeclados * 200000
	FinMientras
	
	
	// Este Si-SiNo permite mostrar el detalle de sólo
	// los productos que se han agregado, omitiendo
	// mostrar el mensaje para productos que no se compraron.
	Si cGuitarras + cBajos + cViolines + cBaterias + cTeclados > 1 Entonces
		Escribir "Has comprado: "
		Si cGuitarras > 1 Entonces
			Escribir "Guitarras: ", cGuitarras
		FinSi
		
		Si cBajos > 1 Entonces
			Escribir "Bajos: ", cBajos
		FinSi
		
		Si cViolines > 1 Entonces
			Escribir "Violines: ", cViolines
		FinSi
		
		Si cBaterias > 1 Entonces
			Escribir "Baterias: ", cBaterias
		FinSi
		
		Si cTeclados > 1 Entonces
			Escribir "Teclados: ", cTeclados
		FinSi
		
		Escribir "¿Desea dividir su boleta? Indique la cantidad (1 - 3)."
		cantBoletas <- 0
		Mientras cantBoletas < 0 o cantBoletas > 3 Hacer
			Leer cantBoletas
			
			Si cantBoletas < 0 o cantBoletas > 3 Entonces
				Escribir "No puede indicar una cantidad negativa."
			FinSi
		FinMientras
		
		esClienteFrecuente <- 1 //Se le asigna un valor inicial arbitrario.
		
		Mientras clienteFrecuente != 1 o clienteFrecuente != 2 Hacer
			Escribir "¿Es cliente frecuente?"
			Escribir "1. Sí"
			Escribir "2. No"
			Leer esClienteFrecuente
			
			Si clienteFrecuente != 1 o clienteFrecuente != 2 Entonces
				Escribir "Opción inválida."
			FinSi
		FinMientras
		
		Para i <- 1 Hasta cantBoletas Hacer
			Escribir "Boleta Nº", i
			Escribir "Seleccione los productos de su carro que llevará en esta boleta: " 
			Escribir "1. Guitarras (", cGuitarras, ")"
			Escribir "2. Bajos (", cBajos, ")"
			Escribir "3. Violines (", cViolines, ")"
			Escribir "4. Baterías (", cBaterías, ")"
			Escribir "5. Teclados (", cTeclados, ")"
			
			Leer opc
			
			Segun opc Hacer
				1: 
					Escribir "Cantidad a agregar a la boleta: "
					Leer cantidad
					
					Si cGuitarras - cantidad < 0 Entonces
						Escribir "Cantidad inválida"
					SiNo
						cGuitarras <- cGuitarras - cantidad
					FinSi
					
					Mientras cGuitarras < 0 Hacer
						Escribir "Cantidad a agregar a la boleta: "
						Leer cantidad
						
						Si cGuitarras - cantidad < 0 Entonces
							Escribir "Cantidad inválida"
						SiNo
							cGuitarras <- cGuitarras - cantidad
						FinSi
					FinMientras
				2: 
					Escribir "Cantidad a agregar a la boleta: "
					Leer cantidad
					
					Si cBajos - cantidad < 0 Entonces
						Escribir "Cantidad inválida"
					SiNo
						cBajos <- cBajos - cantidad
					FinSi
					
					Mientras cBajos < 0 Hacer
						Escribir "Cantidad a agregar a la boleta: "
						Leer cantidad
						
						Si cBajos - cantidad < 0 Entonces
							Escribir "Cantidad inválida"
						SiNo
							cBajos <- cBajos - cantidad
						FinSi
					FinMientras
				3: 
					Escribir "Cantidad a agregar a la boleta: "
					Leer cantidad
					
					Si cViolines - cantidad < 0 Entonces
						Escribir "Cantidad inválida"
					SiNo
						cViolines <- cViolines - cantidad
					FinSi
					
					Mientras cViolines < 0 Hacer
						Escribir "Cantidad a agregar a la boleta: "
						Leer cantidad
						
						Si cViolines - cantidad < 0 Entonces
							Escribir "Cantidad inválida"
						SiNo
							cViolines <- cViolines - cantidad
						FinSi
					FinMientras
				4:
					Escribir "Cantidad a agregar a la boleta: "
					Leer cantidad
					
					Si cBaterias - cantidad < 0 Entonces
						Escribir "Cantidad inválida"
					SiNo
						cBaterias <- cBaterias - cantidad
					FinSi
					
					Mientras cBaterias < 0 Hacer
						Escribir "Cantidad a agregar a la boleta: "
						Leer cantidad
						
						Si cBaterias - cantidad < 0 Entonces
							Escribir "Cantidad inválida"
						SiNo
							cBaterias <- cBaterias - cantidad
						FinSi
					FinMientras
				5:
					Escribir "Cantidad a agregar a la boleta: "
					Leer cantidad
					
					Si cTeclados - cantidad < 0 Entonces
						Escribir "Cantidad inválida"
					SiNo
						cTeclados <- cTeclados - cantidad
					FinSi
					
					Mientras cTeclados < 0 Hacer
						Escribir "Cantidad a agregar a la boleta: "
						Leer cantidad
						
						Si cTeclados - cantidad < 0 Entonces
							Escribir "Cantidad inválida"
						SiNo
							cTeclados <- cTeclados - cantidad
						FinSi
					FinMientras
				De Otro Modo: 
					i <- i - 1 // Para "descontar" esta iteración del Para.
					Escribir "Opción errónea."
			FinSegun
			
			Si i == cantBoletas y cGuitarras + cBajos + cViolines + cBaterias + cTeclados > 0 Entonces
				Escribir "No se han seleccionado todos los productos del carro."
				Escribir "No se cursará la venta. Contactar a un vendedor."
			SiNo
				totalBoleta <- cGuitarras * 200000 + cBajos * 300000 + cViolines * 150000 + cBaterias * 250000 + cTeclados * 200000
				
				IVA <- 0.19 // Sabiendo que el IVA es aprox. 19%.
				ventaConIVA <- totalBoleta * (1 + IVA)
				
				Escribir "Venta sin IVA: ", totalBoleta
				Escribir "IVA 19%"
				Escribir "Venta con IVA:", ventaConIVA
				
				Según esClienteFrecuente Hacer
			1: 
				Escribir "Descuento 5%"
				Escribir "Total:", ventaConIVA * 0.95
			2: 
				Escribir "Total:", ventaConIVA
		FinSegun
	FinSi
FinPara
SiNo
	Escribir "No hay suficientes productos."
FinSi
FinAlgoritmo
