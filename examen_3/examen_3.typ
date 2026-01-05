#set page(
  paper: "a4",
  margin: (x: 2.8cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#1a1a1a"))
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [*Examen de Programación*], [Examen 3],
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
  #text(size: 13pt, weight: "medium", fill: rgb("#333333"))[Examen 3 · Python]
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
  "Eliminar Duplicados",
  [Escribe una función que reciba una lista y devuelva una nueva lista con los mismos elementos pero sin duplicados, manteniendo el orden de su primera aparición.],
  [lista = [1, 2, 2, 3, 4, 4, 5]],
  [resultado = [1, 2, 3, 4, 5]],
)

#problema(
  "2",
  "Cálculo de la Mediana",
  [Crea una función que calcule la mediana de una lista de números. Recuerda que si la cantidad de elementos es par, la mediana es el promedio de los dos valores centrales.],
  [datos = [1, 3, 3, 6, 7, 8, 9]],
  [mediana = 6],
)

#problema(
  "3",
  "Intersección de Listas",
  [Implementa una función que reciba dos listas y devuelva una nueva lista que contenga solo los elementos que están presentes en ambas.],
  [a = [1, 2, 3], b = [2, 3, 4]],
  [interseccion = [2, 3]],
)

#problema(
  "4",
  "Potencia de Dos",
  [Desarrolla una función que determine si un número entero positivo es una potencia de 2 (es decir, $2^n$ para algún entero $n >= 0$).],
  [numero = 16],
  [es_potencia = True],
)

#problema(
  "5",
  "Contar Caracteres Únicos",
  [Crea una función que reciba una cadena de texto y devuelva la cantidad de caracteres distintos que contiene (distinguiendo entre mayúsculas y minúsculas).],
  [texto = "abracadabra"],
  [unicos = 5],
)

#problema(
  "6",
  "Máximo Común Divisor",
  [Implementa una función que calcule el MCD de dos números enteros positivos utilizando el algoritmo de Euclides.],
  [a = 48, b = 18],
  [mcd = 6],
)

#problema(
  "7",
  "Filtro de Longitud",
  [Escribe una función que reciba una lista de palabras y un número entero $k$, y retorne solo aquellas palabras que tengan más de $k$ caracteres.],
  [palabras = ["yo", "soy", "matematico"], k = 3],
  [resultado = ["matematico"]],
)

#problema(
  "8",
  "Suma de una Matriz",
  [Dada una matriz representada como una lista de listas (ej. `[[1,2],[3,4]]`), crea una función que retorne la suma total de todos sus elementos.],
  [matriz = [[1, 2], [3, 4]]],
  [suma = 10],
)

#problema(
  "9",
  "Capitalizar Frase",
  [Desarrolla una función que reciba una frase y devuelva la misma frase pero con la primera letra de cada palabra en mayúscula.],
  [frase = "hola mundo desde rust"],
  [resultado = "Hola Mundo Desde Rust"],
)

#problema(
  "10",
  "Puntos en el Plano",
  [Escribe una función que calcule la distancia euclidiana entre dos puntos $(x_1, y_1)$ y $(x_2, y_2)$. La fórmula es $d = sqrt((x_2-x_1)^2 + (y_2-y_1)^2)$.],
  [p1 = (0, 0), p2 = (3, 4)],
  [distancia = 5.0],
)


