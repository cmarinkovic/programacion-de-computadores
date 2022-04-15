# Programación de Computadores

* Placeholder for Table of Content (Must not be removed) <newline> {:toc}

## Introducción

Esta página contiene apuntes del curso Programación de Computadores de la Universidad de La Frontera, actualizados al 1º semestre de 2022. A lo largo de los apuntes, se revisa un ejemplo de problema de una tienda musical, que va aumentando en complejidad.



## Conceptos básicos

A continuación se presentan definiciones básicas en el contexto del curso.

- Algoritmo: Conjunto de instrucciones que se ejecutan de forma secuencial, procesando distintos tipos de datos para dar solución a un problema general.
- Dato: Unidad mínima de información sin sentido en sí misma.
  - Tipo de dato: Restricción impuesta para la interpretación, manipulación, o representación de datos.
- Variable: Espacio de memoria reservado para almacenar un dato que corresponde a un tipo de dato soportado por el lenguaje de programación.
  - Tipo de variable: Restricción del tipo de dato que soporta la variable.
  - Constante: Variable cuyo valor no puede cambiar durante la ejecución del programa.
  - Identificador: Nombre que se designa a una variable.
  - Contador: Utilización de una variable para contar algo específico, como por ejemplo la cantidad de repeticiones de un ciclo.
  - Acumulador: Utilización de una variable para acumular algo específico, como por ejemplo el total de una compra, que es la suma de las cantidades ingresadas por el usuario (precio de productos).
- Código: Conjunto de instrucciones.
  - Bloque de código: Conjunto de instrucciones con un inicio y fin determinados por la estructura del código.
- Instrucción: Representación de una única orden al computador.
  - Expresión: Dato o conjunto de operaciones que se evalúan en tiempo de ejecución y retornan un dato.
    - Operador: Símbolo que se utiliza para realizar una operación con datos, dando como resultado otro dato.
- Asignación: Instrucción que consiste en asignar un dato a una variable, es decir, introducir un dato o reemplazar el dato contenido en una variable.
- Estructura de control: Instrucción que contiene bloques de código, y que permite controlar el flujo del programa, es decir, si sigue un camino u otro.
- Análisis: Actividad de descomponer un problema para aumentar su comprensión, identificar y proponer suposiciones, y elaborar alternativas de solución.
- Entradas: Datos que ingresan al programa desde el "exterior", por ejemplo datos ingresados por el usuario, y que están relacionados directamente con el problema.
- Salidas: Datos que salen del programa hacia el "exterior", por ejemplo datos que aparecen en pantalla, y que están relacionados directamente con el problema.
- Proceso: Representación de una secuencia para resolver un problema. Puede encontrarse en distintos niveles de detalle.
- Ciclo: Tipo de estructura de control que contiene un bloque de código que se repite una cantidad determinada de veces.
- Selección: Tipo de estructura de control que permite decidir la ejecución de un bloque de código u otro según el resultado de una expresión booleana (o lógica).



## PSeInt

"PSeInt es una herramienta para asistir a un estudiante en sus primeros pasos en programación. Mediante un simple e intuitivo pseudolenguaje en español (complementado con un editor de diagramas de flujo), le permite centrar su atención en los conceptos fundamentales de la algoritmia computacional, minimizando las dificultades propias de un lenguaje y proporcionando un entorno de trabajo con numerosas ayudas y recursos didácticos."



## Ejemplo de Tienda musical

A continuación, se desarrolla un problema de ejemplo en PSeInt con niveles progresivos de dificultad, donde se explican y aplican los conceptos básicos revisados en la asignatura.

### *Leer*, *Escribir* y asignación

Dentro de las instrucciones fundamentales de PSeInt se encuentran *Leer* y *Escribir*, que permiten respectivamente recibir datos del usuario y mostrar datos por pantalla. La asignación permite evaluar una expresión y guardar su resultado (dato) en una variable, y designar un identificador o "nombre" para ésta.

Problema: "Una tienda musical necesita contar con un programa que le permita calcular el IVA para sus ventas."

A partir del enunciado, se puede inferir que las entradas son el monto de venta y las salidas el IVA de la venta. También, la tienda podría necesitar saber la venta con IVA y sin IVA. Este es un análisis sencillo, pero importante para producir un programa que le "sirva" a la tienda.

```pseudocode
Algoritmo TiendaMusical1
	Escribir "Tienda musical"
	Escribir "Ingrese el monto de la venta: "
	Leer monto
	
	IVA <- 0.19 // Sabiendo que el IVA es aprox. 19% 
	ventaConIVA <- monto * (1 + IVA) 
	
	Escribir "Venta sin IVA: ", monto
	Escribir "IVA 19%"
	Escribir "Venta con IVA:", ventaConIVA
FinAlgoritmo
```



### Estructuras condicionales (*Si*, *Si-SiNo* y Según)

Las estructuras condicionales permiten decidir qué bloque de código ejecutar según el resultado de una expresión que se evalúa al momento de ejecución, como toda expresión.

Problema: "Una tienda musical necesita contar con un programa que le permita calcular el IVA para sus ventas, y en caso de que la venta sea realizada a un cliente frecuente realizar un descuento de 5% del total."

```pseudocode
Algoritmo TiendaMusical2
	Escribir "Tienda musical"
	Escribir "Ingrese el monto de la venta: "
	Leer monto
	
	IVA <- 0.19 // Sabiendo que el IVA es aprox. 19% 
	ventaConIVA <- monto * (1 + IVA)
	
	Escribir "Venta sin IVA: ", monto
	Escribir "IVA 19%"
	Escribir "Venta con IVA:", ventaConIVA
	
	Escribir "¿Es cliente frecuente?"
	Escribir "1. Sí"
	Escribir "2. No"
	Leer esClienteFrecuente
	
	Si esClienteFrecuente == 1 Entonces
		Escribir "Descuento 5%"
		Escribir "Total:", ventaConIVA * 0.95
	Sino 
		Si esClienteFrecuente == 2 Entonces
			Escribir "Total:", ventaConIVA
		SiNo
			Escribir "Opción inválida. No se aplicará descuento."
			Escribir "Total:", ventaConIVA
		FinSi
	FinSi
FinAlgoritmo
```

Este algoritmo también puede realizarse con la estructura de control Según, que tiende a ser útil en situaciones simples donde "según el valor de una variable se realizan ciertas acciones (se ejecuta un bloque de código)". *Si* y *Si-SiNo* se prefieren para situaciones donde las expresiones booleanas son más complicadas, por ejemplo cuando son comparaciones entre números o expresiones booleanas (a > b y a > c no puede evaluarse en un *Según*) compuestas.

```pseudocode
Algoritmo TiendaMusical3
	Escribir "Tienda musical"
	Escribir "Ingrese el monto de la venta: "
	Leer monto
	
	IVA <- 0.19 // Sabiendo que el IVA es aprox. 19% 
	ventaConIVA <- monto * (1 + IVA)
	
	Escribir "Venta sin IVA: ", monto
	Escribir "IVA 19%"
	Escribir "Venta con IVA:", ventaConIVA
	
	Escribir "¿Es cliente frecuente?"
	Escribir "1. Sí"
	Escribir "2. No"
	Leer esClienteFrecuente
	
	Según esClienteFrecuente Hacer
		1: 
			Escribir "Descuento 5%"
			Escribir "Total:", ventaConIVA * 0.95
		2: 
			Escribir "Total:", ventaConIVA
		De Otro Modo: 
			Escribir "Opción inválida. No se aplicará descuento."
			Escribir "Total:", ventaConIVA
	FinSegun
FinAlgoritmo
```



## Ciclos (Mientras, Para)

Generalmente en un programa se necesitan repetir acciones para lograr un objetivo, y así resolver un problema. Los ciclos permiten repetir un bloque de código múltiples veces si es necesario. Se ejecutan a intervalos discretos, es decir, una o más veces, una a una. Para esto cuentan con una expresión de control, que cada vez que inicia el ciclo o se pretende iniciar nuevamente (desde la segunda "vuelta" en adelante), se evalúa y retorna el dato verdadero o falso, según este dato el ciclo continúa o termina (depende de qué ciclo se trate si necesita un valor verdadero o falso para continuar). En la asignatura se utiliza el ciclo Mientras y Para que requieren que sus expresiones de control (también conocidas como "condiciones de término") sean verdaderas.

Problema: "Una tienda musical necesita contar con un programa que le permita a sus clientes registrar sus compras mientras las realizan, indicando los productos disponibles, permitiendo agregar y remover productos a su carro y calcular el monto total que suma el carro. Además al finalizar la compra se deberá calcular el IVA para la venta, y en caso de que la venta sea realizada a un cliente frecuente realizar un descuento de 5% del total."

```pseudocode
Algoritmo TiendaMusical4
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
		Escribir "6. Remover guitarra"
		Escribir "7. Remover bajo"
		Escribir "8. Remover violin"
		Escribir "9. Remover bateria"
		Escribir "10. Remover teclado"
		Escribir "0. Comprar carro"
		
		Leer opc
		
		Segun opc Hacer
			1: 
				cGuitarras <- cGuitarras + 1
			2: 
				cBajos <- cBajos + 1
			3: 
				cViolines <- cViolines + 1
			4: 
				cBaterias <- cBaterias + 1
			5: 
				cTeclados <- cTeclados + 1
			6: 
				// Es importante verificar que hayan guitarras
				// De lo contrario habrá guitarras negativas
				Si cGuitarras > 0 Entonces
					cGuitarras <- cGuitarras - 1
				SiNo
					Escribir "No hay guitarras para remover."
				FinSi
				
			7: 
				Si cBajos > 0 Entonces
					cBajos <- cBajos - 1
				SiNo
					Escribir "No hay bajos para remover."
				FinSi

			8: 
				Si cViolines > 0 Entonces
					cViolines <- cViolines - 1
				SiNo
					Escribir "No hay violines para remover."
				FinSi
			9: 
				Si cBaterias > 0 Entonces
					cBaterias <- cBaterias - 1
				SiNo
					Escribir "No hay baterías para remover."
				FinSi
			10: 
				Si cTeclados > 0 Entonces
					cTeclados <- cTeclados - 1
				SiNo
					Escribir "No hay teclados para remover."
				FinSi
			0: 
				//Esta opción se deja vacía ya que si no
				// existiera se mostraría el mensaje de error
				// de De Otro Modo, ya que el usuario presiona
				// 0 para terminar la compra.
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
		
		total <- cGuitarras * 200000 + cBajos * 300000 + cViolines * 150000 + cBaterias * 250000 + cTeclados * 200000
		
		IVA <- 0.19 //Sabiendo que el IVA es aprox. 19%.
		ventaConIVA <- total * (1 + IVA)
		
		Escribir "Venta sin IVA: ", total
		Escribir "IVA 19%"
		Escribir "Venta con IVA:", ventaConIVA
		
		Escribir "¿Es cliente frecuente?"
		Escribir "1. Sí"
		Escribir "2. No"
		Leer esClienteFrecuente
		
		Según esClienteFrecuente Hacer
			1: 
				Escribir "Descuento 5%"
				Escribir "Total:", ventaConIVA * 0.95
			2: 
				Escribir "Total:", ventaConIVA
			De Otro Modo: 
				Escribir "Opción inválida. No se aplicará descuento."
				Escribir "Total:", ventaConIVA
		FinSegun
	SiNo
		Escribir "No hay suficientes productos."
	FinSi
FinAlgoritmo
```

Una alternativa que es más eficiente para el usuario es que en vez de agregar/remover al carro productos de manera unitaria, pueda indicar cuánto llevará de un producto determinado. Para lograr esto habría que cambiar el código de la siguiente manera.

```pseudocode
Algoritmo TiendaMusical5
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
				Escribir "Indique la cantidad de guitarras: "
				Leer cGuitarras
					
				Si cGuitarras < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				// Este ciclo se utiliza para repetir la lectura de
				// la cantidad de guitarras, si el usuario ingresa
				// una cantidad menor a 0.
				
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
		
		total <- cGuitarras * 200000 + cBajos * 300000 + cViolines * 150000 + cBaterias * 250000 + cTeclados * 200000
		
		IVA <- 0.19 // Sabiendo que el IVA es aprox. 19%.
		ventaConIVA <- total * (1 + IVA)
		
		Escribir "Venta sin IVA: ", total
		Escribir "IVA 19%"
		Escribir "Venta con IVA:", ventaConIVA
		
		Escribir "¿Es cliente frecuente?"
		Escribir "1. Sí"
		Escribir "2. No"
		Leer esClienteFrecuente
		
		Según esClienteFrecuente Hacer
			1: 
				Escribir "Descuento 5%"
				Escribir "Total:", ventaConIVA * 0.95
			2: 
				Escribir "Total:", ventaConIVA
			De Otro Modo: 
				Escribir "Opción inválida. No se aplicará descuento."
				Escribir "Total:", ventaConIVA
		FinSegun
	SiNo
		Escribir "No hay suficientes productos."
	FinSi
FinAlgoritmo
```

La longitud del código ha aumentado a 145 líneas. Esto se debe principalmente a que el código "repite" una misma acción para cada instrumento. Si se observa el código para 2 instrumentos, por ejemplo, la cantidad de líneas disminuye a 97 líneas, incluyendo los comentarios.

```pseudocode
Algoritmo TiendaMusical6
	Escribir "Tienda musical"
	
	// En estas variables se almacena la cantidad de cada producto
	cGuitarras <- 0 
	cBajos <- 0
	
	// Esta variable permite seleccionar la opción 
	// y además controlar si el ciclo continúa.
	opc <- -1 
	Mientras opc != 0  Hacer
		Escribir "Carro"
		Escribir "1. Guitarra $200.000"
		Escribir "2. Bajo $300.000"
		Escribir "0. Comprar carro"
		
		Leer opc
		
		Segun opc Hacer
			1: 
				Escribir "Indique la cantidad de guitarras: "
				Leer cGuitarras
					
				Si cGuitarras < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				// Este ciclo se utiliza para repetir la lectura de
				// la cantidad de guitarras, si el usuario ingresa
				// una cantidad menor a 0.
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
			0: 
				
			De Otro Modo:
				Escribir "Opción errónea"
		FinSegun
		
		Escribir ""
		Escribir "Guitarras: ", cGuitarras
		Escribir "Bajos: ", cBajos

		Escribir ""
		
		Escribir "Total: ", cGuitarras * 200000 + cBajos * 300000
	FinMientras
	
	// Este Si-SiNo permite mostrar el detalle de sólo
	// los productos que se han agregado, omitiendo
	// mostrar el mensaje para productos que no se compraron.
	Si cGuitarras + cBajos > 1 Entonces
		Escribir "Has comprado: "
		Si cGuitarras > 1 Entonces
			Escribir "Guitarras: ", cGuitarras
		FinSi
		
		Si cBajos > 1 Entonces
			Escribir "Bajos: ", cBajos
		FinSi
		
		total <- cGuitarras * 200000 + cBajos * 300000
		
		IVA <- 0.19 // Sabiendo que el IVA es aprox. 19%.
		ventaConIVA <- total * (1 + IVA)
		
		Escribir "Venta sin IVA: ", total
		Escribir "IVA 19%"
		Escribir "Venta con IVA:", ventaConIVA
		
		Escribir "¿Es cliente frecuente?"
		Escribir "1. Sí"
		Escribir "2. No"
		Leer esClienteFrecuente
		
		Según esClienteFrecuente Hacer
			1: 
				Escribir "Descuento 5%"
				Escribir "Total:", ventaConIVA * 0.95
			2: 
				Escribir "Total:", ventaConIVA 
			De Otro Modo: 
				Escribir "Opción inválida. No se aplicará descuento."
				Escribir "Total:", ventaConIVA
		FinSegun
	SiNo
		Escribir "No hay suficientes productos."
	FinSi
FinAlgoritmo
```

Por lo tanto, si las acciones son "repetitivas" es recomedable realizar el código para al menos dos casos, y luego copiar y pegar adaptando a cada caso.

Es importante notar que las variables *total*, *IVA* y *clienteFrecuente* se definen dentro del bloque de código a continuación, por lo que no se puede acceder a ellas fuera de este bloque. Esto se conoce como ámbito o alcance de la variable. Recordar que en PSeInt la asignación de una variable implica su **declaración** (designar un espacio de memoria reservado con un nombre determinado y un tipo de dato determinado), e **inicialización** (dato inicial asignado a la variable).

```pseudocode
Si cGuitarras + cBajos + cViolines + cBaterias + cTeclados > 1 Entonces

	// Aquí se definen las variables mencionadas.
	// Por lo quefuera de este bloque no son accesibles.

FinSi

// Ninguna de las siguientes instrucciones funcionaría
// en la práctica porque estas variables no están
// definidas fuera del bloque anterior.
Escribir total
Escribir IVA
Escribir clienteFrecuente
```

Esta definición de variables dentro de un bloque específico suele ser para aquellas que se utilizan una sola vez y después no se usan a lo largo de programa.

Similar a la mejora que se realizó anteriormente para el ingreso de productos al carro, de ingresarlos uno a uno, a ingresar la cantidad de productos directamente; se puede considerar una manera altenativa de calcular el total, utilizando la variable *total* como acumulador.

En este caso, la variable *total* acumula el total. Primero, el usuario selecciona el producto del cual quiere modificar su cantidad, y luego el algoritmo resta mediante la instrucción (total <- total - cGuitarras * 200000 para el caso de las guitarras), la ponderación de las guitarras en el carro antes que el usuario modifique la cantidad de guitarras en él. Posteriormente el usuario indica la nueva cantidad de guitarras en el carro y se suma al total la ponderación de la nueva cantidad de guitarras.

```pseudocode
Algoritmo TiendaMusical7
	Escribir "Tienda musical"
	
	// En estas variables se almacena la cantidad de cada producto
	cGuitarras <- 0 
	cBajos <- 0
	cViolines <- 0
	cBaterias <- 0
	cTeclados <- 0
	
	total <- 0 //Esta variable será un acumulador del total del carro.
	
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
				// Esta instrucción se utiliza para eliminar la ponderación de las
				// guitarras ya agregadas anteriormente. La primera vez cGuitarras
				// será 0 por lo que no restará nada.
				total <- total - cGuitarras * 200000 
				
				Escribir "Indique la cantidad de guitarras: "
				Leer cGuitarras
					
				Si cGuitarras < 0 Entonces
					Escribir "No puede indicar una cantidad negativa."
				FinSi
				
				// Este ciclo se utiliza para repetir la lectura de
				// la cantidad de guitarras, si el usuario ingresa
				// una cantidad menor a 0.
				Mientras cGuitarras < 0 Hacer
					Escribir "Indique la cantidad de guitarras: "
					Leer cGuitarras
					
					Si cGuitarras < 0 Entonces
						Escribir "No puede indicar una cantidad negativa."
					FinSi
				FinMientras
				
				total <- total + cGuitarras * 200000
			2: 
				total <- total - cBajos * 300000
				
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
				
				total <- total + cBajos * 300000
			3: 
				total <- total - cViolines * 150000
				
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
				
				total <- total + cViolines * 150000
			4: 
				total <- total - cBaterias * 250000
				
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
				
				total <- total + cBaterias * 250000
			5: 
				total <- total - cTeclados * 200000
				
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
				
				total <- total + cTeclados * 200000
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
		
		Escribir "Total: ", total
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
		
		// total <- cGuitarras * 200000 + cBajos * 300000 + cViolines * 150000 + cBaterias * 250000 + cTeclados * 200000
		
		IVA <- 0.19 // Sabiendo que el IVA es aprox. 19%.
		ventaConIVA <- total * (1 + IVA)
		
		Escribir "Venta sin IVA: ", total
		Escribir "IVA 19%"
		Escribir "Venta con IVA:", ventaConIVA
		
		Escribir "¿Es cliente frecuente?"
		Escribir "1. Sí"
		Escribir "2. No"
		Leer esClienteFrecuente
		
		Según esClienteFrecuente Hacer
		1: 
			Escribir "Descuento 5%"
			Escribir "Total:", ventaConIVA * 0.95
		2: 
			Escribir "Total:", ventaConIVA
		De Otro Modo: 
			Escribir "Opción inválida. No se aplicará descuento."
			Escribir "Total:", ventaConIVA
		FinSegun
	SiNo
		Escribir "No hay suficientes productos."
	FinSi
FinAlgoritmo
```

Se puede ver que este enfoque para resolver el problema requiere más trabajo, y no es eficiente, dado que constantemente debe asignarse el total.

Con el objetivo de ilustrar el uso de la estructura de control *Para*, se adapta nuevamente el problema: 

Problema: "Una tienda musical necesita contar con un programa que le permita a sus clientes registrar sus compras mientras las realizan, indicando los productos disponibles, permitiendo agregar y remover productos a su carro y calcular el monto total que suma el carro. Además al finalizar la compra se deberá calcular el IVA para la venta, y en caso de que la venta sea realizada a un cliente frecuente realizar un descuento de 5% del total. Antes de finalizar, el programa debe permitir al usuario dividir su boleta en varias compras."

Este problema implica preguntar al usuario en cuántas boletas desea dividir su compra. Por lo tanto, debe repetirse un conjunto de instrucciones una cantidad determinada (o predefinida por el usuario) de veces. En este caso, conviene utilizar el ciclo *Para*. 

```pseudocode
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
```

Cabe notar que la variable *cantBoletas* se declara e inicializa (se asigna con un 0) no al principio del programa, donde se suelen declarar e inicializar las variables. En algunos casos conviene realizarlo posteriormente para mayor claridad, es decir, dejar claro para qué sirve la variable de forma implícita (sin explicarlo en un comentario por ejemplo).

La situación en la que el usuario no selecciona todos los productos de su carro no se aborda en el algoritmo, pero podría y debiera considerarse.

[Código de TiendaMusical8](TiendaMusical8.psc)

(Queda pendiente revisar la ejecución del código de ejemplo y agregar funcionalidad relativa al cálculo de descuentos por producto revisada en clases. Se realizará para cuando se revise Java).