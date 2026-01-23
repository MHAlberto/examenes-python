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
  "Normalización de Texto Multilínea",
  [En minería de texto, los saltos de línea y tabulaciones ensucian los modelos. Crea una función que convierta cualquier cadena con múltiples líneas y espacios excesivos en una sola línea con espacios simples.],
  [`texto = "Python \n  es\t\tgenial\n2026"`],
  "Python es genial 2026",
)

#problema(
  "2",
  "Sanitización de Variables para SQL",
  [Para evitar errores en bases de datos, desarrolla una función que reciba un nombre de columna, lo pase a minúsculas, elimine acentos y reemplace espacios por guiones bajos.],
  [`columna = "Campaña de Inversión 2026"`],
  "campana_de_inversion_2026",
)

#problema(
  "3",
  "Validación de Formato Científico",
  [Recibes datos numéricos que a veces vienen en notación científica como string. Crea una función que verifique si la cadena es un número válido (entero, decimal o científico) y devuelva True o False.],
  [`valor = "1.25e-10"`],
  `True`,
)

#problema(
  "4",
  "Extracción de Métrica de Unidad",
  [Dada una cadena que representa una medición, extrae solo la magnitud numérica como float, ignorando la unidad y los espacios.],
  [`medida = "  -15.40 °C  "`],
  -15.4,
)

#problema(
  "5",
  "Anonimización de Emails",
  [Por seguridad de datos, crea una función que oculte el nombre de usuario de un correo dejando solo la primera letra, el dominio y la extensión.],
  [`email = "mario.alberto@gmail.com"`],
  "m****@gmail.com",
)

#problema(
  "6",
  "Limpieza de Logs de Sistema",
  [Los logs vienen con una marca de tiempo entre corchetes. Crea una función que elimine los corchetes y devuelva solo la estampa de tiempo.],
  [`log = "[2026-01-23 05:20:00] INFO: Success"`],
  "2026-01-23 05:20:00",
)

#problema(
  "7",
  "Extracción de Parámetros de URL",
  [Dada una URL simple con un parámetro 'id', extrae el valor numérico del ID. Asume que siempre viene al final después de 'id='.],
  [`url = "https://m2alberto.com/api?user=mario&id=8842"`],
  "8842",
)

#problema(
  "8",
  "Detección de Lenguaje (Heurística)",
  [Crea una función que determine si un texto es probablemente una pregunta en español, verificando si empieza con '¿' y termina con '?'.],
  [`texto = "¿Cómo aprender Rust en 2026?"`],
  `True`,
)

#problema(
  "9",
  "Normalización de Precios Mixtos",
  [Recibes precios que pueden usar coma o punto decimal. Desarrolla una función que reemplace la coma por punto y devuelva el float resultante.],
  [`precio = "1.250,75"`],
  1250.75,
)

#problema(
  "10",
  "Contador de Siglas (Uppercase)",
  [En análisis de noticias, es útil contar siglas. Crea una función que devuelva una lista con todas las palabras que estén completamente en mayúsculas y tengan más de 2 caracteres.],
  [`noticia = "La ONU y la NASA colaboran con el MIT"`],
  `["ONU", "NASA", "MIT"]`,
)
