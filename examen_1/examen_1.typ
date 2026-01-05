#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2cm),
  header: align(right)[
    #text(size: 9pt, fill: rgb("#4a4a4a"))[
      Examen de Programación | Python
    ]
    #line(length: 100%, stroke: 0.5pt + rgb("#666666"))
  ],
  // CORRECCIÓN AQUÍ: Usamos 'context' en lugar de 'locate'
  footer: context [
    #let page-number = counter(page).get().first()
    #align(center)[
      #line(length: 100%, stroke: 0.5pt + rgb("#666666"))
      #v(0.3cm)
      #text(size: 9pt, fill: rgb("#4a4a4a"))[
        Página #page-number
      ]
    ]
  ]
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  fill: rgb("#2d2d2d")
)

#set par(justify: true, leading: 0.65em)

#align(center)[
  #v(1cm)
  #text(size: 24pt, weight: "bold", fill: rgb("#1a1a1a"))[
    EXAMEN DE PROGRAMACIÓN
  ]
  #v(0.3cm)
  #text(size: 14pt, fill: rgb("#4a4a4a"))[
    Lenguaje: Python
  ]
  #v(1.5cm)
]

#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  [
    #text(size: 10pt, fill: rgb("#4a4a4a"))[*Nombre:*]
    #v(0.2cm)
    #line(length: 100%, stroke: 0.8pt + rgb("#666666"))
  ],
  [
    #text(size: 10pt, fill: rgb("#4a4a4a"))[*Fecha:*]
    #v(0.2cm)
    #line(length: 100%, stroke: 0.8pt + rgb("#666666"))
  ]
)

#v(1.5cm)

#let problema(numero, titulo, descripcion, input_text, output_text) = {
  block(
    fill: rgb("#f8f8f8"),
    stroke: 0.5pt + rgb("#cccccc"),
    radius: 4pt,
    inset: 1.2cm,
    width: 100%,
  )[
    #text(size: 13pt, weight: "bold", fill: rgb("#1a1a1a"))[
      Problema #numero. #titulo
    ]
    #v(0.5cm)
    #text(size: 10.5pt, fill: rgb("#2d2d2d"))[
      #descripcion
    ]
    #v(0.7cm)
    
    #grid(
      columns: (1fr),
      row-gutter: 0.5cm,
      [
        #text(size: 9.5pt, fill: rgb("#555555"), weight: "semibold")[Entrada:]
        #block(
          fill: rgb("#ffffff"),
          stroke: 0.5pt + rgb("#dddddd"),
          radius: 2pt,
          inset: 0.8cm,
          width: 100%
        )[
          #text(size: 9.5pt, font: "DejaVu Sans Mono", fill: rgb("#2d2d2d"))[
            #input_text
          ]
        ]
      ],
      [
        #text(size: 9.5pt, fill: rgb("#555555"), weight: "semibold")[Salida esperada:]
        #block(
          fill: rgb("#ffffff"),
          stroke: 0.5pt + rgb("#dddddd"),
          radius: 2pt,
          inset: 0.8cm,
          width: 100%
        )[
          #text(size: 9.5pt, font: "DejaVu Sans Mono", fill: rgb("#2d2d2d"))[
            #output_text
          ]
        ]
      ]
    )
  ]
}
// ESCRIBIR LOS PROBLEMAS. 

#problema( "1", "Inversión de Lista", [Crea una función en Python que reciba una lista de números enteros y retorne una nueva lista con los elementos en orden inverso. No utilices el método .reverse() ni slicing invertido.], [lista = [1, 2, 3, 4, 5]], [lista_invertida = [5, 4, 3, 2, 1]] )

#v(1cm)

#problema( "2", "Suma de Números Pares", [Desarrolla una función que reciba una lista de números enteros y retorne la suma de todos los números pares contenidos en ella. Si no hay números pares, debe retornar 0.], [numeros = [1, 2, 3, 4, 5, 6, 7, 8]], [suma_pares = 20] )

#v(1cm)

#problema( "3", "Palíndromo", [Implementa una función que determine si una cadena de texto es un palíndromo (se lee igual de izquierda a derecha que de derecha a izquierda). Ignora espacios y mayúsculas/minúsculas.], [texto = "Anita lava la tina"], [es_palindromo = True] )

#v(1cm)

#problema( "4", "Contador de Vocales", [Crea una función que reciba una cadena de texto y retorne un diccionario con el conteo de cada vocal (a, e, i, o, u) presente en el texto. Las vocales deben contarse sin distinguir entre mayúsculas y minúsculas.], [texto = "Programacion en Python"], [conteo = {'a': 2, 'e': 1, 'i': 1, 'o': 3, 'u': 0}] )

#v(1cm)

#problema( "5", "Números Primos", [Desarrolla una función que reciba un número entero positivo n y retorne una lista con todos los números primos menores o iguales a n. Un número primo es aquel que solo es divisible por 1 y por sí mismo.], [n = 20], [primos = [2, 3, 5, 7, 11, 13, 17, 19]] )

#pagebreak()

#problema( "6", "Factorial Recursivo", [Implementa una función recursiva que calcule el factorial de un número entero no negativo. El factorial de n (n!) es el producto de todos los enteros positivos desde 1 hasta n. Por definición, 0! = 1.], [numero = 5], [factorial = 120] )

#v(1cm)

#problema( "7", "Eliminación de Duplicados", [Crea una función que reciba una lista con elementos duplicados y retorne una nueva lista con los elementos únicos, manteniendo el orden de aparición original.], [lista = [1, 2, 2, 3, 4, 3, 5, 1, 6]], [lista_unica = [1, 2, 3, 4, 5, 6]] )

#v(1cm)

#problema( "8", "Serie de Fibonacci", [Escribe una función que reciba un número entero n y retorne una lista con los primeros n números de la sucesión de Fibonacci. La sucesión comienza con 0 y 1, y cada número siguiente es la suma de los dos anteriores.], [n = 7], [fibonacci = [0, 1, 1, 2, 3, 5, 8]] )

#v(1cm)

#problema( "9", "Intersección de Listas", [Desarrolla una función que reciba dos listas y devuelva una nueva lista que contenga solo los elementos que están presentes en ambas listas (intersección), sin duplicados en el resultado.], [lista1 = [1, 2, 3, 4], lista2 = [3, 4, 5, 6]], [interseccion = [3, 4]] )

#v(1cm)

#problema( "10", "Anagrama", [Crea una función que reciba dos cadenas de texto y determine si son anagramas. Dos palabras son anagramas si contienen exactamente las mismas letras con la misma frecuencia, sin importar el orden.], [palabra1 = "amor", palabra2 = "roma"], [es_anagrama = True] )


