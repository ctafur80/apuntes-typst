

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



= Entornos tipo teorema

En realidad, no solo es para los entornos de tipo teorema, sino que serviría
para cualquier tipo.

Aunque existen _plug-ins_ que parece que lo hacen muy bien, Typst es tan
bueno que es muy fácil crearlos por uno mismo. Puede ver cómo se crean en
algunos ejemplos que ponen en la entrada
#link("https://typst.app/docs/reference/introspection/counter/")[_counter_].
Por ejemplo, en la sección _How to step_.




= Código en el Texto

Puede consultar, en la documentación oficial, la sección titulada
link("https://typst.app/docs/reference/scripting/")[_Scripting_].

Es algo extraño el uso del símbolo `#`, pero permite hacer muy cómoda la
creación de lo que en el mundo TeX llaman entornos.




= Paquetes y plantillas

Al igual que LaTeX, Typst cuenta con un repositorio con paquetes
(_packages_) y plantillas (_templates_) con el que podrá lograr fácilmente
textos muy avanzados, con gráficos, etc. El repositorio oficial de Typst
recibe el nombre de [Typst Universe][].

[Typst Universe]: https://typst.app/universe/

Al contrario de lo que sucede con TeX y sus formatos, crear un paquete
básico o una plantilla para Typst no es complicado.

La explicación de cómo promocionar (_submit_) un paquete o plantilla a Typsy
Universe está en el [repositorio][repo-packages] oficial de Typst a este
respecto.

[repo-packages]: https://github.com/typst/packages




= Fuentes de información y de consulta

Algo que parece que están haciendo muy bien los creadores de Typst es
propiciar que toda la actividad relativa al proyecto pase por ellos. Así, se
tiene, por ejemplo, el [foro oficial del proyecto][foro-oficial], hospedado
bajo su misma web. En el fondo lo que usa es Discourse, con lo que se ve muy
moderno y con gran usabilidad.

[foro-oficial]: https://forum.typst.app/

También, a la hora de crear documentación en los módulos Typst, existe un
paquete llamado [Tidy][] con el que podrá hacerlo en Typst.

[Tidy]: https://typst.app/universe/package/tidy






= Carencias

Typst en un proyecto que aún no lleva muchos años en fase de desarrollo, con
lo que es normal que tenga algunas carencias. Aun así, creo que actualmente
merece mucho la pena pasarse de LaTeX a Typst.

En lo que respecta a las cosas que echo en falta, por ejemplo, se tiene que
la adaptación al español aún no está muy lograda, pero creo que no tardará
en llegar.


EE

Algo que estaría muy bien es que, en el texto que se pone dentro del modo
matemáticas, se usase la misma fuente tipográfica que tiene el resto del
texto normal, es decir, el del cuerpo de texto. 

Hay un _issue_ de GitHub sobre esta cuestión, solo que aún están debatiendo
sobre si es recomendable que tenga este comportamiento o no.

<https://github.com/typst/typst/issues/366>







