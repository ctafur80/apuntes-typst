
#import "@local/ctafur-maths-template:0.1.0": *





// Filling the `templ-book-typ` template data.
#show: templ.with(
  sheet: "tablet",
  lang: "es",
  title: [Apuntes de Typst],
  authors: (
    (
      name: "Carlos E. Tafur Egido",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: [
    Apuntes del _software_ de composición tipográfica Typst.
  ],
)





// TODO When I put it in templ-book file it doesn't make any effect.
// Updating the counters by sections
#show heading.where(level: 1): it => {
  // pagebreak()
  counter("proposition").update(0)
  counter("theorem").update(0)
  counter("example").update(0)
  counter("lemma").update(0)
  counter("corollary").update(0)
  counter("exercise").update(0)
  counter("axiom").update(0)
  counter("deffinition").update(0)
  it
}







// ----------------------------------------------------------------------------

// #set heading(level: 1, numbering: none)


= Introducción
#include("src/introduccion.typ")


= _Hacks_
#include("src/hacks.typ")


= Otros
#include("src/otros.typ")
#include("src/otros2.typ")


= Coeficientes binómicos
#include("src/coef-binom.typ")





// #set par(justify: false)
// #bibliography("./bibliografia.yml", style: "chicago-author-date")






