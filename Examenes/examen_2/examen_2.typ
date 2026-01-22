#set page(
  paper: "a4",
  margin: (x: 2.8cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#1a1a1a"))
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [*Examen de Programación*], [Examen 2],
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
  #text(size: 13pt, weight: "medium", fill: rgb("#333333"))[Examen 2 · Python]
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
  "Limpieza de Espacios",
  [En el análisis de datos, las entradas suelen tener espacios accidentales al inicio o al final. Crea una función que elimine estos espacios en blanco.],
  [texto = "   Data Science   "],
  ["Data Science"],
)

#problema(
  "2",
  "Limpieza Selectiva Izquierda",
  [Desarrolla una función que elimine solo los espacios del lado izquierdo de una cadena, manteniendo los del lado derecho intactos.],
  [texto = "   Python es genial   "],
  ["Python es genial   "],
)

#problema(
  "3",
  "Eliminación de Puntuación",
  [Crea una función que reciba una cadena y elimine todos los signos de puntuación (.,!?) de los extremos usando strip con parámetros.],
  [texto = "...Hola Mundo!!!"],
  ["Hola Mundo"],
)

#problema(
  "4",
  "Limpieza de Ceros",
  [Implementa una función que elimine los ceros a la izquierda de una cadena numérica. Útil para normalizar identificadores.],
  [texto = "000042"],
  ["42"],
)

#problema(
  "5",
  "Doble Limpieza",
  [Desarrolla una función que primero elimine espacios en blanco y luego elimine paréntesis de los extremos de una cadena.],
  [texto = "  ((nombre))  "],
  ["nombre"],
)

== Transformación de Caso

#problema(
  "6",
  "Normalización de Identificadores",
  [En análisis de datos, a veces los nombres vienen con formatos inconsistentes. Crea una función que reciba un nombre y lo devuelva completamente en minúsculas.],
  [nombre = "User_Admin_2026"],
  ["user_admin_2026"],
)

#problema(
  "7",
  "Conversión a Mayúsculas",
  [Crea una función que convierta una cadena completa a mayúsculas, útil para códigos de país o constantes.],
  [codigo = "mx"],
  ["MX"],
)

#problema(
  "8",
  "Capitalización de Título",
  [Desarrolla una función que reciba una frase y capitalice la primera letra de cada palabra usando el método apropiado.],
  [frase = "análisis de datos con python"],
  ["Análisis De Datos Con Python"],
)

#problema(
  "9",
  "Inversión de Caso",
  [Implementa una función que invierta el caso de todos los caracteres: mayúsculas a minúsculas y viceversa.],
  [texto = "PyThOn"],
  ["pYtHoN"],
)

#problema(
  "10",
  "Comparación Case-Insensitive",
  [Crea una función que reciba dos cadenas y verifique si son iguales ignorando mayúsculas y minúsculas. Debe retornar True o False.],
  [texto1 = "Python", texto2 = "PYTHON"],
  [True],
)
