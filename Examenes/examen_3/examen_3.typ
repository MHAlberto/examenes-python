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
  "Centrado de Texto",
  [Desarrolla una función que centre una cadena en un ancho de 20 caracteres, rellenando con espacios.],
  [texto = "Título"],
  ["       Título       "],
)

#problema(
  "2",
  "Alineación a la Derecha",
  [Crea una función que alinee una cadena a la derecha en un ancho de 15 caracteres.],
  [texto = "100"],
  ["            100"],
)

#problema(
  "3",
  "Formato de ID con Ceros",
  [Implementa una función que reciba un número como string y lo rellene con ceros a la izquierda hasta tener 6 dígitos. Usa zfill.],
  [id_num = "42"],
  ["000042"],
)

#problema(
  "4",
  "Decoración con Asteriscos",
  [Desarrolla una función que centre una palabra en 30 caracteres y rellene con asteriscos (`*`) en lugar de espacios.],
  [palabra = "IMPORTANTE"],
  [`"**********IMPORTANTE**********"`],
)

#problema(
  "5",
  "Tabla Alineada",
  [Crea una función que reciba un nombre y una edad (como strings), y genere una línea de tabla donde el nombre esté alineado a la izquierda en 20 caracteres y la edad a la derecha en 5 caracteres. Separa con un pipe (|).],
  [nombre = "Ana", edad = "25"],
  ["Ana                 |   25"],
)

= Nivel Avanzado - Operaciones Combinadas

== Manipulación Compleja

#problema(
  "6",
  "Generador de Nombres de Usuario",
  [Implementa una función que reciba un nombre y un apellido, y los concatene con un punto en medio para crear un nombre de usuario básico.],
  [nombre = "Alan", apellido = "Turing"],
  ["Alan.Turing"],
)

#problema(
  "7",
  "Reemplazo de Caracteres",
  [Desarrolla una función que reciba una fecha en formato "DD/MM/AAAA" y cambie todas las barras diagonales (/) por guiones (-).],
  [fecha = "15/05/2026"],
  ["15-05-2026"],
)

#problema(
  "8",
  "Buscador de Subcadenas con Sensibilidad",
  [Desarrolla una función que verifique si una cadena comienza con la palabra "Python". El resultado debe ser un valor booleano y debe ser sensible a mayúsculas.],
  [texto = "Python es un lenguaje"],
  [True],
)

#problema(
  "9",
  "Extracción y Normalización",
  [Crea una función que reciba un email, extraiga solo la parte antes del @ (el nombre de usuario), elimine espacios y lo convierta a minúsculas.],
  [`email = "  Usuario.Nombre@ejemplo.com  "`],
  ["usuario.nombre"],
)

#problema(
  "10",
  "Creador de Acrónimos",
  [Implementa una función que reciba una frase y genere un acrónimo tomando la primera letra de cada palabra y convirtiéndolas a mayúsculas. Usa split, iteración y upper.],
  [frase = "Ciencia de Datos Aplicada"],
  ["CDA"],
)
