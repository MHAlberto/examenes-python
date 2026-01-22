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




