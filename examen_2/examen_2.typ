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

#problema("1","Máximo sin max",[Escribe una función que reciba una lista de números y retorne el valor máximo encontrado en ella. No está permitido utilizar la función max() incorporada de Python.],[lista = [10, 5, 20, 8, 15]],[maximo = 20])#v(1cm)#problema("2","Promedio de Notas",[Crea una función que calcule el promedio aritmético de una lista de calificaciones numéricas. El resultado debe ser un número flotante.],[notas = [8, 9, 10, 7]],[promedio = 8.5])#v(1cm)#problema("3","Contador de Palabras",[Implementa una función que reciba una frase y devuelva el número total de palabras que contiene. Asume que las palabras están separadas por un solo espacio.],[frase = "Aprender Python es divertido"],[cantidad = 4])#v(1cm)
#problema("4","Conversor de Temperatura",[Desarrolla una función que convierta una temperatura dada en grados Celsius a grados Fahrenheit. La fórmula es: $F = (C times 9/5) + 32$.],[celsius = 25],[fahrenheit = 77.0])#problema("5","Suma de Dígitos",[Crea una función que tome un número entero positivo y retorne la suma de sus dígitos individuales.],[numero = 1234],[suma = 10])#v(1cm)#problema("6","Filtrar Positivos",[Escribe una función que reciba una lista de números enteros (positivos y negativos) y retorne una nueva lista que contenga solo los números mayores que cero.],[numeros = [-10, 15, 0, -5, 20]],[positivos = [15, 20]])#v(1cm)#problema("7","Reemplazar Caracteres",[Implementa una función que reciba una cadena de texto y reemplace todos los espacios en blanco por guiones bajos .],[texto = "Hola mundo desde Python"],[resultado = "Hola_mundo_desde_Python"])#v(1cm)#problema("8","Generador de Tabla",[Crea una función que reciba un número entero n y un entero limite, y retorne una lista con los primeros limite múltiplos de n (comenzando por $n times 1$).],[n = 3, limite = 5],[tabla = [3, 6, 9, 12, 15]])#v(1cm)#problema("9","Longitud de Elementos",[Desarrolla una función que reciba una lista de palabras y retorne una nueva lista con la longitud (número de letras) de cada palabra correspondiente.],[palabras = ["sol", "luna", "estrella"]],[longitudes = [3, 4, 8]])#v(1cm)#problema("10","Año Bisiesto",[Escribe una función que determine si un año es bisiesto. Un año es bisiesto si es divisible por 4, excepto aquellos divisibles por 100 que no sean divisibles por 400.],[anio = 2024],[es_bisiesto = True])



