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
  "Cálculo de Longitud",
  [Escribe una función que reciba una cadena de texto y devuelva su longitud total. Recuerda que los espacios y signos de puntuación también cuentan como caracteres.],
  [texto = "Python 2026!"],
  [12],
)

#problema(
  "2",
  "Acceso Extremo",
  [Crea una función que reciba una cadena y retorne una nueva cadena compuesta únicamente por el primer y el último carácter de la entrada. Asume que la cadena tiene al menos dos caracteres.],
  [texto = "Matemáticas"],
  ["Ms"],
)

#problema(
  "3",
  "Penúltimo Carácter",
  [Desarrolla una función que reciba una cadena y devuelva su penúltimo carácter utilizando indexación negativa.],
  [texto = "Algoritmo"],
  ["m"],
)

#problema(
  "4",
  "Búsqueda de Subcadena",
  [Crea una función que reciba un texto y una palabra, y verifique si la palabra existe dentro del texto (case-sensitive). Debe retornar un valor booleano.],
  [texto = "Machine Learning es fascinante", palabra = "Learning"],
  [True],
)

#problema(
  "5",
  "Contador de Carácter",
  [Implementa una función que reciba una cadena y un carácter, y cuente cuántas veces aparece ese carácter en la cadena usando un bucle for.],
  [texto = "estadística", caracter = "a"],
  [2],
)

#problema(
  "6",
  "Slicing Inverso",
  [Utilizando la técnica de rebanado (slicing), crea una función que reciba una cadena y devuelva la misma cadena pero invertida.],
  [texto = "Logaritmo"],
  ["omtiragoL"],
)

#problema(
  "7",
  "Extracción de Subcadenas",
  [Escribe una función que extraiga los primeros 5 caracteres de cualquier cadena proporcionada. Si la cadena tiene menos de 5, debe devolverla completa.],
  [texto = "Estadística"],
  ["Estad"],
)

#problema(
  "8",
  "Salto de Caracteres",
  [Crea una función que devuelva una cadena compuesta por uno de cada dos caracteres de la original (caracteres en posiciones de índice par: 0, 2, 4...).],
  [texto = "Actuaría"],
  ["Atar"],
)

#problema(
  "9",
  "Extracción del Medio",
  [Desarrolla una función que reciba una cadena y extraiga los caracteres desde la posición 3 hasta la 7 (sin incluir la 7) usando slicing.],
  [texto = "Programación"],
  ["gram"],
)

#problema(
  "10",
  "Rotación a la Izquierda",
  [Crea una función que reciba una cadena y un número n, y rote la cadena n posiciones a la izquierda usando slicing. Por ejemplo, rotar "abcdef" 2 posiciones da "cdefab".],
  [texto = "DataScience", n = 4],
  ["ScienceData"],
)



