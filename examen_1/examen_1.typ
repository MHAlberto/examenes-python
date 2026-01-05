#set page(
  paper: "a4",
  margin: (x: 2.8cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#1a1a1a"))
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [*Examen de Programación*], [Examen 1],
    )
    #v(0.2cm)
    #line(length: 100%, stroke: 1pt + rgb("#1a1a1a"))
  ],
  footer: context [
    #let page-number = counter(page).get().first()
    #line(length: 100%, stroke: 0.8pt + rgb("#1a1a1a"))
    #v(0.3cm)
    #grid(
      columns: (1fr, auto, 1fr),
      align: (left, center, right),
      [#text(size: 8pt, fill: rgb("#333333"))[10 problemas]],
      [#text(size: 9pt, weight: "medium")[#page-number]],
      [#text(size: 8pt, fill: rgb("#333333"))[Python]],
    )
  ],
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  fill: rgb("#1a1a1a"),
)

#set par(justify: true, leading: 0.7em)

#align(center)[
  #v(1.2cm)
  #text(size: 26pt, weight: "bold", fill: rgb("#000000"))[EXAMEN DE \ PROGRAMACIÓN]
  #v(0.4cm)
  #text(size: 13pt, weight: "medium", fill: rgb("#333333"))[Examen 1 · Python]
  #v(2cm)
]

#block(
  inset: (x: 1.5cm, y: 1cm),
)[
  #text(size: 11pt, weight: "semibold")[INSTRUCCIONES]
  #v(0.5cm)
  #set par(leading: 0.8em)
  #text(size: 10pt)[
    1. Lee cuidadosamente cada problema antes de comenzar a resolverlo.

    2. Implementa las funciones solicitadas respetando los nombres y parámetros especificados.

    3. Verifica que tu código produzca exactamente la salida esperada para cada caso.

    4. No está permitido el uso de bibliotecas externas a menos que se indique lo contrario.

    5. Puedes usar funciones auxiliares si lo consideras necesario.
  ]
]

#v(1.5cm)

#let problema(numero, titulo, descripcion, input_text, output_text) = {
  block(breakable: false)[
    #v(0.8cm)
    #text(size: 12pt, weight: "bold")[
      #numero. #titulo
    ]
    #v(0.4cm)
    #text(size: 10.5pt)[
      #descripcion
    ]
    #v(0.5cm)

    #grid(
      columns: (1fr, 1fr),
      column-gutter: 1cm,
      row-gutter: 0.4cm,
      [
        #text(size: 9pt, weight: "semibold", fill: rgb("#333333"))[ENTRADA]
        #v(0.2cm)
        #text(size: 9.5pt, font: "DejaVu Sans Mono")[
          #input_text
        ]
      ],
      [
        #text(size: 9pt, weight: "semibold", fill: rgb("#333333"))[SALIDA]
        #v(0.2cm)
        #text(size: 9.5pt, font: "DejaVu Sans Mono")[
          #output_text
        ]
      ],
    )
    #v(0.3cm)
    #line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
  ]
}
// ESCRIBIR LOS PROBLEMAS.

#problema(
  "1",
  "Inversión de Lista",
  [Crea una función en Python que reciba una lista de números enteros y retorne una nueva lista con los elementos en orden inverso. No utilices el método `.reverse()` ni slicing invertido.],
  [lista = [1, 2, 3, 4, 5]],
  [[5, 4, 3, 2, 1]],
)

#problema(
  "2",
  "Suma de Números Pares",
  [Desarrolla una función que reciba una lista de números enteros y retorne la suma de todos los números pares contenidos en ella. Si no hay números pares, debe retornar 0.],
  [numeros = [1, 2, 3, 4, 5, 6, 7, 8]],
  [20],
)

#problema(
  "3",
  "Palíndromo",
  [Implementa una función que determine si una cadena de texto es un palíndromo (se lee igual de izquierda a derecha que de derecha a izquierda). Ignora espacios y mayúsculas/minúsculas.],
  [texto = "Anita lava la tina"],
  [True],
)

#problema(
  "4",
  "Contador de Vocales",
  [Crea una función que reciba una cadena de texto y retorne un diccionario con el conteo de cada vocal (a, e, i, o, u) presente en el texto. Las vocales deben contarse sin distinguir entre mayúsculas y minúsculas.],
  [texto = "Programacion en Python"],
  [{'a': 2, 'e': 1, 'i': 1, 'o': 3, 'u': 0}],
)

#problema(
  "5",
  "Números Primos",
  [Desarrolla una función que reciba un número entero positivo n y retorne una lista con todos los números primos menores o iguales a n. Un número primo es aquel que solo es divisible por 1 y por sí mismo.],
  [n = 20],
  [[2, 3, 5, 7, 11, 13, 17, 19]],
)



#problema(
  "6",
  "Factorial Recursivo",
  [Implementa una función recursiva que calcule el factorial de un número entero no negativo. El factorial de n (n!) es el producto de todos los enteros positivos desde 1 hasta n. Por definición, 0! = 1.],
  [numero = 5],
  [120],
)

#problema(
  "7",
  "Eliminación de Duplicados",
  [Crea una función que reciba una lista con elementos duplicados y retorne una nueva lista con los elementos únicos, manteniendo el orden de aparición original.],
  [lista = [1, 2, 2, 3, 4, 3, 5, 1, 6]],
  [[1, 2, 3, 4, 5, 6]],
)

#problema(
  "8",
  "Serie de Fibonacci",
  [Escribe una función que reciba un número entero n y retorne una lista con los primeros n números de la sucesión de Fibonacci. La sucesión comienza con 0 y 1, y cada número siguiente es la suma de los dos anteriores.],
  [n = 7],
  [[0, 1, 1, 2, 3, 5, 8]],
)

#problema(
  "9",
  "Intersección de Listas",
  [Desarrolla una función que reciba dos listas y devuelva una nueva lista que contenga solo los elementos que están presentes en ambas listas (intersección), sin duplicados en el resultado.],
  [lista1 = [1, 2, 3, 4], lista2 = [3, 4, 5, 6]],
  [[3, 4]],
)

#problema(
  "10",
  "Anagrama",
  [Crea una función que reciba dos cadenas de texto y determine si son anagramas. Dos palabras son anagramas si contienen exactamente las mismas letras con la misma frecuencia, sin importar el orden.],
  [palabra1 = "amor", palabra2 = "roma"],
  [True],
)
