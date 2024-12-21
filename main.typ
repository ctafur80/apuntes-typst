

// Preámbulo
// -------------------------------------------------------

#set text(
  lang: "es",
)


// #show raw: set text(font: "JetbrainsMono")


// Modo tablet
#set page(
  paper: "a5",
  margin: (x: 0.2cm, y: 0.4cm),
  numbering: "1",
  fill: rgb("34324a"),
)

#set text(
  // font: "PT Sans",
  // size: 8pt,
  fill: rgb("ccc9d6"),
)


// #show math.equation: set text(size: 9pt)
// #show math.equation: set text(size: 9pt, font: "Noto Sans Math")


/*
// Modo libro
#set page(
  paper: "a4",
  numbering: "1",
)

#set text(
  // font: "PT Sans",
  // size: 10pt,
)

// #show math.equation: set text(size: 10pt)
*/







#set par(
  // first-line-indent: 1em,
  justify: true,
  leading: 0.52em,
)


/*
#show heading: it => [
  #set text(
    13pt,
    weight: "bold",
    font: "Arial",
  )
  #block(it.body)
]
*/

#set heading(numbering: "1.")


// Numera automáticamente las ecuaciones referenciadas
#set math.equation(numbering: "(1)")
#show math.equation: it => {
  if it.block and not it.has("label") [
#counter(math.equation).update(v => v - 1)
#math.equation(it.body, block: true, numbering: none)#label("")
  ] else {
    it
  }
}


#import "@preview/codly:1.1.1": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages)







// Texto
// -------------------------------------------------------

#include("fuentes/titulo.typ")


= Introducción
#include("fuentes/introduccion.typ")


= _Hacks_
#include("fuentes/hacks.typ")


= Otros
#include("fuentes/otros.typ")

= Coeficientes binómicos
#include("fuentes/coef-binom.typ")







