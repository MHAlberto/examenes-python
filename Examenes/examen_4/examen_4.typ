#set page(
  paper: "a4",
  margin: (x: 2.8cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#1a1a1a"))
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [*Examen de Programación*], [Examen 4],
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
  #text(size: 13pt, weight: "medium", fill: rgb("#333333"))[Examen 4 · Python]
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



Como matemático y futuro analista de datos, dominar las Expresiones Regulares (Regex) te dará una ventaja competitiva enorme. Es, en esencia, aplicar teoría de autómatas y lenguajes formales para buscar patrones complejos.

En Python, para estos problemas usarás el módulo re. Aquí tienes los 10 problemas finales de este bloque:

Fragmento de código

// Sección 5: Expresiones Regulares (Módulo re)

#problema(
  "1",
  "Búsqueda de Patrones Numéricos",
  [Escribe una función que utilice `re.findall` para extraer todos los números enteros de una cadena de texto.],
  [texto = "En 2026, el 15 por ciento de 300 muestras fallaron."],
  [["2026", "15", "300"]],
)

#problema(
  "2",
  "Validación de Formatos (RFC simplificado)",
  [Usa `re.match` para verificar si una cadena tiene el formato de 4 letras seguidas de 6 números (ej. ABCD123456).],
  [codigo = "MATH202512"],
  [True],
)

#problema(
  "3",
  "Extracción de Decimales",
  [Crea un patrón que identifique y extraiga números con punto decimal (ej. 3.14). Ignora los enteros que no tengan punto.],
  [texto = "El valor de pi es 3.1416 y el de e es 2.71"],
  [["3.1416", "2.71"]],
)

#problema(
  "4",
  "Divisor Multi-carácter",
  [Usa `re.split` para dividir una cadena por comas, puntos y coma o barras verticales (`|`).],
  [datos = "Python;Rust,Astro|Django"],
  [["Python", "Rust", "Astro", "Django"]],
)

#problema(
  "5",
  "Anonimización de Datos",
  [Implementa una función que use `re.sub` para reemplazar cualquier correo electrónico en un texto por la palabra "[HIDDEN]".],
  [`texto = "Contacto: juan@mail.com"`],
  ["Contacto: [HIDDEN]"],
)

#problema(
  "6",
  "Captura de Grupos",
  [Dada una fecha en formato AAAA-MM-DD, usa grupos de captura `()` para extraer solo el año.],
  [fecha = "2026-05-15"],
  ["2026"],
)

#problema(
  "7",
  "Búsqueda al Inicio",
  [Crea una función que verifique si una cadena comienza estrictamente con un número usando el ancla `^` y `\d`.],
  [texto = "100 problemas"],
  [True],
)

#problema(
  "8",
  "Limpieza de Caracteres Especiales",
  [Usa un patrón para eliminar cualquier carácter que no sea una letra o un número (alfanumérico) de una cadena.],
  [texto = "¡Hola! ¿Cómo estás? 2026"],
  ["HolaCómoestás2026"],
)

#problema(
  "9",
  "Palabras de Longitud Específica",
  [Implementa un patrón que encuentre todas las palabras que tengan exactamente 5 caracteres en un texto.],
  [texto = "Tres gatos comen mucho queso"],
  [["gatos", "comen", "mucho", "queso"]],
)

#problema(
  "10",
  "Validación de Notación Científica",
  [Crea una expresión regular que valide si un string representa un número en notación científica (ej. 1.5e-10).],
  [valor = "6.02e23"],
  [True],
)
